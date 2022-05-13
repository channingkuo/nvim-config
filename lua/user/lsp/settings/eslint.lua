return {
  cmd = { "vscode-eslint-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
--   handlers = {
-- 	["eslint/confirmESLintExecution"] = <function 1>,
-- 	["eslint/noLibrary"] = <function 2>,
-- 	["eslint/openDoc"] = <function 3>,
-- 	["eslint/probeFailed"] = <function 4>
--   },
  settings = {
	codeAction = {
	  disableRuleComment = {
		enable = true,
		location = "separateLine"
	  },
	  showDocumentation = {
		enable = true
	  }
	},
	codeActionOnSave = {
	  enable = false,
	  mode = "all"
	},
	format = true,
	nodePath = "",
	onIgnoredFiles = "off",
	packageManager = "npm",
	quiet = false,
	rulesCustomizations = {},
	run = "onType",
	useESLintClass = false,
	validate = "on",
	workingDirectory = {
	  mode = "location"
	}
  }
}

