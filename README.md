# git-new-workdir

This is a port of git-new-workdir to run on Windows with msysgit.

The original can be found there:
http://git.kernel.org/?p=git/git.git;a=blob_plain;f=contrib/workdir/git-new-workdir;hb=HEAD

The script was tested on Windows 7 with git version 1.7.4.msysgit.0.

# Known issues

git-new-workdir uses links to share the Git repository between diffent work dirs. 
Links are not really well supported by many applications on Windows. That may lead 
to unexpected behavior.

**Do not use rm -rf to remove a working dir including a .git folder. rm does
not pay attention to links an traverse into the orginal .git directory. You will 
loose your entire history that way.**

Use Explorer to delete working dirs or at least the .git directory inside.
