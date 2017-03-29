---
layout: post
disqus: y
title: Building pretty slides using Markdown and pandoc
---

Slides can be hard: you have to focus on content, then you have to make it pretty, add animations and stuff.

If you are like me, you hate using your mouse (except for games), you have a horrible taste in design and you just want to write content and have it styled [*omakase*](https://en.wikipedia.org/wiki/Omakase).

You probably use Beamer for slides, or something similar, but *results may vary* (see below).

![horrible slides](https://i.stack.imgur.com/q0Htw.png)

Then again, if you are like me, you probably like your Beamer default theme just fine, and that's cool and everything, but other people might actually have some kind of taste and we (unfortunately) have to respect that when building our slides.

**Metropolis** is a beautiful *plug-and-play* Beamer theme. You can find a demo [here](http://ftp.snt.utwente.nl/pub/software/tex/macros/latex/contrib/beamer-contrib/themes/metropolis/demo/demo.pdf)

## Actually building your slides

### Fetch Metropolis theme
First clone this repository to get the [Metropolis Theme](https://github.com/matze/mtheme).

`$ git clone https://github.com/matze/mtheme`

Now you need to install the theme, just `make sty` from inside the folder.

You are now able to use the *metropolis* theme from any LaTeX project with `\usetheme{metropolis}`.

### Writing the outline

Start by creating a file named `slides.md`:

```markdown
# My Awesome Slide Deck

## First Slide 
Something

## Second Slide
* First
* Second
```

This will be rendered as 3 different slides:

1. "My Awesome Slide Deck"

2. "First Slide" as title and "Something" as content

3. "Second Slide" as title and the ordered list as content

How does pandoc understand how to split slides? It uses the concept of *slide level*, i.e. the first Headings level (##, ###, ####, etc.) followed by content (in this case # was followed by ##, but ## was followed by "Something", then Level 2 headings were selected as slide titles and content was split accordingly).

Any heading **below** slide level will be used to split content inside the current slide, while any heading **above** slide level will be used to create a new slide section (i.e. creating a "Title" slide).

### Rendering slides using pandoc

First of all, you need to install pandoc. On Ubuntu you can just run

`$ sudo apt install pandoc`

Now you can go in your slides folder and run

`$ pandoc -t beamer slides.md -V theme:metropolis -o slides.pdf`

Let's break it down:

* **pandoc**: the pandoc binary (duh...)
* **-t beamer**: **-t** is short for **--to** and indicates the output format
* **slides.md**: the actual slides file
* **-V theme:metropolis**: **-V** is a pandoc switch that sets key-value pairs
* **-o slides.pdf**: our output file. *NOTE:* since we specified *.pdf* as an extension, pandoc will build a *.tex* beamer file, but then it will automatically convert it to PDF. If you want a *.tex* file, you need to call **-o slides.pdf**, but this will produce a fragment instead of a complete LaTeX document. Add the **-s** switch to make the file *standalone* instead.

Here you can see an example of the rendered [slides.pdf]({{ site.url }}/statics/slides.pdf).

To add a nice Front page with title, author and date, you might add a header to the .md file:

```markdown
% Title
% Author1; Author2; Author3
% Date
```
