# Linked-Lists

This project provides a fully functional implementation of a singly linked list data structure in pure Ruby. It showcases essential operations such as appending, prepending, inserting at specific indices, popping elements, and more — all without relying on Ruby’s built-in array or list functionalities.

📁 Project Structure
graphql
Copy
Edit
Linked-Lists/
├── lib/
│   ├── linked-list.rb   # Contains the Node and LinkedList class definitions.
│   └── main.rb          # Entry point: requires 'linked-list.rb', creates a LinkedList instance, and performs operations.
📦 lib/linked-list.rb
Defines the core classes:

Node class: Represents a single node, storing a value and a reference to the next node.

LinkedList class: Manages node connections and provides methods for:

append(value) – Add a node to the end

prepend(value) – Add a node to the beginning

size – Return the number of nodes

head / tail – Return first/last node

at(index) – Return node at specific index

pop – Remove the last node

contains?(value) – Check if a value exists in the list

find(value) – Return index of the node containing the value

insert_at(value, index) – Insert a node at a specific index

to_s – Nicely format the list as a string

🧪 lib/main.rb
Serves as the execution script:

Instantiates a LinkedList

Adds and manipulates nodes

Demonstrates the capabilities of each method