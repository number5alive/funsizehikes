# FunSize's Website - now in Jekyll
See it live at funsizehikes.com

The page leverages:
 - jekyll to put it all together
 - bootstrap 5 to make it look pretty 
 - GitHub Pages (so static hosting) to make it available to the world

## For local testing and development use the vagrant setup
I have Vagrant set up so it can start a development VM for testing
Provided you have Vagrant, VirtualBox and Git installed, the following should work
```
{
$ vagrant up
$ vagrant ssh
$ gem install bundler
$ cd /vagrant
$ gem build
$ build exec jekyll serve --host 0.0.0.0
}
```

You'll now be able to view the page from your host OS via [](http://127.0.0.1:4000)

## Making images appropriate for this site
Images are in subfolders of 'images'
convert them via the guest vm and the helper script go to the folder with the base image and type
```$ ../makewebready.sh <filenamenoextension> ```
I.e. take the extension off the filename

