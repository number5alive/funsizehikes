The first iteration of funsizehikes.com

Build with bootstrap 5, and designed to be run from GitHub Pages (so static hosting)

NOTE: Using jQuery to include header.html and footer.html into every page. This triggers a CORS error in Chrome when testing locally (because of the file:/// path). So... Now we need to test it with Chrome running with web security turned off (just for testing, cool your jets!)

mkdir ~/.gchrometest
/c/Program Files/Google/Chrome/Application/chrome.exe --disable-web-security --user-data-dir=.gchrometest

# Making images appropriate for this site
# images are in subfolders of images
# convert them via the guest vm and the helper script go to the folder with the base image and type
# ../makewebready.sh <filenamenoextension>
# I.e. take the extension off the filename

# NEW - Switching over to Jekyll
# For local testing and development use the vagrant setup
# $ vagrant up
# $ gem install bundler
# $ cd /vagrant
# $ gem build
# $ vagrant server --host 0.0.0.0

# You'll now be able to view the page from your host OS via http://127.0.0.1:4000

