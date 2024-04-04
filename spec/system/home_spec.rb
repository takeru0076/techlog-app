require 'rails_helper'

RSpec.describe 'Homes', type: :system do
  before do
    driven_by :selenium_chrome_headless
  end

  describe 'トップページの検証' do
    it 'Home#topという文字列が表示される' do
      visit '/'

      expect(page).to have_content('Home#top')
    end
  end
end
