#!/bin/sh

### Written by Edward Parker (edward.parker@imperial.ac.uk), 08 June 2018

# To run the analysis from the command line, the following components are required:

# 1) csv files:
# 'Church_et_al_2018_metaregression_input.csv' – containing the input data
# 'Church_et_al_2018_metaregression_footnotes.csv' – containing plot footnotes
# 'Church_et_al_2018_metaregression_acronyms' - containing acronyms
# 'Church_et_al_2018_summary.csv' - containing results for the summary plot
# 'Church_et_al_2018_plot_settings.csv' - containing the plotting parameters for each intervention (axis limits, plot height, plot width, and footnote coordinates)

# 2) 'Church_et_al_2018_metaregression.Rmd' - the basic R script that runs the complete meta-analysis for a given intervention

# 3) 'Church_et_al_2018_command_line_compiler.sh' (current file) – a command-line script that modifies the basic R script to create intervention-specific subscripts, then renders these into a single output

# 4) Additional Rmd files:
# 'index.Rmd' - script to generate the home page
# 'footnotes.Rmd' - script to generate the 'Footnotes' tab
# 'summary.Rmd' - script to generate the 'Summary' tab

# 5) '_site.yml' - the yaml file containing the site layout information


# The analysis can be implemented as follows:

# 1) Modify the following line of code to contain the path to this directory
WD=***insert_file_path*** ### e.g. WD=/Users/Desktop/

# 2) Copy and paste the code below into the command line

# Create intervention-specific markdowns by amending Church_et_al_2018_metaregression.Rmd base file
for intervention in "Antihelminthic" "Breastfeeding withheld" "Buffer" "Delayed first dose" "Extra dose at birth" "Extra dose(s)" "Increased vaccine inoculum" "Narrow dose interval" "OPV valence" "Probiotic" "RVV separated from OPV" "Vitamin A" "Zinc"; do
    echo "${intervention[@]}"
    cp "${WD}/Church_et_al_2018_metaregression.R" "${WD}/${intervention[@]}.Rmd";
    sed -i '' "s/intervention_placeholder/$intervention/" "${WD}/${intervention}.Rmd";
done

# Render analysis in R
cd "${WD}"
Rscript -e "library(rmarkdown);rmarkdown::render_site()"
