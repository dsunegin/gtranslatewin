#!/bin/sh

#npm run compile

pm2 delete gtranslatewin-bg
CONFIG=".env.bg"  pm2 start --name gtranslatewin-bg  build/src/index.js --cron "20 */2 * * *"
pm2 save