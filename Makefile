build:
	rm -r docs/*
	flutter build web
	mv build/web/* docs/
