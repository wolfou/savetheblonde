# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( custom.css )
Rails.application.config.assets.precompile += %w( 0quintusall.js )
Rails.application.config.assets.precompile += %w( partie1.js )
Rails.application.config.assets.precompile += %w( partie2.js )
Rails.application.config.assets.precompile += %w( partie3.js )
Rails.application.config.assets.precompile += %w( partie4.js )
Rails.application.config.assets.precompile += %w( partie5.js )
Rails.application.config.assets.precompile += %w( partie6.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
