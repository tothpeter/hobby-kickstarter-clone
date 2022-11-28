# frozen_string_literal: true

module SystemTestHelpers
  def click_first_link(*args)
    click_link(*args, match: :first)
  end

  def click_first_button(*args)
    click_button(*args, match: :first)
  end

  def expect_user_landed_on(path)
    expect(page).to have_current_path(path, ignore_query: true)
  end
end
