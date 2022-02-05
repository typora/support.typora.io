---
layout: post
title: Offline Activation
author: typora.io
category: tips
tags: [purchase, activation, faq]
typora-root-url: ../
typora-copy-images-to: ../media/activation
---

## Precondition

It requires Typora ≥ [1.1.0-dev](https://typora.io/releases/dev), and you will need another computer with network connection to download the activation token.

Please notice that, offline-activation is only prepared for the case that Typora cannot access to our activation server successfully. 

Once you generated an `Activation Token`, that will occupy one available seats for the license (one license has up to 3 activated devices at one time) for at least 6 month, because we cannot know if you are using that device or not since it is offline. 

In other words, **devices that is activated by offline activation cannot be deactivated in at least 6 month**, and will be counted in the 3 devices limit for one license code, unless it was back to internet again.

## Offline Activation

Please refer following steps.

1. Open `License Panel` from menu `Typora` → `My License…` on macOS or `Help` → `My License…` on Windows / Linux.

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.42.21.png" alt="Screen Shot 2022-02-02 at 20.42.21" style="zoom:50%;" />

2. Click "Enter License", then click "Offline Activation".

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.43.53.png" alt="Screen Shot 2022-02-02 at 20.43.53" style="zoom:50%;" />

3. Copy the `Machine Code`.

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.43.24.png" alt="Screen Shot 2022-02-02 at 20.43.24" style="zoom:50%;" />

4. Open <https://store.typora.io/offline>. If your current device does not have network connection, you may need to do following steps in another device which has access to our website.

5. Paste the `Machine Code` , input the `Email` and `License Code`. Please note that you will need to 

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.47.47.png" alt="Screen Shot 2022-02-02 at 20.47.47" style="zoom:50%;" />

6. Click `Generate Activation Token`. Then you will get the `Activation Token`.

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.50.42.png" alt="Screen Shot 2022-02-02 at 20.50.42" style="zoom:50%;" />

   If you missed this step, you could refresh the page and input machine code, email and license code again to re-generate an `Activation Token` again.

7. Copy the `Activation Token` and paste into Typora's license panel.

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.51.35.png" alt="Screen Shot 2022-02-02 at 20.51.35" style="zoom:50%;" />

8. Then Typora is now activated!

   <img src="/media/activation/Screen Shot 2022-02-02 at 20.52.01.png" alt="Screen Shot 2022-02-02 at 20.52.01" style="zoom:50%;" />

## Deactivation

You could try click `Deactivate` button in the license panel directly. But if your current devices still does not have network connection to <https://store.typora.io>, you can deactivate Typora via the Web UI.

To do this, please goes to <https://store.typora.io/my>, input the email address you used to activate Typora. Then we will send you an email with a `My License` button, please click it to open the management page.

<img src="/media/activation/Screen Shot 2022-02-02 at 23.09.37.png" alt="Screen Shot 2022-02-02 at 23.09.37" style="zoom:50%;" />

There will be a label `(offline activation)` under the device that was activated by "offline-activation", please click "deactivate" button to unbind that device.

If it shows "*Device cannot be deactivated within 6 month after offline activation. Please retry some days later or deactivate it from the machine.*" Then you will need to deactivated it after at least 6 month from the activation token was generated, since Typora allows 3 activated devices for one license at most at one time, while we cannot know if that device is still used or not if that device is offline.

[For more details about that web UI, please check here](/My-License/).