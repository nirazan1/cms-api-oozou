class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :summary, :content, :published_date

  def published_date
    object.published_date.strftime('%h %d, %Y')
  end
end
