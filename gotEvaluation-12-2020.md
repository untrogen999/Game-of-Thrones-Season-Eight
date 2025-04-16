# Project Evaluation: December 2020

Site: http://got.newtfire.org/index.html

GitHub repo: https://github.com/tlr39/GOT

Developers:
* Taylor Ridilla: @tlr39
* Joe Gismondi: @gismondijw
* Amber Peddicord (mentor): @amberpeddicord

Date of evaluation: 5 December 2020

Evaluated by: @haggis78
# General; Research questions and goals
The initial goal of the project had been to note the turning points in the plot in Season 8. Many viewers were unhappy with the plot, and finding turning points could have made it possible to consider different directions the plot could have taken. While an admirable idea, a solution for how to manage this in practice never presented itself. Further, there turned out to be only two active members in this team (plus their mentor) rather than the usual three; the fundamental work of marking up the scripts and creating the website left the remaining members with less time to be analytical and experimental. The project's more substantial contribution, then, is that the scripts have been marked up and are available for other users to extend the analysis (see "Future Prospects" below).

# Coding

## XML
All six episodes of Season 8 are marked up in xml with stageDirection, speech, and speaker element tags; the latter includes, as attribute values, the name and house (where appropriate) of each speaker. This is useful information that could be processed further. Unmarked are the appearances of individuals in the stage directions, which could also be done and might offer further opportunities for analysis. (For example, what characters are often present in a scene but do not speak, and so would not be counted if only speakers are listed?)
There are some errors in the markup, such as speaker who="MAN 1" (there ought not to be a space within an attribute value; it could be MAN1 or MAN-1 or MAN_1).
Further depth could have been given to the markup by dividing it into scenes every time there is a CUT TO direction. This would have allowed for kinds of scene-by-scene analysis, not just episode-by-episode (see further below under "Future prospects"). It also would have been possible then to create a clickable table of contents at the top of each episode page.

## HTML/CSS
Every episode script is available on the site in three formats: as the clean text; as the xml markup; and as a color-coded page (the speakers are color coded by house).
The team mentioned at the presentation that they had rendered the speakers' names (in the html scripts) in bold, but they are not. The css styling would have had to use font-weight, not bold, to render them in boldface; or, better the xslt could have wrapped speakers in bold in the html.

## XSLT 

The XSLT does its job in transforming the marked-up XML files into HTML, with CSS styling giving color to speaker names according to their houses using <span class=...>. Putting b tags here would have solved the boldface problem. Similarly, in scripts, it is conventional for stage directions to be italicized, which could also be added to the XSLT with a few keystrokes. 

## SVG
There is a single SVG graph, which is the only analysis as such in the site. The code was borrowed and modified from one of the class examples, which is permissible. It is, however, functional and clear.

## JavaScript
There is no JavaScript (this is not required).

# GitHub :octocat:

The GitHub repo is rather messy, with a very large number of files not in folders. I recognize that I needed to provide clearer guidance on this. There are also, I think, a number of obsolete files, older versions of files that were subsequently updated, that could be either deleted or put in an archive folder to avoid confusion with still-active files. (For example, there are old versions of Charts.html and Ep.html in the GOT HTML folder; those should be deleted, and then ALL the html and css files should be moved into that folder.)

# “UX”: User Experience and Site Interface
The site is attractive and easy to navigate. The only exception is that there are two lists of the episodes on the Episode Scripts page: the upper list has the xml and html formats while the lower list has the clean text files. It would have made more sense to have a single list with all three formats under each episode title. 
To simplify the CSS, everything is centered in the html. This makes sense on most pages with the exception of the individual script html: a script is easier to read if it is left-aligned. This could be accomplished by creating a separate CSS file for the episode scripts page, copied from the main CSS but with that one change made.

# Future prospects
The markup of the scripts was not exhaustively utilized, which is to say that a lot more analysis could be done by a future team. This might be appropriately pursued especially in the Coding and Data Visualization course. For example, while the number of speeches of two characters are graphed, more characters could be added, or the length of the speeches could be calculated (one character might have many short speeches while the other has fewer but longer ones; this might change the graph). Interactions between members of different houses, or the number of times they refer to one another, could be counted and displayed, as could the frequency with which women and men are segregated in scenes and dialogue. See this link: https://blog.datasciencedojo.com/network-theory-game-of-thrones/ . Similar work could be done just with the Season 8 scripts to see whether they have a similar pattern to that across the series, or whether Season 8 is different from the others in this respect.
Locations are also mentioned in the script, but they are not marked up; this could provide some interesting analysis as well.
# Closing Comments
Given the particular challenges of this project -- only two students (plus mentor), and an initial research question that proved impracticable -- the consistent markup and well-constructed site are a solid creation, even without further analysis (yet!). It is better that you did a proper job with what you did than if you had executed it poorly and then tried to derive some extensive analysis from what would have been unreliable data. The foundations that are laid here have a lot of potential to be a legacy for future classes, to be used as an example in assignments and perhaps as the basis for a more extended project.
