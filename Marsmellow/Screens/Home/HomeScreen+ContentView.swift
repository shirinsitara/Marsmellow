import SwiftUI

extension HomeScreen {
    struct ContentView: View {
        let items: [MarsBlock]
        let event: (Action) -> Void

        var body: some View {
            ScrollView {
                ForEach(items, id: \.id) { item in
                    CardView(item: item, buttonIcon: "arrowshape.right") {
                        event(.didSelectItem(item))
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    HomeScreen.ContentView(items: .fixture()) { _ in
        print("Action happened")
    }
}

struct CardView: View {
    let item: MarsBlock
    let buttonIcon: String
    let action: () -> Void

    var body: some View {
        VStack {
            HStack {
                Text(item.camera.name)
                Spacer()
                Button(action: action) {
                    Image(systemName: buttonIcon)
                        .foregroundColor(.black)
                }
            }
            AsyncImage(url: URL(string: item.imageURL),
                       content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            },
            placeholder: {
                ProgressView()
            })
            .cornerRadius(20)
        }
    }
}
