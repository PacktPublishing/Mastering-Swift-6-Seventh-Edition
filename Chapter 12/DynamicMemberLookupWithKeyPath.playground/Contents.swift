import Cocoa

var greeting = "Hello, playground"

struct Address {
    let street: String
    let city: String
    let state: String
    let zipCode: Int
}

struct User {
    let firstName: String
    let lastName: String
    let age: Int
    let address: Address
}

@dynamicMemberLookup
struct UserProfile {
    let user: User
    
    subscript<T>(dynamicMember keyPath: KeyPath<User, T>) -> T {
        user[keyPath: keyPath]
    }


    subscript<T>(dynamicMember keyPath: KeyPath<Address, T>) -> T {
        user.address[keyPath: keyPath]
    }
}

let address = Address(street: "123 My Road", city: "Cupertino", state: "Ca", zipCode: 95014)
let user = User(firstName: "Jon", lastName: "Hoffman", age: 56, address: address)
let profile = UserProfile(user: user)

print(profile.firstName)
print(profile.lastName)
print(profile.age)

print(profile.street)
print(profile.city)

print(user.firstName)
print(user.address.street)
print(user.address.city)
