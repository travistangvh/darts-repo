.PHONY: create_env remove_env 
#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Set up conda environment and install dependencies
create_env:
		@echo ">>> Creating conda environment."
		conda update -n base -c defaults conda
	 	conda env create --name $(PROJECT_NAME) -f environment.yaml --force
	 	@echo ">>> Activating new conda environment"
	 	conda activate $(PROJECT_NAME)

remove_env:
		@echo ">>> Removing conda environemnt"
		conda remove -n $(PROJECT_NAME) --all

