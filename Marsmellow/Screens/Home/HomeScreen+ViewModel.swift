import Foundation

extension HomeScreen {
    enum Action: Equatable {
        case load
        case fetchMore
        case didSelectItem(MarsBlock)
    }

    class ViewModel: ObservableObject {
        @Published var items: [MarsBlock] = []

        @MainActor
        func handleAction(_ action: Action) async {
            switch action {
            case .load:
                items = .fixture()
            case .fetchMore:
                break
            case .didSelectItem(let model):
                print(model.id)
            }
        }

    }
}
