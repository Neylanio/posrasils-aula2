class PictureSerializer < ActiveModel::Serializer

    attributes :id, :name, :image

    
    def image
        self.object.image_url
    end

end