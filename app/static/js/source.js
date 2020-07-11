$(".header").on("click", ".search-toggle", function(e) {
	console.debug("clicked");
	var selector = $(this).data("selector");

	$(selector)
		.toggleClass("show")
		.find(".search-input")
		.focus();
	$(this).toggleClass("active");

	e.preventDefault();
});
