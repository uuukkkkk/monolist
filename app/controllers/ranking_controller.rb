class RankingController < ApplicationController
    def have
        rank = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
        @ranking = Item.find(rank).sort_by {|item| rank.index(item.id)}
    end
    
    def want
        rank = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
        @ranking = Item.find(rank).sort_by {|item| rank.index(item.id)}
    end
end
