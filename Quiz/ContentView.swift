
import SwiftUI

struct ContentView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var timerStart: Bool
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("GradientColor1"), Color("GradientColor2"), Color("GradientColor3")], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .padding()
                Text("Quiz")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .bold()
                
                Text("Good luck!😉")
                    .foregroundColor(.white)
                Button {
                    timerStart = true
                    dismiss()
                } label: {
                    Text("Start")
                        .font(.title3)
                        .foregroundColor(.black)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .padding()
        }
    }
}

