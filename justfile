clean:
    rm -r css-dist

setup:
    npm install

build: setup clean
    mkdir css-dist
    npx sass ./src/condensate.scss > ./css-dist/condensate.css
    npx css-minify -f css-dist/condensate.css