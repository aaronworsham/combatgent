Image.class_eval do
  has_attached_file :attachment,
                    :styles => { :mini => '48x48>', :small => '100x100>', :product => '240x240>', :large => '600x600>' },
                    :storage => :s3,
                    :bucket => 'combatgentlesirs',
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :default_style => :product,
                    :url => ":products/:id/:style/:basename.:extension",
                    :path => ":products/:id/:style/:basename.:extension"
end