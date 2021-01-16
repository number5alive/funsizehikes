The first iteration of funsizehikes.com

Build with bootstrap 5, and designed to be run from GitHub Pages (so static hosting)

NOTE: Using jQuery to include header.html and footer.html into every page. This triggers a CORS error in Chrome when testing locally (because of the file:/// path). So... Now we need to test it with Chrome running with web security turned off (just for testing, cool your jets!)

mkdir ~/.gchrometest
/c/Program Files/Google/Chrome/Application/chrome.exe --disable-web-security --user-data-dir=.gchrometest
