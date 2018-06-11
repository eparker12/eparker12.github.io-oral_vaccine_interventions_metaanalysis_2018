# eparker12.github.io-oral_vaccine_interventions_metaanalysis_2018

## Church et al (2018): meta-analysis of interventions to improve oral vaccine immunogenicity

This github page contains the statistical analysis code and input data for the meta-analysis of interventions to improve oral vaccine immunogenicity described by Church et al (2018).

The full output of these analyses is available in the study's  *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*.

The final analysis includes 12 interventions (e.g., Breastfeeding withheld, Buffer, etc.). For each intervention, we include the following:    
- An Rmd file containing the R code for the intervention-specific analyses.     
- A corresponding html file with the output of these analyses.    
- A folder containing the figures included in this html (used when rendering the *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*).    

We also include the following:    
- *site.yml* - used to generate the layout for the *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*;     
- *index.Rmd* and *index.html* - used generate the Home tab of the *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*;     
- *footnotes.Rmd* and *Footnotes.html* - used generate the Footnotes tab of the *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*;     
- *summary.Rmd* and *summary.html* - used to generate the Summary tab of the *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*;     
- *Church_et_al_2018_metaregression_acronyms.csv* - containing acronyms used in the plots;    
- *Church_et_al_2018_metaregression_footnotes.csv* - containing plot footnotes.     
- *Church_et_al_2018_summary.csv* - containing the data for the summary plot (comparing the estimated effects of different interventions).     

## Analysis code

In spite of the numerous files and folders, all of the analyses are derived from a basic script titled *Church_et_al_metaregression.Rmd*. This contains the phrase 'intervention_placeholder' on lines 9 and 26. Each of the intervention-specific Rmd files are generated simply by updating these two lines with the intervention of interest (e.g. 'Breastfeeding withheld'). 

This basic Rmd file requires the following:    
- *Church_et_al_2018_metaregression_input.csv* – containing the input data;    
- *Church_et_al_2018_plot_settings.csv* - containing the plotting parameters for each intervention (axis limits, plot height, plot width, and footnote coordinates).    

## Compiling the anlaysis from the command line

Although the final analyses can be generated solely in R using the files provided, we used the script contained in *Church_et_al_2018_command_line_compiler.sh* to generate the intervention-specific analysis scripts from the basic *Church_et_al_metaregression.Rmd* script in unix. This script also renders the analyses into the *[e-appendix](https://eparker12.github.io/oral_vaccine_interventions_metaanalysis_2018)*.

## Other resources

The systematic review protocol has been published on [PROSPERO](https://www.crd.york.ac.uk/PROSPERO/DisplayPDF.php?ID=CRD42017060608).

The extracted data has been published on the [Open Science Framework](https://osf.io/bemw6/).

