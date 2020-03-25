![$averZ Logo](/app/assets/images/saverz-v2.png)

## A startup that offers discount coupons and donates the affiliate revenue to the user’s choice academic researcher or research field through a Chrome Extension ([repo here](https://github.com/marcoscannabrava/saverz-extension)).

### [saverz.org website 🌎](https://www.saverz.org/)

#### [Demo Video 🎞️](https://marcoscannabrava.github.io/videos/saverz.mp4)


### Local Installation ⚙️
Run the following commands
```bash
bundle && yarn
rails db:drop db:create db:migrate db:seed
rails s
```
Open [http://localhost:3000/](http://localhost:3000/)


### Features 📄
- Web App: Scrapes Discount Coupons From An Affiliate Program API
- Chrome Extension: Serves Coupons & Automatically Redirects To E-Commerce Stores With Affiliate Tracking Links

### Technology 💾
- Ruby on Rails
- Bootstrap (HTML5/CSS3)
- Authentication (Devise)
- Photo Uploading (Cloudinary + Carrierwave)
- Simple Form