# frozen_string_literal: true

# Load Dragonfly if it isn't loaded already.
require 'dragonfly'

Dragonfly.app(:ckeditor).configure do
  plugin :imagemagick
  secret "fc0caca3d8f0bfb53baa37edabb89c4329a5cb145122e87ca4b86ddf72299e6e"

  # Store files in public/uploads/ckeditor. This is not
  # mandatory and the files don't even have to be stored under
  # public. See http://markevans.github.io/dragonfly/data-stores
  datastore :file, root_path: Rails.root.join('public/uploads/ckeditor', Rails.env).to_s,
                   server_root: 'public'

  # Accept asset requests on /ckeditor_assets. Again, this path is
  # not mandatory. Just be sure to include :job somewhere.
  url_format '/uploads/ckeditor/:job/:basename.:format'
end

Rails.application.middleware.use Dragonfly::Middleware, :ckeditor
