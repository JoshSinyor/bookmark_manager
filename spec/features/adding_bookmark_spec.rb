# frozen_string_literal: true

feature 'Adding a bookmark' do
  scenario 'adds a bookmark' do
    visit '/'
    click_button 'Add Bookmark'
    fill_in :url, with: HACKER_TYPER_URL
    fill_in :title, with: HACKER_TYPER_TITLE
    click_button 'Save Bookmark'

    visit '/'
    expect(page).to have_link(HACKER_TYPER_TITLE, href: HACKER_TYPER_URL)
  end
end
