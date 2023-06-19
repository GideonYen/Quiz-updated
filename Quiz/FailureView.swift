import SwiftUI

struct FailureView: View {
    @Binding var pointsAchieved: Int
    @Binding var index: Int
    @Environment(\.dismiss) var dismiss
    @Binding var timer: Bool
    var body: some View {
        Text("You got \(pointsAchieved) out of \(questions.count)!")
            .font(.title)
            .multilineTextAlignment(.center)
            .padding()
        if pointsAchieved <= 4 {
            Text("Better up and come back you noob!")
                .font(.subheadline)
            Text("Try again if you got balls...")
                .font(.system(size: 10))
        } else {
            Text("Good job! 👍🏻")
                .font(.subheadline)
        }
        Button {
            index = 0
            pointsAchieved = 0
            dismiss()
            timer = true
        } label: {
            Text("Restart if you are ready")
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        Button {
            exit(0)
        } label: {
            Text("Exit app")
        }
        .padding()
        .background(Color("lightGray"))
        .foregroundColor(.blue)
        .cornerRadius(10)
    }
}

