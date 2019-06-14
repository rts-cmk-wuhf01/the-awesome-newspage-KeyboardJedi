const mysql = require('../config/mysql');

module.exports = (app) => {


   app.get('/', async (req, res, next) => {
      let db = await mysql.connect(); 
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute(`
      SELECT categories.title AS category_title, 
      articles.title AS article_title, 
      images.src, 
      articles.comments_fk,
      articles.date
      FROM articles
      INNER JOIN comments ON comments_fk = comments.id
      INNER JOIN categories ON category_fk = categories.id
      INNER JOIN images ON images_fk = images.id`)
  let [comments] = await db.execute(`SELECT * FROM comments
      `)
      db.end();
     
      res.render('home', {
         "categories": categories,
         "articles":articles,
         "comments": comments
      });
   });

   app.get('/about', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute("SELECT articles.title AS article_title FROM articles")
      db.end();
   
      res.render('about', {
         "categories": categories,
         "articles": articles
       
      });
   });

   app.get('/contact', async(req, res, next) => {
      let db = await mysql.connect(); 
      let [categories] = await db.execute("SELECT * FROM categories")
       let [articles] = await db.execute("SELECT articles.title AS article_title FROM articles")
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
      SELECT categories.title AS category_title, 
      articles.title AS article_title, images.src,
      date
      FROM articles
      INNER JOIN categories ON category_fk = categories.id
      INNER JOIN images ON images_fk = images.id`)
      db.end();

      res.render('categories-post', {
         "categories": categories,
         "articles":articles
      });
   });

   app.get('/categories-post/:category_id', async (req, res, next) => {
      let db = await mysql.connect();
      let [categoryposts] = await db.execute(`
      SELECT category_fk, title, images_fk, date
      FROM articles 
      WHERE category_fk = ?`, [req.params.category_id])

      let [categories] = await db.execute(`
      SELECT * FROM categories`)

      let [articles] = await db.execute(`
      SELECT categories.title AS category_title, 
      articles.title AS article_title, images.src,
      date
      FROM articles
      INNER JOIN categories ON category_fk = categories.id
      INNER JOIN images ON images_fk = images.id`)
      db.end(); 
   
      res.render('categories-post', {
         "articles":articles,
         "categories": categories,  
         "categoryposts": categoryposts    
      });   
   });   

   app.get('/single-post', async (req, res, next) => {
      let db = await mysql.connect(); 
      let [categories] = await db.execute("SELECT * FROM categories")
      let [articles] = await db.execute(`
      SELECT categories.title AS category_title, 
      articles.title AS article_title, images.src,
      date
      FROM articles
      INNER JOIN categories ON category_fk = categories.id
      INNER JOIN images ON images_fk = images.id`)
    

    
     

      let [comments] = await db.execute(`SELECT * FROM comments
      INNER JOIN users ON user_fk = users.id 
      
      `)
      db.end();

      res.render('single-post', {
         "articles":articles,
         "categories": categories,
         "comments": comments,
         
      });
   });
};