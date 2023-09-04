clean:
    rm -r css-dist

setup:
    npm install

build: 
    mkdir css-dist
    npx sass ./css/condensate.scss > ./css-dist/condensate.css
    npx css-minify -f css-dist/condensate.css