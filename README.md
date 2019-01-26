travis-octave-flatpak
=====================

For some reason, as of 1/2019, I can't get an Octave 4.4 Flatpak installation working under Travis CI.
The installation itself seems to succeed, and I create symlinks for `octave` and `mkoctfile` under `~/bin` pointing to the commands in the Octave flatpack installation. But they won't run. When I call them in the Travis script, I get errors like the following:

```
$ octave --version
/home/travis/.travis/job_stages: line 104: /home/travis/bin/octave: No such file or directory
The command "octave --version" exited with 127.

$ mkoctfile --version
/home/travis/.travis/job_stages: line 104: /home/travis/bin/mkoctfile: No such file or directory
The command "mkoctfile --version" exited with 127.
```