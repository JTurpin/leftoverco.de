---
title: "GCP VM Migration"
date: 2020-12-04T10:01:12-07:00
images: []
categories: [gcp, cloud computing]
tags: [gcp, migration]
authors: [jim]
draft: false
---

# How to migrate a VM between GCP projects
Have you ever had a sever that was not created via automated processes and needed to move that VM to another project in GCP? Searching the internet will lead you down all sort of rabbit holes on the old way of doing things. They all seem to point at spinning up a new server, cloning the disk via `dd` and them creating the new VM fom that disk image. There is a much better and faster way now.

1. Go to the GCP console and select Compute Engine --> Images {{< bundle-image name="gcp-menu.png" alt="GCP Menu" caption="GCP Menu" >}}
1. Create a new image {{< bundle-image name="create-image.png" alt="Create new image" caption="Create new image" >}}
1. Give the image a name, Source should be `Disk` and select the Source disk as host you would like to move. It's best if the host is powered off. {{< bundle-image name="create-image-setting.png" alt="Create image settings" caption="Create image settings" >}}
1. Ensure your user has permissions to access the new image
1. Switch projects to the new project you'd like the VM running in.
1. Compute Engine --> Virtual Machines --> VM Instances
1. Create a new instance
1. Change the `Boot Disk` {{< bundle-image name="boot-disk-image.png" alt="Boot disk settings" caption="Boot disk settings" >}}
1. `Show images from` is the source projects. `Image` is the image name we create above. Increase disk size if needed.
1. `Select` the settings to apply them
1. Verify VM settings and then click `Create`
