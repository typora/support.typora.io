# Typora Wiki Website

<http://support.typora.io>

Knowledge base for Typora, as well as examples of using Typora with static site generators like Jekyll.

Jekyll theme forked from [jekyllthemes](https://github.com/mattvh/jekyllthemes/) and [jekyllDecent](https://github.com/jwillmer/jekyllDecent), MIT License.

For bugs and suggestions on Typora, please contact <hi@typora.io> or [typora-issues](https://github.com/typora/typora-issues/issues).

## Translation / Improve Translation

You could make an Pull Request to improve translations and add new translated documents.

1. Translated documents are located under `_post/{langCode}`, for example `_post/zh`.
2. For translated documents, please manually set `permalink` in YAML in pattern of `{langCode}/{originalURL}`. And please leave `category` field in YAML empty.
3. Please add link in original document to your translated one, and add link in translated one to original documents.