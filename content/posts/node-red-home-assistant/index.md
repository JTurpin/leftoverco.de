---
title: "Node Red and Home Assistant"
date: 2020-12-08T16:37:55-07:00
images: []
categories: [home automation]
tags: [node-red, home-assistant, hass]
authors: [jim]
draft: false
---

# How to migrate a VM between GCP projects
This post assumes that you already have node-red running and it's able to talk to home-assistant. 

1. Click the Menu in the top left corner then select `Manage Palette` {{< bundle-image name="manage-palette.jpg" alt="Manage Palette" >}}
1. Click on `Install` then in the searchbox, seach for `home-assistant` and install both `node-red-contrib-home-assistant-websocket` and `node-red-contrib-hass` {{< bundle-image name="install-palette.jpg" alt="Install home-assistant palettes" >}}
1. Configure the connection to your Home-Assistant server. {{< bundle-image name="hass-config.jpg" alt="configure hass connection" >}}
1. In a new tab, open up your home-assistant web interface and get an `Access Token`. First, click on your username in the bottom left corner, then scroll to the bottom and click create `Create Token` in the `Long-Lived Access Tokens` section. {{< bundle-image name="create-token.jpg" alt="Create long lived token" >}} 
1. Give the token a name that you will remember like `node-red` then press `OK`. {{< bundle-image name="token-name.jpg" alt="name the long lived token" >}}
1. Copy the access tocken and save it somewhere safe. It will only be shown one time.
1. configure the home assistant connection settings. {{< bundle-image name="hass-connection-settings.jpg" alt="configure hass connection settings" >}}
1. Now you can create your first flow! {{< bundle-image name="create-flow.jpg" alt="create node-red flow" >}}