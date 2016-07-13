class HelloWorldController < ApplicationController
  def index
    @hello_world_props = { name: "Masatoshi" }
  end
end
