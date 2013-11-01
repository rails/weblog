## Steps to publish a Riding Rails article

1. Clone the weblog repository

    ``` bash
    $ git clone git@github.com:rails/weblog.git
    ```

2. Checkout the gh-pages branch

    ``` bash
    $ cd weblog && git checkout gh-pages
    ```

3. Create a post in the _posts directory with the date and permalink in the name

    ``` bash
    $ vi _posts/YYYY-MM-DD-permalink.format
    ```

4. Write your post

    ``` yaml
    ---
    layout: post
    title: Your post title
    categories: [Releases,Edge]
    author: Your Name
    published: true
    date: 2012-03-07 19:22:00 +00:00
    ---
    Your post content in HTML, Textile or Markdown format
    ```

5. Commit and push

    ``` bash
    $ git add . && git commit -m 'My commit message' && git push
    ```

6. There is no step six - GitHub will rebuild the _site directory

## Contribution Guidelines

1. When embedding an image, make a copy in the /assets directory if possible.

2. When adding a new category, add the category index page as well.

3. Try to avoid using of inline style definitions as they make redesigning harder in the future.

4. Use `<h2>` tags (## in Markdown) for red headings and `<h3>` tags (### in Markdown) 
   for black headings - do not use a single line paragraph with bold text as the margin spacing will be incorrect.
