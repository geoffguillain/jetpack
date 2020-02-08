#!/bin/bash

# This will remove most files that we do not intend to ship with production Jetpack.

rm -rf \
.eslintrc.js \
.eslintignore \
.git \
.gitignore \
.sass-cache \
.travis.yml \
.npmrc \
.nvmrc \
.eslines.json \
.eslintcache \
readme.md \
.github \
babel.config* \
phpunit.xml.dist \
dangerfile.js \
bin/phpcs-whitelist.js \
bin/pre-commit-hook.js \
bin/prepare-built-branch.sh \
bin/prepare-commit-msg.js \
bin/release-package.php \
bin/version-packages.sh \
css/*.css.map \
css/*.css.min.map \
docs \
tests \
scss \
tools \
vendor/bin \
vendor/dealerdirect \
vendor/phpcompatibility \
vendor/sirbrillig \
vendor/squizlabs \
vendor/wp-coding-standards \
vendor/automattic/jetpack-autoloader \
vendor/automattic/**/tests/ \
vendor/automattic/**/.gitattributes \
vendor/automattic/**/README.md \
vendor/automattic/**/phpunit.xml \
vendor/automattic/**/phpunit.xml.dist \
vendor/automattic/**/composer.json \
vendor/automattic/**/assets/*.scss \
composer.lock \
package.json \
postcss.config.js \
gulpfile.js \
gulpfile.babel.js \
node_modules \
languages/jetpack.pot \
LICENSE.txt \
modules/widgets/follow-button.php \
modules/calypsoify/*.css.map \
modules/calypsoify/*.scss \
to-test.md \
webpack.config* \
.editorconfig \
_inc/.eslintrc.js \
_inc/client \
_inc/build/*.js.map \
_inc/build/*.css.map \
_inc/build/maps \
.codeclimate.yml \
yarn.lock \
docker \
bin/pre-commit-hook.js \
yarn-error.log \
extensions/**/*.css \
extensions/**/*.gif \
extensions/**/*.jpeg \
extensions/**/*.jpg \
extensions/**/*.js \
extensions/**/*.json \
extensions/**/*.jsx \
extensions/**/*.md \
extensions/**/*.png \
extensions/**/*.sass \
extensions/**/*.scss \
extensions/**/*.svg \
extensions/**/*.snap \
extensions/.eslintrc.js \
packages \
**/__snapshots__ \
modules/search/instant-search \
modules/search/.eslintrc.js \
wp-cli-templates
