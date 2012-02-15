#Cinnamon Boilerplate

A simple, lightweight front-end boilerplate to help kick start your projects.

* Scaleable directory structure with clear partitions between thirdparty libraries, plugins and project files.

###Contributors:

Matthew Wagerfield: https://twitter.com/#!/mwagerfield

Darcy Clarke: https://twitter.com/#!/darcy_clarke

Justin Windle: https://twitter.com/#!/soulwire

##Build Script

We suggest using Justin Windle's Springboard library which utilizes a comprehensive build script actively in development. You can read more and download the repository here: http://blog.soulwire.co.uk/laboratory/javascript/springboard-javascript-css-html-template

##File/Folder Structure

* deploy/ `contains: production quality code generated from build script`
* source/ `contains: development quality code` 
	* index.html
	* assets
		* scripts
			* js
				* bootstrap.js
				* libraries
					* jquery-1.7.1.min.js
				* plugins
					* requestAnimationFrame.js
				* project
			* coffescript
		* styles
			* css
				* styles.css `contains: generated from LESS`
			* less
				* styles.less `contains: includes to LESS files` 
				* core
					* print.less `contains: common print styles
					* reset.less `contains: common normalize styles`
				* mixins
					* css3.less `contains: CSS3 normalize mixins`
					* helpers.less `contains: common mixins`
				* project
					* display.less `contains: projects media queries`
					* global.less `contains: projects global styles`

##LESS Formatting

*Section/Block Comments*
```css
//============================================================
// Helpers
//============================================================
```

*Single Line Comments*
```css
// Secondary Navigation
```

##JavaScript Formatting

*Function/Block Comments*
```javascript
/**
 * Subscribe to an event with callback
 * 
 * @param {String} topic 
 * @param {Function} callback function
 * @returns {Object} handler
 */
```

*Single Line Comments*
```javascript
/**
 * Check if user's logged in
 */
```


