---
layout: post
title:  "Work smarter not harder: Extracting 40,000 DailyMed labels"
author: Joey LeGrand
date:   2020-09-12 07:30:00 -0600
categories: dailymed-api
tags: dailymed api python
published: false
---
This article is specific to work we are doing on the (DailyMed API project)[https://github.com/coderxio/dailymed-api], but the fundamental concepts apply to a lot of things in a "knowledge worker" type of job, and certainly in many areas of healthcare as well. The specific issue we were facing is that (DailyMed offers a full download of all its structured product labels (SPLs))[https://dailymed.nlm.nih.gov/dailymed/spl-resources-all-drug-labels.cfm], but they are provided as 4 separate zip files which each have thousands of other zip files in them, which each have label images in addition to the label XML data.

!(DailyMed full release)[https://raw.githubusercontent.com/coderxio/coderxio.github.io/master/assets/img/dailymed-full-release.jpg]

We need to unizp the main 4 files, and then unzip only the XML file (not the image files) from the 40,000 other zip files inside of them. The manual option for this work is horrible. Best case scenario: you could unzip the four files in your operating system of choice, then (at least with Windows 10) highlight all 40,000 files and right-click-drag them into a new folder and select to extract them there. You would have to click through 40,000 pop-up windows asking if you want to extract each file, and then you would still have to go into each unzipped folder to pull out the XML file. Certainly someone more adept at unzipping files this way could probably point out a more efficient way, but this is still "click heavy" and anyone who works in healthcare IT knows that clicks are the enemy.

!(DailyMed zip file structure)[https://raw.githubusercontent.com/coderxio/coderxio.github.io/master/assets/img/dailymed-zip.jpg]

Additionally, we need to do this every month because DailyMed publishes full releases with new and updated label information at least monthly.  So anything we decide to do is going to be perpetuated at least 12 times per year. If there is manual work involved, you will need to train someone on the steps and make sure they do it the same way every time. Confronted with a problem like this, my instinct is to do more work up front to reduce maintenance and repetitive human actions down the line. This is where having a toolbox of skills related to automation and efficiency is very valuable. One of these tools is a programming language called Python. With fewer than 30 lines of code, I can do the same work above faster, more efficiently, and with zero clicks. Don't believe me? Keep reading.

