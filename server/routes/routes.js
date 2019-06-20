const mysql = require('../config/mysql');

async function getCategories() {
   let db = await mysql.connect();
   let [categories] = await db.execute(`
   SELECT * FROM categories`);
   db.end();
   return categories;
}

async function getArticles() {
   let db = await mysql.connect();
   let [articles] = await db.execute(`
   SELECT 
   *
   FROM articles
   INNER JOIN 
   `)
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
      articles.article_date,
      articles.id AS article_id,
      categories.id AS category_id
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
      articles.article_comments_fk,
      articles.article_date,
      articles.id AS article_id,
      categories.id AS category_id
      FROM articles
      INNER JOIN comments ON article_comments_fk = comments.id
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
      articles.article_comments_fk,
      articles.article_date,
      articles.id AS article_id,
      categories.id AS category_id
      FROM articles
      INNER JOIN comments ON article_comments_fk = comments.id
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
      let [selectedArticle] = await db.execute(`
      SELECT category_title, 
      article_title, 
      images.images_src,
      author_name,
      article_text
      FROM articles
      INNER JOIN categories ON article_category_fk = categories.id
      INNER JOIN images ON article_images_fk = images.id
      INNER JOIN authors ON article_authors_fk = authors.id
      WHERE articles.id = ?
       `
         // WHERE articles.id = ?, den finder kun viser articles med ID der matcher URL parameteren
         // req.params.article_id henter URL parameteret
         , [req.params.article_id])

      let [articles] = await db.execute(`
      SELECT 
      category_title, 
      article_title, 
      images.images_src,
      article_date,
      authors.author_name
      FROM articles
      INNER JOIN categories ON article_category_fk = categories.id
      INNER JOIN images ON article_images_fk = images.id
      INNER JOIN authors ON article_authors_fk = authors.id
       `)

      let [comments] = await db.execute(`
       SELECT * FROM comments
       INNER JOIN users ON comments_user_fk = users.id
       INNER JOIN images ON users_avatar_fk = images.id
       `)

      db.end();

      res.render('single-post', {
         "articles": articles,
         "selectedArticle": selectedArticle[0],
         "comments": comments,
         "categories": categories

      });
   });

   app.post(`/contact`, async (req, res, next) => {
      let name = req.body.name;
      let email = req.body.email
      let subject = req.body.subject
      let message = req.body.message
      let contactDate = new Date();


      //validering 
      let insert_errors = [];

      if (name == "undefined" || name == "") {
         insert_errors.push("Name feltet skal være udfyldt!")
      }
      if (email == "undefined" || email == "") {
         insert_errors.push("Email feltet skal være udfyldt!")
      }
      if (subject == "undefined" || subject == "") {
         insert_errors.push("Subject feltet skal være udfyldt!")
      }
      if (message == "undefined" || message == "") {
         insert_errors.push("Message feltet skal være udfyldt!")
      }
      if (insert_errors.length > 0) {
         let categories = await getCategories();
         res.render(`contact`, {
            "categories": categories,
            "error_messages": insert_errors.join(", "),
            "value": req.body
         })

      } else {
         let db = await mysql.connect();
         let result = await db.execute(`
         INSERT INTO messages 
         (messages_sender, messages_email, messages_subject, messages_text) 
         VALUES (?,?,?,?)`, [name, email, subject, message]);
         db.end();

         if (result[0].affectedRows > 0) {
            insert_errors.push('Tak for din besked, vi vender tilbage hurtigst muligt');
         } else {
            insert_errors.push('Din besked blev ikke modtaget.... ');
         }

         let categories = await getCategories(); // denne har jeg ikke forklaret endnu! 
         res.render('contact', {
            'categories': categories,
            'error_messages': insert_errors.join(', '),
            'values': req.body
         });
      }




   })

   //comments>users.user_fk = usersuser.id
};


