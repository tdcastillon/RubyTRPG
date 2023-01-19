require_relative "../clear_screen"

def calc_pages(inventory)
    pages = (inventory.size / 5.0).ceil
    return pages
end

def create_items_pages(inventory, pages)
    items_pages = []
    i = 0
    while i < pages
        items_pages.push(inventory[i * 5, 5])
        i += 1
    end
    return items_pages
end

def display_multiple_pages(inventory, pages, n)
    clear_screen
    puts "Inventory"
    items_pages = create_items_pages(inventory, pages)
    i = 1
    items_pages[n].each { |inventory_item|
        puts "#{i} #{inventory_item.keys[0].getName} x#{inventory_item[inventory_item.keys[0]]}"  
        i += 1
    }
    if n != 0
        puts "#{i} Previous page"
        i += 1
    end
    if n != items_pages.size - 1
        puts "#{i} Next page"
    end
    puts "#{i + 1} Quit Inventory"
    puts "Select an item"
    user = gets.chomp.to_i
    case user
    when 1..items_pages[n].size
        return user
    when items_pages[n].size + 1
        display_multiple_pages(inventory, pages, n - 1)
    when items_pages[n].size + 2
        display_multiple_pages(inventory, pages, n + 1)
    when items_pages[n].size + 3
        return 0
    else
        puts "Invalid input"
        sleep(1)
        display_multiple_pages(inventory, pages, n)
    end
end

def display_unique_page(inventory)
    clear_screen
    puts "Inventory"
    i = 1
    inventory.each { |inventory_item|
        puts "#{i} #{inventory_item.keys[0].getName} x#{inventory_item[inventory_item.keys[0]]}"
        i += 1
    }
    puts "#{i} Quit Inventory"
    puts "Select an item"
    user = gets.chomp.to_i
    invetory_size = inventory.size
    case user
    when 1..invetory_size
        return user
    when invetory_size + 1
        return 0
    else
        puts "Invalid input"
        sleep(1)
        display_unique_page(inventory)
    end
end

def Inventory(inventory)
    pages = calc_pages(inventory)
    if pages == 1
        display_unique_page(inventory)
    else
        display_multiple_pages(inventory, pages)
    end
end