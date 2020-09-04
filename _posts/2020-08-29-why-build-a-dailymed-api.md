---
layout: post
title:  "Why build a DailyMed API?"
author: Joey LeGrand
date:   2020-08-29 06:30:00 -0600
categories: dailymed-api
---
If you're reading this, you probably know what DailyMed is; but just in case you don't, I'll give a brief intro. [DailyMed](https://dailymed.nlm.nih.gov/dailymed/)  is the official provider of FDA label information - package inserts or stuctured product labels (SPLs). The website provides a "standard, comprehensive, up-to-date, look-up and download resource of medication content and labeling found in medication package inserts" which is honestly very easy to use and quite useful as a clinician or as anyone who uses medication labeling information. 

What you might not know is that DailyMed also provides an [application programing interface (API)](https://en.wikipedia.org/wiki/API) so that web applications can digest and understand the same label information. For instance, if I take a label for a random medication called Revlimid and wanted to know the packaging information for each national drug code (NDC), I could go to this link: [https://dailymed.nlm.nih.gov/dailymed/services/v2/spls/5fa97bf5-28a2-48f1-8955-f56012d296be/packaging.json](https://dailymed.nlm.nih.gov/dailymed/services/v2/spls/5fa97bf5-28a2-48f1-8955-f56012d296be/packaging.json). This isn't intended to be read by humans (though it is fairly straightforward), but it is super easy for a computer to understand this standard format (called [JSON](https://en.wikipedia.org/wiki/JSON)) and use it in a web application.
```javascript
data: {
  spl_version: 34,
  products: [
    {
      packaging: [
        {
          ndc: "59572-402-00",
          package_descriptions: [
            "100  in 1 BOTTLE"
          ],
        },
        {
          ndc: "59572-402-28",
          package_descriptions: [
            "28  in 1 BOTTLE"
          ],
        },
      ],
      active_ingredients: [
        {
          strength: "2.5 mg",
          name: "LENALIDOMIDE",
        }
      ],
      product_name_generic: "Lenalidomide",
      product_name: "Revlimid",
      product_code: "59572-402",
    },
    ...
  ...
```

Great - so DailyMed is awesome and already has an API.  So are we done here?

Not quite. You may notice, for instance that the API above provides `active_ingredients` but does not provide `inactive_ingredients`. However, DailyMed's website clearly contains this information.


