// Add Inventory Item form

function addInventoryItem(event) {
    event.preventDefault();

    const itemName = document.getElementById("itemName").value;
    const category = document.getElementById("category").value;
    const quantity = document.getElementById("quantity").value;

    const item = {
        itemName: itemName,
        category: category,
        quantity: quantity
    };

    console.log(item);
}

const inventoryForm = document.getElementById("inventoryForm");
if (inventoryForm) {
    inventoryForm.addEventListener("submit", addInventoryItem);
}
