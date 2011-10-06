For Rails 2.x apps, use the [master branch](https://github.com/bborn/ce-heroku/tree/)

To deploy this app to Heroku:

* Clone it: `git@github.com:bborn/ce-heroku.git`
* Switch to the rails3 branch: `git checkout rails3`
* Create a new Heroku app using the Cedar stack: `heroku create --stack cedar`
* Push to Heroku: `git push heroku rails3:master`
* Migrate: `heroku run rake db:migrate`
* To make file uploads work, you'll need to add some environment variables to your Heroku app:

		heroku config:add S3_KEY=YOUR_S3_KEY
		heroku config:add S3_SECRET=YOUR_S3_SECRET

* To make e-mail notifications (comments, signup confirmation, etc.) work, you'll need to use a third party e-mail service (see: [SendGrid](http://addons.heroku.com/sendgrid) or [AWS SES](https://github.com/drewblas/aws-ses))
