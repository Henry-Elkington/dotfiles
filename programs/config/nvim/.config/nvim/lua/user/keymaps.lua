--  Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- better window navigation
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

-- resize with arrows
keymap("n", "<c-up>", ":resize -2<cr>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize +2<cr>", opts)

-- navigate buffers
keymap("n", "<s-l>", ":bnext<cr>", opts)
keymap("n", "<s-h>", ":bprevious<cr>", opts)

-- clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<cr>", opts)

-- close buffers
keymap("n", "<s-q>", "<cmd>bdelete!<cr>", opts)

-- better paste
keymap("v", "p", '"_dp', opts)

-- insert --
-- press jk fast to enter
keymap("i", "jk", "<esc>", opts)

-- visual --
-- stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)
keymap("v", "<s-tab>", "<gv", opts)
keymap("v", "<tab>", ">gv", opts)

-- Plugins --
local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  -- NvimTree
  keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

  -- Telescope
  keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
  keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
  keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
  keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

  -- Git
  keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

  -- Comment
  keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
  keymap("x", "<leader>/", "<ESC><CMD>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", opts)

  -- DAP
  keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
  keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
  keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
  keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
  keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
  keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
  keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
  keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
  keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
else
  wk.register({
    ["<leader>"] = {
      b = { "<cmd>WhichKey<cr>", "Key Bindings"},
      e = { "<cmd>NvimTreeToggle<cr>", "File Tree" },
      l = { "<cmd>Lspinstallinfo<cr>", "Install Lsp" },
      f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        t = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
        p = { "<cmd>Telescope projects<cr>", "Projects" },
        b = { "<cmd>Telescope buffers<cr>", "Buffers" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        n = { "<cmd>enew<cr>", "New File" },
      },
      d = {
        name = "Debug",
        b = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoiint" },
        c = {"<cmd>lua require'dap'.continue()<cr>", "Continue" },
        i = {"<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
        o = {"<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
        O = {"<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
        r = {"<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
        l = {"<cmd>lua require'dap'.run_last()<cr>", "Run Last" },
        u = {"<cmd>lua require'dapui'.toggle()<cr>", "Toggle Dapui" },
        t = {"<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
      },
    },
  })
end

