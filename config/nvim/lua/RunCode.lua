local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

local Terminal = require("toggleterm.terminal").Terminal

local c = Terminal:new({ cmd = "gcc main.c && ./a.out", hidden = true, close_on_exit = false })

function _RUN_C()
    c:toggle()
end

local go = Terminal:new({ cmd = "go run main.go", hidden = true, close_on_exit = false })

function _RUN_GO()
    go:toggle()
end

local py = Terminal:new({ cmd = "python3 main.py", hidden = true, close_on_exit = false })

function _RUN_PYTHON()
    py:toggle()
end
