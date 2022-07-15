publishWeb:
	rm -rf docs/*
	flutter build web --base-href /docs/
	cp -r build/web/* docs/
	(git commit -am "Bump version" && git push origin master)