return {
  "kiddos/gemini.nvim",
  opts = {
    -- Any other options you want to customize
  },
  config = function(_, opts)
    local gemini = require("gemini")
    
    -- Define your custom prompt
    local generate_commit_message = {
      name = "Generate commit message",
      command_name = "GeminiGenerateCommitMessage",
      menu = "Generate Commit Message 🛠️",
      get_prompt = function()
        local diff = vim.fn.system("git diff --staged")
        if diff == "" then
          return "No staged changes found. Stage your changes with `git add` first."
        end
        return string.format(
          "Here are the staged changes:\n\n```diff\n%s\n```\n\nWrite a commit message using the commitizen convention. The title must be at most 50 characters, and the body wrapped at 72 characters. Write in Portuguese (pt-BR). Wrap the whole message in a code block with language gitcommit.",
          diff
        )
      end,
    }

    -- Append your prompt to default instruction prompts
    opts.instruction = opts.instruction or {}
    opts.instruction.prompts = opts.instruction.prompts or {}
    table.insert(opts.instruction.prompts, generate_commit_message)

    -- Setup plugin with modified options
    gemini.setup(opts)
  end,
}
