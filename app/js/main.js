'use strict';

var siteInit = {

	DOMready: function() {

		if ($('.selector').length > 0) {
			siteInit.demoFunction();
		}

	},

	demoFunction: function() {

	}

};


/* Document ready */

$(document).ready(function() {
	siteInit.DOMready();
});