require 'yaml'
require 'open-uri'
include CloudinaryHelper
include ActionView::Helpers::UrlHelper

projects = YAML.load_file(Rails.root.join('db/lib/projects.yml')).map(&:deep_symbolize_keys)

def open_cloudinary(url)
  begin
    open(cloudinary_url(url))
  rescue OpenURI::HTTPError
    open("#{Rails.root}/app/assets/images/logo.png")
  else
    open("#{Rails.root}/app/assets/images/logo.png")
  end
end

users = User.not_admins

projects.map do |project_hash|
  project = Project.new(project_hash.except(:image, :image_company_logo))

  project.image.attach(
    io: open_cloudinary(project_hash[:image]),
    filename: project_hash[:image]
  )

  project.image_company_logo.attach(
    io: open_cloudinary(project_hash[:image_company_logo]),
    filename: project_hash[:image_company_logo]
  )
  project.user = users.sample

  project.save!
end
