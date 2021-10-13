local present, ts = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

ts.setup
{
    ensure_installed = {
        "c_sharp",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },
}
