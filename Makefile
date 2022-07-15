publishWeb:
	rm -rf docs/*
	flutter build web --base-href /fl_chart_website/
	cp -r build/web/* docs/
	(git commit -am "Bump version" && git push origin master)