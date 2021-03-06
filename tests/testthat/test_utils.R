test_that("list checking", {
    expect_true(is_normal_list(list(1, 2)))
    expect_true(is_normal_list(list(1, NA)))
    expect_true(is_normal_list(list(1, list(NULL))))
    expect_false(is_normal_list(list(character(0))))
    expect_false(is_normal_list(list(NULL)))
    expect_false(is_normal_list(list(1, NULL)))
    expect_false(is_normal_list(list(1, character(0))))
    expect_false(is_normal_list(list(1, list())))
    expect_false(is_normal_list(list(1, list(1))))

    expect_equal(standardize_ver(1)[, 2], numeric_version(0))
    expect_equal(standardize_ver("a"), numeric_version(NA, strict = FALSE))
    expect_equal(standardize_ver("1.1.1.1"), numeric_version("1.1.1", strict = FALSE))
    expect_equal(standardize_ver("1.1.1.1", complete = TRUE), numeric_version("1.1.1", strict = FALSE))
    expect_equal(standardize_ver("1.1", complete = TRUE), numeric_version("1.1.0"))
})
