import Foundation

extension MarsBlock {
    static func fixture(
        id: String = "12e",
        camera: Camera = .fixture(),
        sol: Int = 362,
        earthDate: Date = .init(timeIntervalSince1970: 290),
        rover: Rover = .fixture(),
        imageURL: String = "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00050/opgs/edr/fcam/FRA_401936576EDR_F0042956FHAZ00305M_.JPG"
    ) -> Self {
        .init(
            id: id,
            camera: camera,
            sol: sol,
            earthDate: earthDate,
            rover: rover,
            imageURL: imageURL
        )
    }
}

extension MarsBlock.Camera {
    static func fixture(
        name: String = "HD Camera",
        fullName: String = "Highest Display Camera"
    ) -> Self {
        .init(name: name, fullName: fullName)
    }
}

extension MarsBlock.Rover {
    static func fixture(
        id: String = "daa",
        name: String = "My Rover",
        status: String = "Active"
    ) -> Self {
        .init(id: id, name: name, status: status)
    }
}

extension Array where Element == MarsBlock {
    static func fixture() -> Self {
        [
            .fixture(id: "eefe"),
            .fixture(id: "sswe", imageURL: "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00050/opgs/edr/fcam/FLA_401936576EDR_F0042956FHAZ00305M_.JPG"),
            .fixture(id: "nmx", imageURL: "http://mars.jpl.nasa.gov/msl-raw-images/msss/00050/mcam/0050ML0002300110102159E01_DXXX.jpg"),
            .fixture(id: "etna", imageURL: "http://mars.jpl.nasa.gov/msl-raw-images/msss/00050/mcam/0050ML0002300100102158E04_DXXX.jpg")
        ]
    }
}
