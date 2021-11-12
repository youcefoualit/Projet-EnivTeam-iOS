import SwiftUI

struct SimpleProgressBar : View {
    
    @Binding var circleProgress: CGFloat
    
    var width: CGFloat
    var height: CGFloat
    var progressColor: Color?
    var staticColor: Color?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .foregroundColor(self.staticColor ?? .gray)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                
                VStack{
                    Spacer()
                    Rectangle()
                
                    
                        .foregroundColor(self.progressColor ?? .blue)
                    
                        .frame(width: geometry.size.width, height: circleProgress*geometry.size.height)
                }
            }
        }
        .frame(width: width, height: height)
    }
}
struct SimpleProgresBar_Previews: PreviewProvider {
    static var previews: some View {
        SimpleProgressBar(circleProgress: .constant(0.5), width: 50, height: 300, progressColor: .blue, staticColor: .gray)
    }
}
