class Video < ApplicationRecord
  def related
    Video.where("categories ILIKE ?", self.categories)
    .limit(24)

    # subquery = Video.select("id, title").where(id: self.id)
      # .as("original_video").to_sql
    # similar = Video.select("videos.*, ts_rank_cd(to_tsvector('english', videos.title), replace(plainto_tsquery(original_video.title)::text, ' & ', ' | ')::tsquery, 8) AS similarity")
    # similar = Video.select("videos.*")
    #   .from("videos, #{subquery}")
    #   .where("videos.id != #{self.id}")
    #   .order('similarity DESC')
    #   .limit(24)

  end

end
