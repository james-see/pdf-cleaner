# pdf-cleaner
This allows you to clean a PDF and it's embedded images from any metadata. 
Please leave any comments in the issues section, and I welcome a security and thorough code review. Thanks and enjoy.

### Prerequisites

If you are running OSX, you can try the install.sh (coming soon) file to install all the prerequisites. Otherwise manually find the following: QPDF, pdftk, pdfinfo.

#### QPDF
the easy way with [homebrew](http://brew.is)
`brew update`
`brew install qpdf`

#### pdftk
as of writing the easiest way is just to download the latest package that works for El Capitan, when a homebrew version becomes available, I will hopefully update this.
download https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg 

#### pdfinfo
the fastest way is to download the precombiled binary from foolabs for xpdf, which includes pdfinfo:

move to your proper downloads folder to stay organized
`cd ~/Downloads`

get precompiled binary of xpdf which included pdfinfo
`curl ftp://ftp.foolabs.com/pub/xpdf/xpdfbin-mac-3.04.tar.gz`

untar
`tar -xzvf xpdfbin-mac-3.04.tar.gz`

move the executables to the proper location
`cd xpdfbin-mac-3.04`
`cd bin64`
`cp * /usr/local/bin`

### Quickstart
To run, make sure you have the prereqs installed then drop the .sh file into your bin folder somewhere in your path, I use `/usr/local/bin`, so you can do a `git clone https://github.com/jamesacampbell/pdf-cleaner` into any folder then do a `ln -s pdf-cleaner/clean_pdf.sh /usr/local/bin` or `cp pdf-cleaner/clean_pdf.sh /usr/local/bin/`

Then run `sudo chmod +x clean_pdf.sh` to make it executable (assuming you cd to properly location first).

Then simply anywhere in your path where your PDF exists, for example `cd ~/Downloads` then run `clean_pdf.sh filename.pdf`.

The script saves the original and saves a .clean.pdf version.

I found the original in a github gist and decided to make a project out of it for easy deployment.

