require 'rails_helper'

RSpec.describe "datasets/edit", type: :view do
  before(:each) do
    @dataset = assign(:dataset, Dataset.create!(
      :nombre => "MyString",
      :html => "MyText",
      :mi_url => "MyString",
      :bloque => "MyString",
      :campo1 => "MyString",
      :campo2 => "MyString",
      :campo3 => "MyString",
      :campo4 => "MyString",
      :campo5 => "MyString",
      :campo6 => "MyString"
    ))
  end

  it "renders the edit dataset form" do
    render

    assert_select "form[action=?][method=?]", dataset_path(@dataset), "post" do

      assert_select "input#dataset_nombre[name=?]", "dataset[nombre]"

      assert_select "textarea#dataset_html[name=?]", "dataset[html]"

      assert_select "input#dataset_mi_url[name=?]", "dataset[mi_url]"

      assert_select "input#dataset_bloque[name=?]", "dataset[bloque]"

      assert_select "input#dataset_campo1[name=?]", "dataset[campo1]"

      assert_select "input#dataset_campo2[name=?]", "dataset[campo2]"

      assert_select "input#dataset_campo3[name=?]", "dataset[campo3]"

      assert_select "input#dataset_campo4[name=?]", "dataset[campo4]"

      assert_select "input#dataset_campo5[name=?]", "dataset[campo5]"

      assert_select "input#dataset_campo6[name=?]", "dataset[campo6]"
    end
  end
end
