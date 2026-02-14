clean:
    rm -r dist || true

setup:
    npm install

build: setup clean
    mkdir dist
    npx css-minify -f src/condensate.css

publish:
    #!/usr/bin/env bash
    rm -rf /tmp/condensate
    mkdir /tmp/condensate
    cp src/index.html /tmp/condensate/index.html
    cp src/rbox-demo.html /tmp/condensate/rbox-demo.html
    cp src/condensate.css /tmp/condensate/condensate.css
    git checkout website
    cp /tmp/condensate/index.html index.html
    cp /tmp/condensate/rbox-demo.html rbox-demo.html
    cp /tmp/condensate/condensate.css condensate.css
    git add --all
    git commit -m "Publish"
