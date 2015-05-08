require 'rails_helper'

RSpec.describe "datasets/show", type: :view do
  before(:each) do
    @dataset = assign(:dataset, Dataset.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Mi Url/)
    expect(rendered).to match(/Bloque/)
    expect(rendered).to match(/Campo1/)
    expect(rendered).to match(/Campo2/)
    expect(rendered).to match(/Campo3/)
    expect(rendered).to match(/Campo4/)
    expect(rendered).to match(/Campo5/)
    expect(rendered).to match(/Campo6/)
  end
end
