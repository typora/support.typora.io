var template = '<li><div class="article"><article class="article">' +
  '<header class="post-header">' +
    '<span class="title"><a itemprop="name" href="{url}" title="{title}">{title}</a></span>' +
  '</header>' +
  '<div><p><a style="color:inherit; text-decoration: none;" href="{url}" title="{title}">{content}</a></p></div>' +
'</article></div></li>';

function getQueryVariable(variable) {
  var query = window.location.search.substring(1);
  var vars = query.split('&');

  for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split('=');

    if (pair[0] === variable) {
      return decodeURIComponent(pair[1].replace(/\+/g, '%20'));
    }
  }
}

var searchTerm = (getQueryVariable('search') || "").replace(/\n/g, ' ').trim();
var idx;

function doSearch(searchTerm) {
  if(!searchTerm.trim().length) {
    return exitSearch();
  }

  document.getElementById('list-contents').style.display = "none";
  document.getElementById('search-contents').style.display = "block";
  document.getElementById('search-button').style.display = "none";
  document.getElementById('clear-button').style.display = "inline-block";

  if(!idx) {
    return;
  }

  document.getElementById('search-box').setAttribute("value", searchTerm);
  if(idx) {
    displaySearchResults(idx.search(searchTerm), window.store);
  } 
}

function exitSearch(){
  searchTerm = "";
  document.getElementById('list-contents').style.display = "block";
  document.getElementById('search-contents').style.display = "none";
  document.getElementById('search-button').style.display = "inline-block";
  document.getElementById('clear-button').style.display = "none";
  document.querySelector("#search-box").value = "";
}

function initSearchIndex(){
  idx = lunr(function () {
    this.metadataWhitelist = ['position'];
    this.field('id');
    this.field('title', { boost: 10 });
    this.field('author');
    this.field('category');
    this.field('content');
    for (var key in window.store) { // Add the data to lunr
      window.store[key].content = window.store[key].content.trim();
      this.add({
        'id': key,
        'title': window.store[key].title,
        'author': window.store[key].author,
        'category': window.store[key].category,
        'content': window.store[key].content
      });
    }
  });
  if(searchTerm) {
    doSearch(searchTerm);
  }
}

function trailStart(str, start, len) {
  str = str.substr(start, len);
  if(start == 0) return str;
  var match = /[\n\.?,;!]+\s*/.exec(str);
  if(match) {
    return str.substr(match.index + 1);
  }
  match = /^\S*\s/.exec(str);
  if(match) {
    return str.substr(match.index + 1);
  }
  return str;
}

function trailEnd(str, start, len, position) {
  str = str.substr(start, len);
  if(str.length < len) return highlightEnd(str, start, position);
  var match = /[^.\n?!)\}]*\s$/.exec(str);
  if(match) {
    return highlightEnd(str.substring(0, match.index), start, position);
  }
  return highlightEnd(str, start, position);
}

function highlightEnd(str, start, position) {
  if(!position) return str;

  var splits = [];
  var offset = start;
  var lastPos;

  for(var i = 1; i < position.length; i++) {
    var cur = position[i];
    if(str.length + start < cur[0] + cur[1]) continue;
    if(lastPos && lastPos[1] >= cur[0]) continue;

    lastPos = cur;
    if(offset < cur[0]) {
      splits.push(str.substring(offset - start, cur[0] - start));
      offset = cur[0];
    }
    if(offset == cur[0]) {
      splits.push("<mark>" + str.substr(offset - start, cur[1]) + "</mark>");
      offset = cur[0] + cur[1];
    } else if(offset > cur[0]){
      splits.push("<mark>" + str.substr(offset - start, cur[1] - (offset - cur[0])) + "</mark>");
      offset = cur[0] + cur[1];
    }
  }

  if(offset - start < str.length) {
    splits.push(str.substring(offset - start));
  }

  return splits.join("");
}

function mergePosition(metaData, field) {
  field = field || "content";
  var position = [];
  for(var key in metaData) {
    var cur = (metaData[key][field] || {}).position;
    if(cur) position = position.concat(cur);
  }
  return position.sort(function(a, b){
    return a[0] - b[0];
  });
}

function displaySearchResults(results, store) {
  var searchResults = document.getElementById('search-results');
  var contextSize = 150;
  if (results.length) { // Are there any results?
    var allContent = '';

    for (var i = 0; i < results.length; i++) {  // Iterate over the results
      var item = store[results[i].ref];
      var metaData = results[i].matchData.metadata;

      var title = highlightEnd(item.title, 0, [null].concat(mergePosition(metaData, 'title')));
      var curContent = template.replace(/{url}/g, item.url).replace(/{title}/g, title); 

      var content = "";
      var position = mergePosition(metaData);
      if(position.length) {
        var start = Math.max(0, position[0][0] - contextSize);
        content += trailStart(item.content, start, position[0][0] - start).replace(/\n+/g, "\n");
        content += "<mark>" + item.content.substr(position[0][0], position[0][1]) + "</mark>";
        content += trailEnd(item.content, position[0][0] + position[0][1], contextSize * 2, position).replace(/\n+/g, "\n");
      } else {
        content = trailEnd(item.content, 0,  contextSize * 3);
      }
      
      curContent = curContent.replace(/{content}/g, content);
      allContent += curContent;
    }

    searchResults.innerHTML = allContent;
  } else {
    searchResults.innerHTML = '<li>No results found</li>';
  }
}

function fetchStore(){
  var xhr = new XMLHttpRequest();
  xhr.open('GET', location.protocol + "//" + location.host + "/store/");
  xhr.onload = function() {
    if (xhr.status === 200) {
      console.log('Request success.  Returned status of ' + xhr.status);
      window.store = JSON.parse(xhr.responseText);
      initSearchIndex();
    } else {
      console.log('Request failed.  Returned status of ' + xhr.status);
    }
  };
  xhr.send();
}

function bindSearchEvents(){
  var input = document.querySelector("#search-box");
  input && input.addEventListener("keyup", function(e){
    if(e.keyCode == 13) {
      searchTerm = input.value.replace(/\n/g, ' ').trim();
      if(history.pushState) {
        if(searchTerm.length) {
          history.pushState({search: searchTerm}, searchTerm + " - search", "?search=" + encodeURIComponent(searchTerm));
        } else {
          history.pushState({}, "Typora Support", "/");
        }
      }
      doSearch(searchTerm);
    }
  });

  document.getElementById('search-button').addEventListener("click", function(){
    searchTerm = input.value.replace(/\n/g, ' ').trim();
    if(history.pushState) {
      if(searchTerm.length) {
        history.pushState({search: searchTerm}, searchTerm + " - search", "?search=" + encodeURIComponent(searchTerm));
      } else {
        history.pushState({}, "Typora Support", "/");
      }
    }
    doSearch(searchTerm);
  });
  document.getElementById('clear-button').addEventListener("click", function(){
    if(history.pushState) {
      history.pushState({}, "Typora Support", "/");
    }
    exitSearch();
  });
}

window.onpopstate = function(event) {
  searchTerm = (getQueryVariable('search') || "").replace(/\n/g, ' ').trim();
  if(searchTerm) {
    doSearch(searchTerm);
  } else {
    exitSearch();
  }
};

function initSearchFunction(){
  fetchStore();
  bindSearchEvents();
}

initSearchFunction();