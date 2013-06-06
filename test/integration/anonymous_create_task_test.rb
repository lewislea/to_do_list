require 'test_helper'

class AnonymousCreateTaskTest < ActionDispatch::IntegrationTest

test "creating new task" do
    visit '/'
    click_link 'Add Task'
    fill_in 'Task', with: 'do laundry'
    click_button 'Add Task'
    assert_include page.body, "Your task has been added!"
    visit '/tasks'
    assert_include page.body, 'do laundry'
end

end