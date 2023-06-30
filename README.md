# R_array_job_example
Example Slurm array job script that runs an R script

To use R on a HPC machine, you will typically first need to load an R environment module, e.g. on University of Bristol Advanced Computing Research Centre's [BluePebble](https://www.bristol.ac.uk/acrc/high-performance-computing/) facility

```console
$ module load lang/r
```

The example array job script [submit_R_array.sh](./submit_R_array.sh) is written for the [Slurm](https://slurm.schedmd.com/overview.html) job scheduler and can be submitted to run on a HPC machine using

```console
$ sbatch submit_R_array.sh
```

This example uses the `commandArgs()` function from base R to read the array job index provided as a command line argument in `submit_R_array.sh`.
R packages which support more sophisticated access and manipulation of command line arguments are available, e.g. [optparse](https://cran.r-project.org/package=optparse).

> **NOTE**  
> On University of Bristol HPC facilities, a HPC account project code must be provided at the command line, i.e.
>
> ```console
> $ sbatch --account=<project code> submit_R_array.sh
> ```
>
> where \<project code\> is replaced with your University of Bristol HPC project code. 
>
> This can alternatively be added to the job script itself, by adding a `#SBATCH` directive line, i.e.
>
> ```bash
> #SBATCH --account=<project code>
> ```
