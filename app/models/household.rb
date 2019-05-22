class Household < ApplicationRecord
    has_many :parents, dependent: :destroy
    accepts_nested_attributes_for :parents,
                                  reject_if: ->(a) { a[:name].blank? },
                                  allow_destroy: true
end

# "comment"=>{"text"=>"testing to see how nested attributes work", "rating"=>"5", "foods_attributes"=>{"0"=>{"_destroy"=>"false", "name"=>"laksa"}, "1"=>{"_destroy"=>"false", "name"=>"mayo"}, "2"=>{"_destroy"=>"false", "name"=>"chilli"}}}, "commit"=>"Submit Review", "hawker_id"=>"1"}

