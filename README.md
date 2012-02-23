#Cinnamon Boilerplate

####A simple, lightweight boilerplate to help kick start your front-end projects.

* Scaleable directory structure with clear partitions between thirdparty libraries, plugins and project files.
* Heavy focus on structural granularity with intuitive delegation of responsibility.
* Packed with plenty of goodies including an HTML5 template, jQuery, requestAnimationFrame polyfill & css3.less to help make your site awesome!
* Integrates seamlessly with CodeKit for all your compilation and minification needs.

##Contributors:

Matthew Wagerfield: [Follow on Twitter](https://twitter.com/#!/mwagerfield)

Darcy Clarke: [Follow on Twitter](https://twitter.com/#!/darcy_clarke)

##Suggested Usage

* Work with the structure, not against it. Considerable time and thought has been invested in the structure of this boilerplate with the core focus on consistency, granularity and scalability.
* A *graphics* folder and an *images* folder, what's that all about? In a nutshell, if it's referenced as a background-image, it goes in the graphics folder. If it's referenced as the src of an <img> element, it goes in the images folder.
* Keep it consistent and adopt the conventions laid out before you. If you are embedding plugins such as SWFs, put them in a embeds folder. If you are referencing videos, put them in a videos folder.
* If you own a Mac, get [CodeKit](http://incident57.com/codekit/). It will literally change your developing life.

##LESS Formatting

Section/Block Comments

```css
//============================================================
// Typography
//============================================================
```

Single Line Comments

```css
// Navigation
```

##JavaScript Formatting

Function/Block Comments

```javascript
/**
 * Subscribe to an event with callback.
 * 
 * @param {String} key Dictionary key.
 * @param {Function} callback Function to call if found.
 * @returns {Boolean} success Whether or not a value was found.
 */
```

Single Line Comments

```javascript
/**
 * Check if the user is logged in.
 */
```


