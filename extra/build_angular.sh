#!/bin/sh

echo "-----> Building Angular"
echo "APPCHECKOUT_DIR $APP_CHECKOUT_DIR"
echo "ROOT_URL $ROOT_URL"
echo "COMPILE_DIR $COMPILE_DIR"

cd $APP_CHECKOUT_DIR
npm install
npm run meteor-client:bundle -- --url=$ROOT_URL
npm run build -- --prod --output-path=$COMPILE_DIR
