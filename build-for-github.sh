#!/bin/bash

ng build --output-path docs

cp -p src/redirect-index.html docs/index.html