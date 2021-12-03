---
layout: post
title: Activate Typora
author: typora.io
category: basic
tags: [purchase, activation, faq]
typora-root-url: ../
typora-copy-images-to: ../media/activation
---

> For purchase / order related questions, please [click here](/purchase).

Table of Contents:


* Outline
{:toc}

# Basic

## Pre-conditions and Important Notes

To activate Typora, you will need to [purchase a license](https://store.typora.io/) first. After your purchase a license code will be sent to your email address, which you can use to activate Typora.

Activation **requires internet connection**, so you will need access to [store.typora.io](https://store.typora.io) to proceed with activation.

Once you have used a license code, you will need to use the **same email address** for future activations, so please make sure that you have entered a valid email address.

Activating Typora activates your account's copy of Typora on your current machine. If you switch to other accounts or other devices, you will need to activate Typora for those new accounts or devices. One license code can be used to activate a maximum of 3 devices at a time, and different accounts and operating systems on one machine are considered separate devices.

## Register / Activate Typora

You can activate Typora in the `License Panel`. On macOS, you can open the `License Panel` from the menu bar: `Typora` → `My license…`. On Windows / Linux, you can open the `License panel` from the menu bar: `Help` → `My license…`.

<div  style="text-align:center">
  <figure style="margin:0;display:inline-block;">
    <img src="/media/activation/Screen Shot 2021-11-21 at 21.07.33.png" alt="open license panel on macOS" style="zoom:50%;" />	
    <figcaption><center><i>Open License Panel on macOS</i></center></figcaption>
  </figure>
  <figure  style="margin:0;display:inline-block;">
    <img src="/media/activation/Screen Shot 2021-11-21 at 21.22.48.png" alt="open license panel on Windows / Linux" style="zoom:50%;" />	
    <figcaption><center><i>Open License panel on Windows / Linux</i></center></figcaption>
  </figure>
</div>

Once in the `License Panel` click the `Enter License` button, then enter your e-mail address and license code and click the `Activate` button.

<div  style="text-align:center">
  <figure style="margin:0;display:inline-block;width: 49%;">
    <img src="/media/activation/Screen Shot 2021-11-21 at 21.27.42.png" alt="Click Enter License Button" style="zoom:50%;width:auto;" />	
    <figcaption><center><i>Click 'Enter License' button</i></center></figcaption>
  </figure>
  <figure style="margin:0;display:inline-block;width: 49%;">
    <img src="/media/activation/Screen Shot 2021-11-21 at 21.28.38.png" alt="enter email address and license code" style="zoom:50%;" />	
    <figcaption><center><i>Enter email address and license code</i></center></figcaption>
  </figure>
</div>

Afterwards, Typora will be up and running!

## How to check activation status

### Check if Typora is activated or not

You can [open the `License Panel`](#register--activate-typora) to see if your typora is activated. To open it, on macOS, click on the menu option `Typora` → `My License…`, and on Windows / Linux, click on the menu option `Help` → `My License…`.

### View associated email and license code

You can [open the `License Panel`](#register--activate-typora) and click the `View License` button to view both your associated email address and the license code of the activated copy of Typora.

## Deactivate Typora

If you have access to an activated copy of Typora, you can deactivate it as follows:

1. [Open the `License Panel`](#register--activate-typora) from the `Typora` → `My License…` menu option or the `Help` → `My License…` menu option.
2. Click the `Deactivate` button, and click `OK` in the confirmation dialog.

<img src="/media/activation/Screen Shot 2021-11-21 at 21.57.37.png" alt="Screen Shot 2021-11-21 at 21.57.37" style="zoom:50%;" />

If you cannot access the device, you can simply activate Typora on a new device and we will automatically deactivate the oldest activated device for your license code.

---

# FAQ

## How to retrieve my license code if I forgot it?

A license key is sent to your email address after purchase, so you just need to search your mailbox and check the Spam folder if you can't find it.

If you purchased Typora on our website (typora.io), the license code is sent to you via FastSpring, so you can find your orders and license code [here](https://typora.onfastspring.com/account) with the email address you used for purchase. An access url will be sent to your mailbox. If you do not receive it, please wait a while and check your spam emails.

If you purchased Typora from another reseller, please contact them instead.

## I cannot activate Typora

### Error message "Please input a valid license code."

Please check if your license code is valid. The license code has a format in the style of XXXXXXXX-XXXXXXXX-XXXXXX-XXXXXX-XXXXXX, with capital letters and numbers.

If you have forgotten your license code, see ["How to retrieve my license code if I forgot it?"] (#how-to-retrieve-my-license-code-if-I-forgot-it).

### Error message "Email address confirmation does not match."

After using a license code, **the same email address** MUST be used for the same license code on future activations. You will need to enter the email address twice for confirmation. If those two entries are not the same this error will be displayed, so please check if you have entered your email address correctly.

### Error message "This license code has been used with a different email address."

After using a license code, **the same email address** MUST be used for the same license code in future activations.  This error appears if the email address you use is not the same email address that was used when activating Typora with the license code for the first time.

### Error message "Failed to access the license server. Please check your network or try again later."

Typora activation requires a network connection, so:

- Please check your **network** connection, especially check if you can access [store.typora.io](https://store.typora.io).

- Check for **firewalls** that may block Typora's access to the Internet.

- If you can visit <https://store.typora.io> without VPN or proxy, then: 

  - Disabling  VPN or proxy, and then reboot.

    ![remove proxy](/media/activation/Local-Area-Network-Settings.png)

  - If you are using Windows, try removing `HTTP_PROXY` and `HTTPS_PROXY` from your system environment variables.

    <img src="/media/activation/Screen Shot 2021-12-02 at 21.53.49.png" alt="Screen Shot 2021-12-02 at 21.53.49" style="zoom:50%;" />

- If you CANNOT visit <https://store.typora.io> without VPN or proxy, then:

  - Please follow [here](/Launch-Arguments/#luanch-typora-with-proxy-windows--linux) to launch Typora with Proxy

  - We are also now working on a mirror server in China, sorry but please be paitent on it.

- If you have tried all of the above steps, wait a few minutes and try again later.

## My Typora has been unexpectedly deactivated.

If you have activated Typora but find that it has been unexpectedly disabled, usually the reason may be:

- That you have activated Typora on a fourth device, since a license code can be used on at most 3 devices at a time. Therefore, if you have activated Typora on a fourth device, the oldest device will be deactivated automatically. You can deactivate Typora on the devices you no longer need and then re-activate Typora on these devices, or you must purchase more license codes if you want to use Typora on more than 3 devices.
- If you switch to new accounts on the same computer, you will need to activate Typora for this user. One license code can be used to activate a maximum of 3 devices at a time. Different accounts on one machine are counted as separate devices.

## How many devices can I use at the same time for one license?

A maximum of 3 devices. Devices means different devices, different operating systems and VMs on a device, different accounts on an operating system...

## What if I have more than 3 devices?

If you want to activate more than 3 devices **at the same time**, you will need to purchase more license codes. 

If you have switched from old to new devices, you can [deactivate typora](#deactivate-typora) on old / unused devices.

## What is allowed or not allowed when using Typora?

Please refer to our [End User License Agreement](https://support.typora.io/License-Agreement/).

## I have other questions...

Please contact <hi@typora.io>. If your question is about activation and orders, please attach information such as the email address used for purchase, the license code you used for activation, etc.

For purchase or order related questions, please refer to [Purchase Typora](/purchase).
