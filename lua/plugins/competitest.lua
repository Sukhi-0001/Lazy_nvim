return {
	'xeluxee/competitest.nvim',
	dependencies = 'MunifTanjim/nui.nvim',
	config = function() require('competitest').setup({
        compile_command = {
            c = { exec = "gcc", args = { "-Wall", "-g", "$(FNAME)", "-o", "$(FNOEXT).out" } },
            cpp = { exec = "g++", args = { "-Wall", "-g", "$(FNAME)", "-o", "$(FNOEXT).out" } },
            rust = { exec = "rustc", args = { "$(FNAME)" } },
            java = { exec = "javac", args = { "$(FNAME)" } },
        }
    }) 
    end,
}