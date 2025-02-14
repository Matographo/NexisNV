return {
    {
        "sainnhe/gruvbox-material",
        lazy = false, -- Direkt laden
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_background = "hard" -- Optionen: "soft", "medium", "hard"
        end
    }
}
