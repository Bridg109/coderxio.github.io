---
layout: post
title:  "Drug Shortage with Real-time Supplier APIs"
author: Kent Bridgeman and Joey LeGrand
date:   2020-12-22 07:30:00 -0600
categories: supply-chain
tags: supply-chain api
published: false
---
Notes:
* example of a drug shortage
* walk through steps that currently happen - manually searching - guessing on counts - waiting a day until product either comes or doesn't come
* walk through example of what it would look like with one supplier offering a real-time API
* walk through example of what it would look like to have a FHIR-based standard API framework for multiple suppliers to offer a real-time API

## What currently happens?
1. Search by keyword or NDC on wholesaler website
2. Try to find therapeutically equivalent products
3. Use estimated inventory information
4. Log on multiple times throughout the day trying to see if inventory has been added
5. Submit purchase order (PO)
6. Time passes - overnight or several days
7. Delivery arrives with invoice which tells which products were out of stock

[McKesson EDI Data Integration](https://www.mckesson.com/Pharmaceutical-Distribution/Data-Integration/)

**CodeRx** is a collective of pharmacists and other healthcare professionals who also have a skill set in tech and apply it towards building potentially useful things. If you're interested at all, follow along at [CodeRx.io](https://coderx.io/), check out our [GitHub repo](https://github.com/coderxio/dailymed-api), or join our [Slack channel](https://coderx.slack.com/).
