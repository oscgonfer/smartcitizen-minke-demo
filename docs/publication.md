# Publishing your project

Once you have all the files ready, your project is ready to see the light online.

During [MINKE TNA Open Calls](https://minke.eu), you will need to make this content available online and have it findable on the [MINKE TNA projects repository](https://participatory-tech.docs.minke.eu/Projects/).

## Making code and data analysis available

If you have followed the steps in the [setup guide](setup.html#getting-the-template), you should be able to make changes to it locally and the push the code using `git` to your online repository. To deploy your website, you can make use of the `ghp-import` as explained in [accounts section of the setup guide](setup.html#accounts).

### Option 1

The easiest and recommended workflow is:

- Make changes on your files, locally. You use `python` or `R` for this in `jupyter lab`
- Track the changes in your repository with `git`. Upload it to the online repository when needed with `git push`
- Build the book (website) with:
	```
	jupyter-book build .
	```
- You can make sure that everything runs well by checking your files locally
- Make the website all available with:
	```
	ghp-import -n -p -f _build/html
	```

Now good to push the data!

**Note:**
There is an extra `Makefile` in the repo. If you want to build it:

```
make package
```

And if you want to release it:

```
make release
```

### Option 2

Another option is to simply use `github-actions` on your repo. An example has been added to the template repostory, but it may not always work as desired, in particular the notebook automatic build.

This option simply requires for you to push the content.

## Making data available

Not only your project needs to be documented and the data processing code available, but also the data from it. For this, we will use [scdata](https://pypi.org/project/scdata) and upload it automatically to Zenodo online platform. You can check this [guide](https://docs.smartcitizen.me/Guides/data/Upload%20data%20to%20zenodo/) for better guidance. Remember to finalize the upload in your profile and to **add the DOI in your website!**


