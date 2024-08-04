clean:
    rm -r css-dist || true

setup:
    npm install

build: setup clean
    mkdir css-dist
    npx css-minify -f condensate.css