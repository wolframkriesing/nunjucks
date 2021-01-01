FROM node:6.9

# Make every executable from node_modules/.bin available in the command line globally.
# This makes working with them easier and does not require `./node_modules/.bin/mocha`
# but allows for just `mocha`.
ENV PATH=$PATH:./node_modules/.bin
