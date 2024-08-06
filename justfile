clean:
    rm -r css-dist || true

setup:
    npm install

build: setup clean
    mkdir css-dist
    npx css-minify -f condensate.css

publish:
    #!/usr/bin/env bash
    rm -rf /tmp/condensate
    mkdir /tmp/condensate
    cp test.html /tmp/condensate/index.html
    cp condensate.css /tmp/condensate/condensate.css
    git checkout website
    cp /tmp/condensate/index.html index.html
    cp /tmp/condensate/condensate.css condensate.css
    git add --all
    git commit -m "Publish"