# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'


Rails.application.config.assets.precompile += %w( style.css )

Rails.application.config.assets.precompile += %w( boot.css )

Rails.application.config.assets.precompile += %w( style_show.css )

Rails.application.config.assets.precompile += %w( professor_style.css )

Rails.application.config.assets.precompile += %w( customejsfile.js )

Rails.application.config.assets.precompile += %w( bootstrap-arrows.js )

Rails.application.config.assets.precompile += %w( button.css )

Rails.application.config.assets.precompile += %w( bootstrap-arrows.css )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
