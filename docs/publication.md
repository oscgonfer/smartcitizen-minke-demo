# Publishing your project

Once you have all the files ready, your project is ready to see the light online.

During [MINKE TNA Open Calls](https://minke.eu), you will need to make this content available online and have it findable on the [MINKE TNA projects repository](https://participatory-tech.docs.minke.eu/Projects/).

## Making code and data analysis available

If you have followed the steps in the [setup guide](setup.html#getting-the-template), you should be able to make changes to it locally and the push the code using `git` to your online repository. This will automatically trigger a process in github to deploy your website.

### Option 1

The easiest and recommended workflow is:


- Make changes on your files, locally. You use `python` or `R` for this in `jupyter lab`
- Track the changes in your repository with `git`. Upload it to the online repository when needed with `git push`
- This will trigger `github-actions` on your repo and deploy everything

### Option 2

```{tip}
In case you want to not to worry about the publication of your content, you can use `ghp-import`. You can follow these steps for doing so: https://jupyterbook.org/en/stable/publish/gh-pages.html?highlight=ghp-import#option-2-automatically-push-your-build-files-with-ghp-import

Other options are available too for publishing your work. See [this page](https://jupyterbook.org/en/stable/publish/gh-pages.html?highlight=ghp-import#github-pages-and-actions) for all the options.**If you don't know what you are doing yet, go little by little and get to know the environment first.**
```

This is a bit more complicated and requires you to know a bit better what you do.

- Build the book (website) with:
	```
	jupyter-book build .
	```
- You can make sure that everything runs well by checking your files locally
- Track the changes in your repository with `git`. Upload it to the online repository when needed with `git push`
- Build and send the website with:
	```
	ghp-import -n -p -f _build/html
	```

**Note:**
There is an extra `Makefile` in the repo. If you want to build it:

```
make package
```

And if you want to release it:

```
make release
```

Now good to push the data!

## Making data available

Not only your project needs to be documented and the data processing code available, but also the data from it. For this, we will use [scdata](https://pypi.org/project/scdata) and upload it automatically to Zenodo online platform. You can check this [guide](https://docs.smartcitizen.me/Guides/data/Upload%20data%20to%20zenodo/) for better guidance. Remember to finalize the upload in your profile and to **add the DOI in your website!**
