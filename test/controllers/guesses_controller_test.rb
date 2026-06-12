require "test_helper"

class GuessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guess = guesses(:one)
  end

  test "should get index" do
    get guesses_url
    assert_response :success
  end

  test "should get new" do
    get new_guess_url
    assert_response :success
  end

  test "should create guess" do
    assert_difference("Guess.count") do
      post guesses_url, params: { guess: { game_id: @guess.game_id, grouping_id: @guess.grouping_id, word_1: @guess.word_1, word_2: @guess.word_2, word_3: @guess.word_3, word_4: @guess.word_4 } }
    end

    assert_redirected_to guess_url(Guess.last)
  end

  test "should show guess" do
    get guess_url(@guess)
    assert_response :success
  end

  test "should get edit" do
    get edit_guess_url(@guess)
    assert_response :success
  end

  test "should update guess" do
    patch guess_url(@guess), params: { guess: { game_id: @guess.game_id, grouping_id: @guess.grouping_id, word_1: @guess.word_1, word_2: @guess.word_2, word_3: @guess.word_3, word_4: @guess.word_4 } }
    assert_redirected_to guess_url(@guess)
  end

  test "should destroy guess" do
    assert_difference("Guess.count", -1) do
      delete guess_url(@guess)
    end

    assert_redirected_to guesses_url
  end
end
