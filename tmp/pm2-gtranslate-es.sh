#!/bin/sh

#npm run compile

pm2 delete gtranslatewin-es
CONFIG=".env.es"  pm2 start --name gtranslatewin-es  build/src/index.js --cron "30 */2 * * *"
pm2 save