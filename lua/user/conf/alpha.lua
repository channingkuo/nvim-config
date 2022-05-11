local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
    [[;;;;::::::::,,,,,,,,,,,,..............,,,,,::L0C000000000000000000000888GGLGGC800800CLffffffLLLLLLGG]],
    [[;;;::::::,,,,,,,,,,,,.................,,,.:,i08000000000000000000008CLf11111tLC800800GffffffffLLLLLG]],
    [[::::::,,,,,,,,,,,,,..................,,,,,,,i0C000000000000088088CL1iii;;;;itfLC808008ffffffffffLLLL]],
    [[::::::,,,,,,,,,,.....................,,,,,,;t0800000000008888888Gfi;;;;;;;;i1fLfC88000LttttfffffLLLL]],
    [[:::::,,,,,,,,......................,,,,,,,:;L08000000000888888CG1i:;;;:::;;;tttfC88000LttttffffffLLL]],
    [[:::,,,,,,,,,......................,,,,,,:::;G080000000000888CGfi;;::::::;;i11tLGC00000fttttttfffffLL]],
    [[::,,,,,,,,,.....................,,,,,,,::::iL08088800008888CLti;::;1tfft1ft1it8800080Cf1ttttttfffffL]],
    [[::,,,,,,,,......................,,,,,,:::::iL080888000888888f;;:::;;;;;i1ft;:1C080000Gt1ttttttffffff]],
    [[::,,,,,,,.....................,,,,,,,,:::;:;f080008888888888fi;;:::;1fLGL1::::f0C0008f1ttttttttfffff]],
    [[::,,,,,,.....................,,,,,,,,::::;;;f08088808CLtLGLLfii;:::::::;::::;fLtC000Gt1t1tttttttffff]],
    [[:::,,,,,..................,,,,,,,,,::::::;;it0800C80t1tft;1tt1ii;;::::::::iff1;1000C11t111tttttttfff]],
    [[:::,,,,,................,,,,,,,,,,:::::;;;;it08088800080LCCf11i;i;;::;i1tfti;1L88CLt11111111tttttfff]],
    [[;:::,,,,...........,,,,,,,,,,,,,,:::::;;;;;it0888000000080CGLt1111tftt1iii1ffLGCLft11111111111ttttff]],
    [[;::::,,,,,,....,,,,,,,,,,,,,,,,,:::::;;;;i;;t0C80800000000CGLLLft1;:::;;;;;iitGfft11i11111111111ttff]],
    [[;;::::,,,,,,,,,,,,,,,,,,,,,,::::::::;;;;;;;it0C880000000008Lt1iiiiii;;:::,:;1LGLf1i11ii111111111ttff]],
    [[;;;:::::,,,,,,,,,,,,,,,,:::::::::::;;;;;;;;i18C080000000888L1i;;;::;1tftffGGG88Cf11iii1iiiiiii11ttff]],
    [[i;;;::::::,,,,,,,,,,,:::::::::::;;;;;;;;iii1fC8880000000088Gti;;;;;;i1tfLCCf11t1iiiiiiiiiiiiiiii1tff]],
    [[ii;;;;::::::::::::::::::::::;;;;;;;;;;;;;iitLG88000000880GCGt1i;;;;;ittt1fGL1;;i;;iiiii;iiiiiiii1tff]],
    [[iii;;;;;;:::::::::::::::;;;;;;;;;;i;;;ii11tfLG800000008808G8ft1i;;;iii11ii11t1i;;;iii;;;;;;;;;ii1tff]],
    [[1iiii;;;;;;;;;;;:;;;;;;;;;;;;;;;;;;;i111111fLGC80000880C88fGfi1iiiiiiiiiiiiiiiiiii11i;;;;;;;i11ttfff]],
    [[111iiiii;;;;;;;;;;;;;;;;;;;i;;;;;;;111i1ii1tfGC88808GC08L8GLfi1;iiii;;;;;;iiiiiii11i;;;;;;i1ttttffff]],
    [[11111iiiiiii;;;;;;;iiiiiiiiii;;;:i1111iiii1tfGCC000CGGC8GGGLfi;i;;;;;;;;;;;iiiii11t1;;;;i11tttfffffL]],
    [[tt11111iiiiiiiiiiiiiiiiiiii;;;;::11111iiiiii111f808LffLC000Li;;;;;;;;;;;;;;;iiiitt1i;;;i11ttttfffffL]],
    [[tttt11111111iiiiiiiiiiiiiii;;;;:;111111iii;;;;;188Gt1111111i;i;;;;;;;;;;;;;i;;itti;;;;;ittttffffffLL]],
    [[fttttt11111111111iiiiiiiiii;;;;:;1t111iiiii;;;;ii1iii11i1iiii;;;;;;;;;;;;;;;;1tt;;;;;;;ittttfffffLLL]],
    [[fftttttt11111111111iiiiiiii;;;::;tt1111iiiii;ii;iiiiiiii;i;;;;;;;;;;;;;;;;ii1t1;:;;;;;i1ttffffffLLLL]],
    [[ffftttttttt11111111iiiiiii;;;;::itt1111iiiiiiiiiii11iii;;;;;;;;;;;;ii;;i1i1tti::::;:;iittffffffLLLLL]]
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Kuo"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
