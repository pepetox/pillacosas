require 'rails_helper'

RSpec.describe "datasets/index", type: :view do
  before(:each) do
    assign(:datasets, [
      Dataset.create!(
        :nombre => "Nombre",
        :html => "MyText",
        :mi_url => "Mi Url",
        :bloque => "Bloque",
        :campo1 => "Campo1",
        :campo2 => "Campo2",
        :campo3 => "Campo3",
        :campo4 => "Campo4",
        :campo5 => "Campo5",
        :campo6 => "Campo6"
      ),
      Dataset.create!(
        :nombre => "Nombre",
        :html => "MyText",
        :mi_url => "Mi Url",
        :bloque => "Bloque",
        :campo1 => "Campo1",
        :campo2 => "Campo2",
        :campo3 => "Campo3",
        :campo4 => "Campo4",
        :campo5 => "Campo5",
        :campo6 => "Campo6"
      )
    ])
  end

  it "renders a list of datasets" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Mi Url".to_s, :count => 2
    assert_select "tr>td", :text => "Bloque".to_s, :count => 2
    assert_select "tr>td", :text => "Campo1".to_s, :count => 2
    assert_select "tr>td", :text => "Campo2".to_s, :count => 2
    assert_select "tr>td", :text => "Campo3".to_s, :count => 2
    assert_select "tr>td", :text => "Campo4".to_s, :count => 2
    assert_select "tr>td", :text => "Campo5".to_s, :count => 2
    assert_select "tr>td", :text => "Campo6".to_s, :count => 2
  end
end
