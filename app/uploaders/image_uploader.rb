# encoding: utf-8
require 'carrierwave/processing/mini_magick'
class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  version :thumb do
    process :resize_to_fill => [80,80]
  end
end
