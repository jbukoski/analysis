Typically I have a project structure like this.

```
./myProject
	|----> README.md (documentation on the project)
	|----> ./drafts   | ---> target journal one... (rejected)
	|                 | ---> target journal two...
	|
	|----> ./analysis |-----> myproject.Rproj (R project file, sets this directory as working directory)
                          |-----> ./data    | --> ./raw
                                            | --> ./processed
                                            | ...
                          |-----> ./figs    | --> fig1
                                            | --> fig2
                                            | ...
                          |-----> ./scripts | --> 01_getData.R
                                            | --> 02_processData.R (input raw, output processe data)
                                            | --> 03_analysis.R (analysis of data)
                                            | --> 04_statistics.R (run stats tests)
                                            | --> 05_figures.R (build figs, input from ./processed, writes to ./figs)
```

With this structure, the working directory in R will be wherever the myproject.Rproj file is. So then you can use relative paths such as ./data/raw/dataset_1.csv which start from wherever the .Rproj file is. **This example github repo has the .Rproj initiated from the ./analysis folder**. On my computer there is also the drafts folder next to it (from the tree above), but not uploaded to git.

I usually initiate Git from either the ./myProject directory or the ./analysis directory.
If it's the ./myProject directory, I use the .gitignore file to omit the ./drafts directory and the ./analysis/data directories
If it's the ./analysis directory, I usually just omit the ./data directory.

The .gitignore is a hidden file (hence the period at the beginning). If you put directories in there, git will ignore them. Best to do this with the ./data directory so that you aren't uploading huge datasets to it. All you'd need to do is add:

./data

as a single line in the .gitignore