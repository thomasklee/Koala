# ---------------------------
# KOALA project
# KidsWords and OZI vocabularies compared: xtable output
# Thomas Klee
# Created: 2019-10-30
# Revised: 
# ---------------------------

# This script produces output suitable for latex
# from data frames generated by koala_compareCDIs.R

# Output of each print() function is then copied
# and pasted into .Rnw file and run in latex.

# load libraries
library(xtable)

# create table of words occurring on OZI 
# and NZ CDI:WS and indicate which CDI they occur on
print(xtable(all_items, align = "rcllcl"), booktabs = TRUE)

# create table of words occurring on OZI but not NZ CDI:WS
print(xtable(onlyOZ, align = "rcllcl"), booktabs = TRUE)

# create table of words occurring on NZ CDI:WS but not OZI
print(xtable(onlyNZ, align = "rcllcl"), booktabs = TRUE)

# create table of words occurring on both CDIs
print(xtable(bothCDIs, align = "rcllcl"), booktabs = TRUE)
