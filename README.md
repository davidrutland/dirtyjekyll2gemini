A quick and dirty script to help create a functional gemini capsule from your Jekyll _posts directory 

The script will take all of the markdown posts in your Jekyll site's _posts directory, and use md2gemini to strip them of front matter, HTML, and everything else which won't display well in Gemini. .gmi files will be outputted (is that a word) into the output folder.
Next, it will create an index page of all the files in the output folder - in reverse order, before copying the index.gmi file to the output folder.
That's it - all done. copy the contents of the output folder to your gemini server folder.

This is as bare bones as it gets. It's an index of Gemini URLs and the associated files. Directories are hidden.
 
needs md2gemini python to do all of the hard work.

Usage:

Python install md2gemini
Clone this repository
edit dirtyjekyll2gemini.sh with your own paths and defaults
chmod +x dirtyjekyll2gemini.sh

./dirtyjekyll2gemini.sh to run

Do this whenever you push a new change to your Jekyll site to have your Gemini capsule update in parallel :)
