const mysql = require('../config/mysql');

module.exports = (app) => {


   app.get('/', async(req, res, next) => {
      let db = await mysql.connect(); 
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute(`
      SELECT title, date 
      FROM articles`)
      db.end();
  
      res.render('home', {
         "categories": categories,
         "articles":articles
      });
   });

   app.get('/about', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute("SELECT * FROM categories")
      db.end();
   
      res.render('about', {
         "categories": categories,
       
      });
   });

   app.get('/contact', async(req, res, next) => {
      let db = await mysql.connect(); 
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute(`
      SELECT title, date 
      FROM articles`)
      db.end();
      
      res.render('contact', {
         "categories": categories,
         "articles": articles
      });
   });

   app.get('/categories-post', async (req, res, next) => {
      let db = await mysql.connect(); 
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute(`
      SELECT title, date 
      FROM articles`)
      db.end();

      res.render('categories-post', {
         "categories": categories,
         "articles":articles
      });
   });

   app.get('/categories-post/:category_id', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute(`
      SELECT category_fk, title, images_fk, date
      FROM articles 
      WHERE category_fk = ?`, [req.params.category_id])
      let [articles] = await db.execute(`
      SELECT title, date 
      FROM articles`)
      db.end(); 
     
      res.render('categories-post', {
         "articles":articles,
         "categories": categories      
      });   
   });   

   app.get('/single-post', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute(`
      SELECT title, date 
      FROM articles`)
      db.end();
      

      res.render('single-post', {
         "categories": categories,
         "articles":articles,
      });
   });
};