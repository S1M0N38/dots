return {
  {
    dir = "/Users/simo/Developer/dante.nvim",
    event = "VeryLazy",

    -- Not required but improve upon built-in diff view with char diff
    dependencies = {
      {
        "rickhowe/diffchar.vim",
        keys = {
          { "[z", "<Plug>JumpDiffCharPrevStart", desc = "Previous diff", silent = true },
          { "]z", "<Plug>JumpDiffCharNextStart", desc = "Next diff", silent = true },
          { "do", "<Plug>GetDiffCharPair", desc = "Obtain diff", silent = true },
          { "dp", "<Plug>PutDiffCharPair", desc = "Put diff", silent = true },
        },
      },
    },

    opts = {

      -- Multiple presets
      presets = {
        -- name of the preset
        thesis = {
          model = "gpt-4-1106-preview", -- best model but more expensive
          temperature = 0, -- reduced creativity
          prompt = "You are tasked as an assistant primarily responsible for rectifying errors within English text. Please amend spelling inaccuracies and augment grammar; ensure that the refined text closely adheres to the original version. Given that the text is authored in LaTeX intended for a master's thesis, please abide by the LaTeX syntax accordingly. Eschew informal expressions and choose terminology appropriate for a scientific manuscript. Provide your corrections in the form of the enhanced text only, devoid of commentary. Maintain the integrity of the original text's new lines and the spacing.", -- system prompt
        },
        blog = {
          model = "gpt-4-1106-preview",
          temperature = 0.3,
          prompt = "You are tasked as an assistant primarily responsible for rectifying errors within English text. Please amend spelling inaccuracies and augment grammar; ensure that the refined text closely adheres to the original version. Given that the text is authored in Markdown intended for a Blog, please abide by the Markdown syntax accordingly. Provide your corrections in the form of the enhanced text only, devoid of commentary. Maintain the integrity of the original text's new lines and the spacing.", -- system prompt
        },
        readme = {
          model = "gpt-4-1106-preview",
          temperature = 0.3,
          prompt = "You are tasked as an assistant primarily responsible for rectifying errors within English text. Please amend spelling inaccuracies and augment grammar; ensure that the refined text closely adheres to the original version. Given that the text is authored in Markdown intended for a README, please abide by the Markdown syntax accordingly. Provide your corrections in the form of the enhanced text only, devoid of commentary. Maintain the integrity of the original text's new lines and the spacing.", -- system prompt
        },
      },

      -- Diff options
      diffopt = { "internal", "filler", "closeoff", "algorithm:patience", "followwrap" },
    },
  },
}
