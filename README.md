This script adds a fully functional grocery store to your server, allowing players to interact with a shopkeeper NPC, view and purchase grocery items, and manage their inventory in a seamless way. The script is designed for QBCore framework, providing an immersive experience for users within a grocery store setting.

Features
Grocery Store Menu: Displays a list of grocery items with their respective prices in a menu format.
Purchase System: Allows players to purchase items from the grocery store by clicking the items in the menu.
Shopkeeper NPC: A shopkeeper NPC is present at the store, which can be interacted with to open the shop menu.
Configurable Items and Prices: Easily modify or expand the list of grocery items and their prices in the script.

Installation
To add this grocery store script to your server, follow the steps below:

Clone the repository or download the script files.
Place the script files in your server's resources folder.
Add the following to your server.cfg to ensure the script is started:
plaintext
Copy code
start [your-script-folder-name]
Ensure that you have the necessary dependencies (qb-core, qb-target, qb-menu) installed and properly set up on your server.

Configuration
The grocery store items and their prices are stored in the GroceryItems table. You can easily modify the list to add or remove items, and update their prices. Example:

lua
Copy code
local GroceryItems = {
    {name = 'bread', label = 'Bread', price = 5},
    {name = 'water', label = 'Water Bottle', price = 3},
    {name = 'milk', label = 'Milk', price = 4},
    {name = 'apple', label = 'Apple', price = 2},
}


Modifying the Store Location:
The grocery store's position is set by the coordinates vector3(373.875, 325.896, 103.566). You can change these values to move the store to a different location within your server.

Customizing the Shopkeeper:
You can also modify the shopkeeper NPC's appearance and behavior by changing the model used or by adding additional animations. The default shopkeeper model used in this script is mp_m_shopkeep_01.

Usage
Once the script is installed and configured, players can interact with the grocery store by approaching the marked zone (defined in the script) and clicking to open the store menu. The grocery store menu will display available items and their prices. Players can then choose to purchase items directly from the menu.

To interact with the shopkeeper NPC, players simply need to approach and press the assigned interaction key to open the store's menu.

Dependencies
qb-core: The core framework for your server.
qb-target: For the interaction system with the NPC.
qb-menu: For the in-game menu used to display items for purchase.

License
This project is licensed under the MIT License - see the LICENSE file for details.
