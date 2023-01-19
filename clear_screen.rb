def clear_screen
    Gem.win_platform? ? (system "cls") : (system "clear")
end