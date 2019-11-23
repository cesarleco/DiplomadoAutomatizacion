class Assert

  def validate_url(driver, expected_url)
    result = false
    if driver.current_url.eql?(expected_url)
      result = true
    end
    result
  end

  def compare_text(text, expected)
    result = false
    if text.eql?(expected)
      result = true
    end
    result
  end
end