import SwiftUI

struct HomeScreen: View {
    @StateObject var viewModel: ViewModel
    @State var event: Action = .load

    var body: some View {
        NavigationView {
            ContentView(items: viewModel.items) { action in
                event = action
            }
            .task(id: event) {
                await viewModel.handleAction(event)
            }
            .navigationTitle("Catalog")
        }
    }
}

#Preview {
    HomeScreen(viewModel: HomeScreen.ViewModel())
}
