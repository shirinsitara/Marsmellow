import Foundation

struct MarsBlock: Identifiable, Equatable {
    let id: String
    let camera: Camera
    let sol: Int
    let earthDate: Date
    let rover: Rover
    let imageURL: String
}

extension MarsBlock {

    struct Camera: Equatable {
        let name: String
        let fullName: String
    }

    struct Rover: Equatable {
        let id: String //ids are generally strings
        let name: String
        let status: String
    }
}
