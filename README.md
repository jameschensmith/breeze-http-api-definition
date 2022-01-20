# Breeze HTTP API Definition

Example HTTP API documentation for [Breeze Church Management Software](https://breezechms.com) using [Redoc](https://redoc.ly/redoc), based on the [Breeze API Reference Guide](https://app.breezechms.com/api).

## Working on the API definitions

### Install

1. Install [Node.js](https://nodejs.org)
2. Clone repo and run `npm ci` in the repo root

### Usage

#### Preview

Run `npm start` to start the development server to preview the docs.

#### Docs

Run `npm run docs` to render the definitions as a single HTML file in the `dist` folder.

#### Build

Run `npm run build` to bundle the definitions into a single YAML file in the `dist` folder.

#### Validate

Run `npm test` to validate the definitions.

### Organization

The API definition has its own root document in the root of the `src` folder.

## Disclaimer

The code in this repository is created for educational purposes only. I do not work for Breeze, nor does the company itself have any associations / involvements in this project.
