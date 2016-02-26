class RankingController < ApplicationController

  def have
    @ranking = Ownership.where(type: 'Have').group(:item_id).limit(10).order("count_item_id desc").count(:item_id)
  end

  def want
    @ranking = Ownership.where(type: 'Want').group(:item_id).limit(10).order("count_item_id desc").count(:item_id)
  end
end
