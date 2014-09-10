require 'spec_helper'

describe "Mains" do

  describe "index" do

    it "に’XAPP7'という文字が含まれている" do
      visit root_path
      expect(page).to have_content('XAPP7')
    end
  end
end