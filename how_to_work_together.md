# sars-cov2-gisaid
The folder was created via [workflowr] 

We can work together as a mere shared Dropbox/One drive, etc. folder  

A [workflowr][] project (here the `sars-cov2-gisaid` folder) contains a predefined structure.

A few things to do/remember to avoid - too much ;-)- frustration:

* Install the R package `workflowr` from CRAN  

* Add/Sync the folder to your dropbox

* Start Rstudio in this folder : for instance by double clicking on `sars-cov2-gisaid.Rproj`

* Put raw data in `/data`, and when you put a new raw data file write 2-3 lines explaining what this file is, where it comes from

* Put R code that is needed to run your analysis and (also works - in principle - other language within Rmd) in `\code`

* Put Rmd documents that describe how you analyzed data, make figs etc in `/analysis`  (you can add any Rmd you previously written... no pb .. just adjust the PATH to data see below)
Be aware that if you need to hardcode parameters, eg a path , list of lineages etc, you can just  write these hard coded specification *once* in hard_coded_params.R (be nice and add a comment to explain) and then you can just add `source(hard_coded_params.R)` " at the beginning of your analysis script :) . 

* When you "knit", workflowr will put the output of Rmd in `\docs` automatically 

* If you transform data, or generate some relatively big results save the output (fitted datasets or new datasets) - pref as rds files- in `\output` 

* ALL path to data, rds objects outputs etc, are relative to the `sars-cov2-gisaid` directory 

* Do not worry about the styling of Rmd files, these are inheriting the style specified in a common yml file (can you spot the file ;-) ?? then you can tweak /mess it)

If you want to learn more 
- Just type `?workflowr `
- Run `browseVignettes("workflowr")` to read the package vignettes locally. 

You can read the documentation online (it is pretty well written !) at https://jdblischak.github.io/workflowr.


[workflowr]: https://github.com/jdblischak/workflowr
