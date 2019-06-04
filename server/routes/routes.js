module.exports = (app) => {

   app.get('/', (req, res, next) => {
      res.render('home');
   });

   app.get('/about', (req, res, next) => {
      res.render('about');
   });

   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

   app.get('/categories-post', (req, res, next) => {
      res.render('categories-post');
   });

   app.get('/single-post', (req, res, next) => {
     
      let comments = [
         {
         "name": "Bo",
         "text": "God service. 10/10!",
         "date": "2019-05-01 16:41:31"
      },
      {
         "name": "Anne",
         "text": "Fremragende service. 10/10!",
         "date": "2019-05-01 16:41:31"
      },
      {
         "name": "Peter",
         "text": "Den bedste service. 10/10!",
         "date": "2019-05-01 16:41:31"
      }
   ]

      res.render('single-post', {
         "latestComments": comments
        
      });
   });
};