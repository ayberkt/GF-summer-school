# Lab Notes for the Fifth GF Summer School

## Compiling the notes

The notes @ayberkt is taking everyday can be found in `day-<n>/notes.md`. You
will find a Makefile for compiling these to pdf's through LaTeX; this is done
through [Pandoc](http://pandoc.org/installing.html) so if things are not
working out for you make sure that you have it installed.

## Things to Know

### get help on IRC

go onto https://webchat.freenode.net/

channel #gf

this is a good place to ask for help.

### get help on slack

there is a slack chat: gf-summer-school-5.slack.com

How to play Slack?

Download a Slack app for your computer and your phone.

Keep that app running and stay logged in to the summer school slack group. Join various channels as your interest dictates.

### you should install GF locally and use it on your command line

while Day 1 introduced cloud.grammaticalframework.org/gfse/

on Day 2 everybody downloaded http://www.grammaticalframework.org/download/index.html

### there are assignments

see the Day-x directories for the assignments; they are usually described in notes.md.

To see the answers to the homework, switch to the `mengwong` branch in Git. If the `mengwong` branch does not have the answers, it means Meng is either not smart enough or not trying hard enough or did not pay attention in class. Maybe all of the above.

## Food

dinner is planned for
- (Aug 15) in Terapija on Bruninieku iela 69 at 18:00
- (Aug 16) at Inari, Herb & Ann's big airbnb. Location: Matisa iela 28. Time: 19:00. Bring: your own plate if you have one, also drinks & snacks.

## Other Technical Things

If you come to GF without a technical background, you may feel super behind. Don't worry, everybody felt this way once. In fact the more technical you become, the more behind you feel, until one day you master category theory and transcend our mortal plane.


### Text Editor

Editing source code in Notepad is like putting on eyeliner in a moving car: you can do it, but do it enough times and you are guaranteed to regret it.

Editing source code in Word is a perversion and we will not talk about that further here.

The advanced geeks use editors like emacs and vim.

If you're new to the world of text editors, http://atom.io/ is a good choice.


### Unix

On your computer you should be able to open a terminal. On a Mac, use the Finder to go to `/Applications/Utilities` and run `Terminal`.

That should get you what's called a shell prompt.

To get around your filesystem, `cd` into directories: for example, `cd day-1`. And you can `cd ..` to get out of them and go back up one level.

Run `ls` to see what files are in your current directory.

Coming from Mac and Windows you are used to seeing this in a Finder or Explorer window but it's all really the same thing. Remember the green-on-black screens from The Matrix? That whole movie was a thinly disguised metaphor about the differences between the terminal command-line, and the GUI that has been pulled over your eyes.

For more on this, read Neal Stephenson's _In the Beginning was the Command Line_: http://www.cryptonomicon.com/beginning.html

### Git

To download this repository, at your shell prompt, run:

```github.com/ayberkt/GF-summer-school```

Then get used to going in and out of the folders.

Occasionally, run `git pull` to get the latest day's worth of work.


### Now You Are Ready To Be Sisyphus

Run Atom to edit your grammar files.

In the shell, run `gf` to import and play with your grammars.

Your program will not work as you expect.

This is called debugging. Good luck. May Lady Lovelace smile upon your efforts.

Make changes. Save the file. Try `gf` again. Does it do what you want? No.

Repeat this cycle ten thousand times and you will find you have become one of the technical people in the room. You will catch yourself saying to newbies, "oh, that's simple, all you have to do is ---".

When this happens, you will know it is time to learn category theory.
