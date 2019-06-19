const mysql = require('../config/mysql');

async function getCategories() {
   let db = await mysql.connect();
   let [categories] = await db.execute(`
   SELECT * FROM categories`);
   db.end();
   return categories;
}

module.exports = (app) => {

   app.get('/', async (req, res, next) => {
      let db = await mysql.connect();
      let categories = await getCategories();
      let [articles] = await db.execute(`
      SELECT category_title, 
      article_title, 
      images.images_src, 
      articles.article_comments_fk,
      articles.article_date
      FROM articles
      INNER JOIN comments ON article_comments_fk = comments.id
      INNER JOIN categories ON article_category_fk = categories.id
      INNER JOIN images ON article_images_fk = images.id`)
      let [comments] = await db.execute(`SELECT * FROM comments
      `)
      db.end();

      res.render('home', {
         "categories": categories,
         "articles": articles,
         "comments": comments
      });
   });

   app.get('/about', async (req, res, next) => {
      let db = await mysql.connect();
      let categories = await getCategories();
      let [articles] = await db.execute("SELECT articles.article_title FROM articles")
      db.end();

      res.render('about', {
         "categories": categories,
         "articles": articles

      });
   });

   app.get('/contact', async (req, res, next) => {
      let db = await mysql.connect();
      let categories = await getCategories();
      let [articles] = await db.execute("SELECT articles.article_title FROM articles")
      db.end();

      res.render('contact', {
         "categories": categories,
         "articles": articles
      });
   });

   app.get('/categories-post', async (req, res, next) => {
      let db = await mysql.connect();
      let categories = await getCategories();
      let [articles] = await db.execute(`
      SELECT category_title, 
      article_title, 
      images.images_src,
      article_date
      FROM articles
      INNER JOIN categories ON article_category_fk = categories.id
      INNER JOIN images ON article_images_fk = images.id`)

      let [comments] = await db.execute(`
      SELECT * FROM comments
      INNER JOIN users ON comments_user_fk = users.id
      INNER JOIN images ON users_avatar_fk = images.id
      `)
      db.end();

      res.render('categories-post', {
         "categories": categories,
         "articles": articles,
         "comments": comments
      });
   });







   app.get('/categories-post/:category_id', async (req, res, next) => {
      let db = await mysql.connect();
      let [categoryposts] = await db.execute(`
      SELECT article_category_fk, article_title, article_images_fk, article_date
      FROM articles 
      WHERE article_category_fk = ?`, [req.params.category_id])

      let categories = await getCategories();

      let [articles] = await db.execute(`
      SELECT category_title, 
      article_title, 
      images.images_src,
      article_date
      FROM articles
      INNER JOIN categories ON article_category_fk = categories.id
      INNER JOIN images ON article_images_fk = images.id`)
      db.end();

      res.render('categories-post', {
         "articles": articles,
         "categories": categories,
         "categoryposts": categoryposts
      });
   });


   //==================== :article_id er en URL parameter
   app.get('/single-post/:article_id', async (req, res, next) => {
      console.log(req.params.article_id)


      let db = await mysql.connect();
      let categories = await getCategories();
      let [articles] = await db.execute(`
      SELECT category_title, 
      article_title, images.images_src,
      article_date
      FROM articles
      INNER JOIN categories ON article_category_fk = categories.id
      INNER JOIN images ON article_images_fk = images.id
      INNER JOIN authors ON article_authors_fk = authors.id
      WHERE articles.id = ?
       `
       // WHERE articles.id = ?, den finder kun viser articles med ID der matcher URL parameteren
       // req.params.article_id henter URL parameteret
       , [req.params.article_id])

       let [comments] = await db.execute(`
       SELECT * FROM comments
       INNER JOIN users ON comments_user_fk = users.id
       INNER JOIN images ON users_avatar_fk = images.id
       `)

      db.end();

      //comments>users.user_fk = usersuser.id>

      res.render('single-post', {
         "articles": articles,
         "categories": categories,
         "comments": comments,

      });
   });
};


