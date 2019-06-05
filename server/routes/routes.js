module.exports = (app) => {

   app.get('/', (req, res, next) => {
      let breakingnewsDK = [
         "Danskebank er gået konkurs", "Jyskebank er gået konkurs", "Nordea er gået konkurs"
      ]
      let breakingnewsEN = [
         "Trump got reelected. Americas streets are going wild!", "Tigerwoods won his 12th PGA title", "Kim Jong-un claims that North Korea has enough firepower to blow up the sun"
      ]

      let topnews = [
         {
            "text": "Danskebank er gået konkurs",
            "date": "2019-09-19 13:51:04"
         },
         {
            "text": "Jyskebank er gået konkurs",
            "date": "2019-09-21 17:51:04"
         },
         {
            "text": "Nordea er gået konkurs",
            "date": "2019-10-09 11:51:04"
         },
         {
            "text": "Sparekassen Sjælland er gået konkurs",
            "date": "2019-12-11 19:51:04"
         },
      ]

      res.render('home', {
         "topnews": topnews,
         "breakingNewsDK": breakingnewsDK,
         "breakingNewsEN": breakingnewsEN
      });
   });

   app.get('/about', (req, res, next) => {
      let breakingnewsDK = [
         "Danskebank er gået konkurs", "Jyskebank er gået konkurs", "Nordea er gået konkurs"
      ]
      let breakingnewsEN = [
         "Trump got reelected. Americas streets are going wild!", "Tigerwoods won his 12th PGA title", "Kim Jong-un claims that North Korea has enough firepower to blow up the sun"
      ]
      res.render('about',{
         "breakingNewsDK": breakingnewsDK,
         "breakingNewsEN": breakingnewsEN
      });
   });

   app.get('/contact', (req, res, next) => {
      let breakingnewsDK = [
         "Danskebank er gået konkurs", "Jyskebank er gået konkurs", "Nordea er gået konkurs"
      ]
      let breakingnewsEN = [
         "Trump got reelected. Americas streets are going wild!", "Tigerwoods won his 12th PGA title", "Kim Jong-un claims that North Korea has enough firepower to blow up the sun"
      ]
      res.render('contact', {
         "breakingNewsDK": breakingnewsDK,
         "breakingNewsEN": breakingnewsEN
      });
   });

   app.get('/categories-post', (req, res, next) => {
      let breakingnewsDK = [
         "Danskebank er gået konkurs", "Jyskebank er gået konkurs", "Nordea er gået konkurs"
      ]
      let breakingnewsEN = [
         "Trump got reelected. Americas streets are going wild!", "Tigerwoods won his 12th PGA title", "Kim Jong-un claims that North Korea has enough firepower to blow up the sun"
      ]

      let comments = [
         {
            "name": "Flemming",
            "text": "OK service",
            "date": "2019-05-01 16:41:31",
            "image": "img/bg-img/29.jpg"
         },
         {
            "name": "Grethe",
            "text": "Fremragende service. 10/10!",
            "date": "2019-05-01 16:41:31",
            "image": "img/bg-img/31.jpg"
         },
         {
            "name": "Claus",
            "text": "Den bedste service. 10/10!",
            "date": "2019-05-01 16:41:31",
            "image": "img/bg-img/32.jpg"
         }
      ]
      res.render('categories-post', {
         "latestComments": comments,
         "breakingNewsDK": breakingnewsDK,
         "breakingNewsEN": breakingnewsEN
      });
   });

   app.get('/single-post', (req, res, next) => {
      let breakingnewsDK = [
         "Danskebank er gået konkurs", "Jyskebank er gået konkurs", "Nordea er gået konkurs"
      ]
      let breakingnewsEN = [
         "Trump got reelected. Americas streets are going wild!", "Tigerwoods won his 12th PGA title", "Kim Jong-un claims that North Korea has enough firepower to blow up the sun"
      ]

      let comments = [
         {
            "name": "Bo",
            "text": "God service. 10/10!",
            "date": "2019-05-01 16:41:31",
            "image": "img/bg-img/29.jpg"
         },
         {
            "name": "Anne",
            "text": "Fremragende service. 10/10!",
            "date": "2019-05-01 16:41:31",
            "image": "img/bg-img/31.jpg"
         },
         {
            "name": "Peter",
            "text": "Den bedste service. 10/10!",
            "date": "2019-05-01 16:41:31",
            "image": "img/bg-img/32.jpg"
         }
      ]
      let topnews = [
         {
            "text": "Danskebank er gået konkurs",
            "date": "2019-09-19 13:51:04"
         },
         {
            "text": "Jyskebank er gået konkurs",
            "date": "2019-09-21 17:51:04"
         },
         {
            "text": "Nordea er gået konkurs",
            "date": "2019-10-09 11:51:04"
         },
         {
            "text": "Sparekassen Sjælland er gået konkurs",
            "date": "2019-12-11 19:51:04"
         },
      ]

      res.render('single-post', {
         "latestComments": comments,
         "topnews": topnews,
         "breakingNewsDK": breakingnewsDK,
         "breakingNewsEN": breakingnewsEN

      });
   });
};