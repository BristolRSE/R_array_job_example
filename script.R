print("Start R script")

# Get command line arguments
args <- commandArgs()
print(sprintf("Command line arguments (trailingOnly=FALSE): %s", paste0(args, collapse = ", ")))

# When running script with `Rscript` trailingOnly=TRUE is necessary to exclude
# R command-line arguments that are passed to the `R` front-end by `Rscript`
args <- commandArgs(trailingOnly=TRUE)
print(sprintf("Command line arguments (trailingOnly=TRUE):  %s", paste0(args, collapse = ", ")))

# Stop if more than a single argument is provided
stopifnot(length(args) == 1)

# Convert argument to integer type, since `commandArgs` returns a character vector
array_index <- as.integer(args[1])

# Output array index after conversion to integer
print(sprintf("Slurm array index: %d", array_index))

# Now the Slurm array index can be used to control behaviour of the R script, 
# e.g. select a chunk of data from a larger dataset to process

# ... 

# Wait 60 seconds to provide time for job scheduler to sample usage information
Sys.sleep(60)

print("End R script")