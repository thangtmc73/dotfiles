-- Use the `default_options` as the second parameter, which uses
-- `foreground` for every mode. This is the inverse of the previous
-- setup configuration.
require 'colorizer'.setup({
  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
  'javascript';
  html = { mode = 'foreground' };
}, { mode = 'background' })