class SliderLocation < ActiveRecord::Migration
def change
    create_table :spree_slider_locations do |t|
      t.string :name
      t.timestamps
    end

    create_table :spree_slide_slider_locations do |t|
      t.belongs_to :slide, index: true
      t.belongs_to :slide_location, index: true
    end
  end
end


