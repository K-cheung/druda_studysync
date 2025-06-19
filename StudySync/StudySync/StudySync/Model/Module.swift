/*
    Module is a model that represents a module.
    Each module contains:
    - unique identifier
    - module name
    - list of topics in module
*/

struct Module: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var topics: [Topic]
}
