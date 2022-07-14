LOCATIONS = [
    {
        "id": 1,
        "name": "North Nashville",
        "address": "7422 Central Pike"
    },
    {
        "id": 2,
        "name": "East Nashville",
        "address": "109 Riverside Drive"
    }
]


def get_all_locations():
    """Invoke function and returns list of locations"""
    return LOCATIONS

# Function with a single parameter


def get_single_location(id):
    """Function to locate single location, return the requested location"""
    # Variable to hold the found location, if it exists
    requested_location = None

    # Iterate the LOCATIONS list above. Very similar to the
    # for..of loops you used in JavaScript.
    for location in LOCATIONS:
        # Dictionaries in Python use [] notation to find a key
        # instead of the dot notation that JavaScript used.
        if location["id"] == id:
            requested_location = location
    return requested_location


def create_location(location):
    """Add location to list"""
    # Get the id value of the last location in the list
    max_id = LOCATIONS[-1]["id"]

    # Add 1 to whatever that number is
    new_id = max_id + 1

    # Add an `id` property to the location dictionary
    location["id"] = new_id

    # Add the location dictionary to the list
    LOCATIONS.append(location)

    # Return the dictionary with `id` property added
    return location

# Delete location from list


def delete_location(id):
    """Delete location from list"""
    # Initial -1 value for location index, in case one isn't found
    location_index = -1

    # Iterate the LOCATIONS list, but use enumerate() so that you
    # can access the index value of each item
    for index, location in enumerate(LOCATIONS):
        if location["id"] == id:
            # Found the location. Store the current index.
            location_index = index

    # If the location was found, use pop(int) to remove it from list
    if location_index >= 0:
        LOCATIONS.pop(location_index)

# Update location from list


def update_location(id, new_location):
    """Update location from list"""
    # Iterate the LOCATIONS list, but use enumerate() so that
    # you can access the index value of each item.
    for index, location in enumerate(LOCATIONS):
        if location["id"] == id:
            # Found the location. Update the value.
            LOCATIONS[index] = new_location
            break
