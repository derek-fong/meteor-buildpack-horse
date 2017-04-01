#!/bin/sh

echo "-----> Building Angular"
cd $APP_CHECKOUT_DIR
npm install -g meteor-client-bundler
npm install
npm run meteor-client:bundle

meteor-client bundle -s api --url="https://$HEROKU_APP_NAME.herokuapp.com"
ng build --prod --output-path $COMPILE_DIR

