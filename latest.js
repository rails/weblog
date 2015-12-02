---
---
latestBlogPost({
  url: {{ site.posts.first.url | jsonify }},
  date: {{ site.posts.first.date | jsonify }},
  title: {{ site.posts.first.title | jsonify }}
});
