module Slugifiable

  module ClassMethods
    def find_by_slug(slug)#Class Method
      self.all.find{|data| data.slug == slug}
    end

  end

  module InstanceMethods

    def slug #Instance Method
        self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end

  end

end
