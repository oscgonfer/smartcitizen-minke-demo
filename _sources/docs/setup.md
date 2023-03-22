# Setting your data environment

The following guide will help you set up a data environment to help you analyse the data you collect with the sensors. It can be used with [Jupyter Notebooks](https://jupyter.org/) or [Jupyter Lab](https://jupyterlab.readthedocs.io/en/stable/), although it is not mandatory. However, for the purpose of sharing the data, we will use `jupyter`, `jupyter-book` and will make it all available online, including our dataset in [Zenodo](https://zenodo.org)

## Before getting started

The framework runs in `python` (version 3.9 or more). Download and install python following [this guide](https://docs.python-guide.org/starting/installation/) if you don't already have it. Python is well suported on all platforms so there should be no problem in having it available in any computer.

## Installation

Python's way of sharing reusable code modules is through **packages**. Packages can be installed with a simple command called `pip`. There is a series of `python` packages we will install with it:

First, for connecting to the [Smart Citizen API](https://api.smartcitizen.me) easily, and to plot and analyse data from there, we have developed [scdata](https://pypi.org/project/scdata). To install it, simply run this in your command line (make sure you are in the right environment!):

```
pip install scdata
```

You can now check if it all works by:

```
python
>>> import scdata as sc
>>> ...
```

```{caution}
In some cases, depending on your setup, you will be missing a `3` in your commands: `python` should be `python3` and `pip` should be `pip3`. In this guide we will always use `python` and `pip`.
```

Secondly, we will install `jupyter lab`, an interface for us to run `python` code (and other languages such as R or Julia). Run the following command in your command line to install it:

```
pip install jupyterlab
```

If you face problems in the installation, refer to the [installation guide](https://jupyterlab.readthedocs.io/en/3.4.x/getting_started/installation.html).

Finally, the last step! We will install `jupyter-book` for us to document the project and create the documentation. It uses a very simple markdown interface and the `notebooks` we will create with jupyter will automatically be made into a rendered `html`.

```
pip install jupyter-book
```

## Getting the template

For getting the template, and keeping track of the changes, we will use a tool called `git`. `git` is a _distributed version control system_ or _dcvs_ for short, and it's used in software development broadly. We believe this practice is suitable for data analysis and for sharing traceable environmental sensing projects. You can set up git in any platform after reading this [guide](https://fablabbcn-projects.gitlab.io/learning/fabacademy-local-docs/guides/code/gitsetup/). Once you have `git`, in order to make your folder and structure, you can clone or fork this template by following the steps below.

### Forking

```{tip}

- Go to the [template project](https://github.com/fablabbcn/smartcitizen-minke-template) and hit **Fork**

	![](assets/fork.png)

- Maybe rename the repository as you better like it

- Clone the template repository (ssh) **make sure you replace the command below**

	```
	git clone git@github.com:username/your-repo-name.git
	```

- Do some edits and then add-commit-push:

	```
	git add FILENAME 
	git commit -m "My other commit" 
	git push
	```
```

### Cloning


```{tip}    

- Navigate to the folder where you want to put or create your repo

	```
	cd folder-for-your-project
	```

- Clone the template repository (ssh)

	```
	git clone git@github.com:fablabbcn/smartcitizen-minke-template.git
	```

- Create your own project in Github - [Directly access here](https://github.com/new) - Make sure that is public!!

- Tell your local repository to push to the new project in Github:

	```
	git remote rename origin old-origin
	git remote add origin git@github.com:username/your-repo-name.git
	```

- Do some edits and then add-commit-push (like this for the first commit):

	```
	git add FILENAME
	git commit -m "My first commit" 
	git push -u origin --all
	```

For further changes, your workflow should be:

	```
	git add FILENAME 
	git commit -m "My other commit" 
	git push
	```

```

```{note}
Once you are done with this, let's get started with some examples!
```

### Testing locally

You can test that everything goes well by going to your folder and running:

```
jupyter-book build .
```

## Accounts and automatic deployment

This page is hosted using [Github Pages](https://github.com/pages). We have chosen this for convenience, but it's not compulsory to do so. If you want to host the project results in Github too, you would need an account there, and create a fork of the [demo project](https://github.com/fablabbcn/smartcitizen-minke-template). However, you can take the html generated from `jupyter-book` and put it somewhere else. The only thing we ask for is to have the project page findable and linked in the [MINKE Projects Documentation](https://participatory-tech.docs.minke.eu/Projects/).

