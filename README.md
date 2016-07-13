# react_on_rails_using_react_on_rails_gem

Integrate react in a rails application using [shakacode/react_on_rails
](https://github.com/shakacode/react_on_rails/) gem.

#### Set up `react_on_rails`
- Follow [this](https://github.com/shakacode/react_on_rails/#getting-started).

#### Run your Rails server

```bash
$ foreman start -f Procfile.dev
```

#### Heroku Deployment

Follow  [this](https://github.com/shakacode/react_on_rails/blob/master/docs/additional-reading/heroku-deployment.md)

- [Caching Node Modules](https://github.com/shakacode/react_on_rails/blob/master/docs/additional-reading/heroku-deployment.md#caching-node-modules)
- [Adding Heroku buildpacks](https://github.com/shakacode/react_on_rails/blob/master/docs/additional-reading/heroku-deployment.md#how-to-deploy)



## How it works

> The generator installs your webpack files in the client folder. Foreman uses webpack to compile your code and output the bundled results to app/assets/webpack, which are then loaded by sprockets. These generated bundle files have been added to your .gitignore for your convenience.


## Examples

### [http://www.reactrails.com](http://www.reactrails.com)

- [react-webpack-rails-tutorial](https://github.com/shakacode/react-webpack-rails-tutorial)


### `HelloWorldApp` (Client Rendering)

#### Rails

`app/controllers/hello_world_controller.rb`

```rb
class HelloWorldController < ApplicationController
  def index
    @hello_world_props = { name: "Masatoshi" }
  end
end
```

`app/views/hello_world/index.html.erb`

```html
<h1 class="alert alert-info this-works">Client Rendering</h1>
<%= react_component("HelloWorldApp",
                     props: @hello_world_props,
                     prerender: false) %>
```

#### React

- Components live in `client/app/bundles/` directory

```
$ tree -L 2
.
├── client
│   ├── app
│   │    └── bundles
│   │        └── HelloWorld
│   │            ├── components
│   │            │   └── HelloWorldWidget.jsx
│   │            ├── containers
│   │            │   └── HelloWorld.jsx
│   │            └── startup
│   │                ├── HelloWorldAppClient.jsx
│   │                └── clientRegistration.jsx
│   ├── node_modules
│   ├── package.json
│   ├── webpack.client.base.config.js
│   └── webpack.client.rails.config.js
```
