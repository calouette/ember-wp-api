# Ember-wp-api

This project is intended as a basis for combining Ember as a frontend for a WordPress backend. I am thinking of using the frontend of Wordpress to serve to search engines to have a crawlable Ember application

The project is built using Ember-CLI and the canary versions of both ember and ember-data

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM) and [Bower](http://bower.io/)
* [Ember CLI] (http://www.ember-cli.com/)

## Installation

* `git clone <repository-url>` this repository
* change into the new directory
* `npm install`
* `bower install`

## Routes

Currently the following routes are supported:

```
/:term_id
/:term_id/:subterm_id
/:term_id/:subterm_id/:post_id
```

Note: Category and Post slugs are used instead of the actual id's in the routes.

WordPress categories are loaded into Term models which have parent and children properties. The application will load all available categories using the WP API and display any categories without a parent as a main navigation.

Post comments are loaded asynchronously and retrieved by using post.get('comments'). The PostSerializer also adds the hash {links: comments: 'comments'}. This combined with loading the comments asynchronously and using .get instead of .find was the only solution for now I could find to request the comments for a post using a nested API request.

## Make it crawlable
I am thinking of using Apache's mod_rewrite to serve static html pages provided by WordPress to search engines


## Running / Development

* `ember server`
* Visit your app at http://localhost:4200.

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

## Further Reading / Useful Links

* ember: http://emberjs.com/
* ember-cli: http://www.ember-cli.com/
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

