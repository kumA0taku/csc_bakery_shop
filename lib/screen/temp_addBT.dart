
  // recent orders -> show last 3
  Expanded(
    child: Consumer<CartModel>(
      builder: (context, value, child) {
        return GridView.builder(
          padding: const EdgeInsets.all(12),
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: value.shopItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1 / 1.2,
          ),
          itemBuilder: (context, index) {
            return GroceryItemTile(
              itemName: value.shopItems[index][0],
              itemPrice: value.shopItems[index][1],
              imagePath: value.shopItems[index][2],
              color: value.shopItems[index][3],
              onPressed: () =>
                  Provider.of<CartModel>(context, listen: false)
                      .addItemToCart(index),
            );
          },
        );
      },
    ),
  ),