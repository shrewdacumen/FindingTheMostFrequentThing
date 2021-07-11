//
//  MultilineTextView.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 7/11/21.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    let didChange = PassthroughSubject<UserData, Never>()

    var text = "" {
        didSet {
            didChange.send(self)
        }
    }

    init(text: String) {
        self.text = text
    }
}

struct MultilineTextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

//struct ContentView : View {
//    @State private var selection = 0
//    @EnvironmentObject var userData: UserData
//
//    var body: some View {
//        TabbedView(selection: $selection){
//            MultilineTextView(text: $userData.text)
//                .tabItemLabel(Image("first"))
//                .tag(0)
//            Text("Second View")
//                .font(.title)
//                .tabItemLabel(Image("second"))
//                .tag(1)
//        }
//    }
//}
//
//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .environmentObject(UserData(
//                text: """
//                        Some longer text here
//                        that spans a few lines
//                        and runs on.
//                        """
//            ))
//
//    }
//}
//#endif
