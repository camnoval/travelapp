import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to My Travel App")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: MapView()) {
                    Text("View My Travel Map")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Spacer()
            }
            .navigationBarTitle("Home")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
