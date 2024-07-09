# from pymongo import MongoClient

# print("Hello World")
# uri = "mongodb://root:regress@localhost:27017/admin?authSource=admin&authMechanism=SCRAM-SHA-1"
# # mongodb://localhost:27017/"
# client = MongoClient(uri)
# dbs = client.list_database_names()
# print(dbs)

# db = client["regress_db"]

# collections = db.list_collection_names()
# print(collections)

# for collection in collections:
#     print(collection)
#     print(db[collection].find_one())


# t = db[collections[0]].insert_one({"name": "test1", "value": "test1-1"})

# for collection in collections:
#     print(collection)
#     for document in db[collection].find():
#         print(document)


# print("========================================")
# key_to_check = "age"  # Replace 'your_key' with the key you're checking for

# # Query to find documents where the key exists
# documents_with_key = db[collection].find({key_to_check: {"$exists": True}})

# # Iterate through and print documents that contain the key
# for document in documents_with_key:
#     print(document)

from pymongo import MongoClient, errors


def create_collection_if_not_exists(db, collection_name):
    """Create collection if it doesn't exist by inserting a compliant dummy document."""
    collection = db[collection_name]
    if collection.count_documents({}) < 10:
        # Insert a compliant dummy document to create the collection
        collection.insert_one(
            {"name": "dummy1", "email": "dummy@example.com", "age": 0}
        )
        collection.insert_one(
            {"name": "dummy2", "email": "dummy@example.com", "age": 0}
        )
        collection.insert_one(
            {"name": "dummy3", "email": "dummy@example.com", "age": 220}
        )
        # collection.delete_one(
        #     {"name": "dummy2", "email": "dummy1@example.com", "age1": 1}
        # )


def create_schema_validation_and_unique_index():
    # Connection URI
    uri = "mongodb://root:regress@localhost:27017/admin?authSource=admin&authMechanism=SCRAM-SHA-1"

    # Create a MongoClient
    client = MongoClient(uri)

    # Select the database
    db = client["myDatabase2"]

    # Define the collection name
    collection_name = "users"

    # Ensure the collection exists
    create_collection_if_not_exists(db, collection_name)

    # Define the JSON Schema
    schema = {
        "bsonType": "object",
        "required": ["name", "email", "age"],  # List all required fields here
        "properties": {
            "name": {
                "bsonType": "string",
                "description": "must be a string and is required",
            },
            "email": {
                "bsonType": "string",
                "description": "must be a string and is required",
            },
            "age": {
                "bsonType": "int",
                "description": "must be an integer and is required",
            },
        },
    }

    try:
        # Apply the schema validation to the collection
        db.command(
            {
                "collMod": collection_name,
                "validator": {"$jsonSchema": schema},
                "validationLevel": "strict",
            }
        )
        print("Schema validation applied to 'users' collection")

        # Create a unique index on the 'name' field
        collection = db[collection_name]
        collection.create_index([("name", 1)], unique=False)
        print("Unique index created on 'name' field")

    except errors.DuplicateKeyError:
        print("Duplicate key error occurred")
    except Exception as e:
        print(f"An error occurred: {e}")
    finally:
        # Close the connection
        client.close()


if __name__ == "__main__":
    create_schema_validation_and_unique_index()
