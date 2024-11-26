# JSON Resume Theme: Full

This theme is based off of [npmjs.com/package/jsonresume-theme-short](https://www.npmjs.com/package/jsonresume-theme-short) with some additional fixes and workflows.


## Getting Started/Prerequisites

```
  git clone https://github.com/pknw1/jsonresumefull.git
  cd jsonresumefull
  ./run
```

## Features

- Responsive HTML version for viewing on mobile devices
- Section Headers prevent widow using `page-break-inside: avoid`


## Developing

 - modify templates in custom/public
 - modify style in custom/style.css
 - ./build
 - ./run

 - source files in resumes/
 - html output via mapped volume to resumes/resume.html

The resume.json used for the static dev file is located at [jsonresume.org/schema/](https://jsonresume.org/schema/) and it is the baseline that you should use in order to build your resume. Leaving out sections will remove them from the output.

Enjoy!


## Using

If you want to change the accent color add this to the top of your `resume.json` above the `basics` information and change the hex color to suit your needs!

```json
  "meta": {
    "accent": "#b4d455"
  },
```

## Contribute or Fork

Feel free to Fork this repo and create your own style, or submit a [PR](https://github.com/jackkeller/jsonresume-theme-full/pulls) if you find an error or think about a wonderful addition.


## License

Available under [the MIT license](http://mths.be/mit).
