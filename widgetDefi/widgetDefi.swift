//
//  widgetDefi.swift
//  widgetDefi
//
//  Created by mac06 on 05/11/2021.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct widgetDefiEntryView : View {
    var entry: Provider.Entry
    var puissance:Int = 200

    var body: some View {
        
        
        
        
        VStack{
            Spacer()
            //Text(entry.date, style: .time)
            Text("Puissance consommée").font(.system(size:10))
            HStack{
            Text(puissance.description).font(.system(size:14)).bold()
                Text("KWh").font(.system(size:14)).bold()
                
            }
            HStack{
               
                ContentView(power: ConvertirPuissance())
                
            }
            HStack{
            Text("🤼‍♀️ ")
                Text(equipeAdversaire())}.background(Color.gray).font(.system(size: 14))
        }.background(Color.gray).edgesIgnoringSafeArea(.all)//fin de VStack
    }
}


/*************************************************************************************************************************************/
// Structure

//fonction
func ConvertirPuissance() -> Float{
    @State var maxPuissance : Float = 280
    @State var actuPuissance : Float = 230
    
    return actuPuissance/maxPuissance
}

//Equipe Actuelle
func equipeAdversaire() -> String{
    @State var equipeNom: String = "Equipe Fellins"
    return equipeNom
}

//Couleur de circle
func CouleurCircle() ->Color{
    if(ConvertirPuissance() <= 0.5){
        return Color.green
    }
    else{
        return Color.red}
}


@main
struct widgetDefi: Widget {
    let kind: String = "widgetDefi"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            widgetDefiEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct widgetDefi_Previews: PreviewProvider {
    static var previews: some View {
        widgetDefiEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}


struct EnivTWEntryView : View {
    var entry: Provider.Entry
    var puissance:Int

    var body: some View {
        
        
        
        
        VStack{
            Spacer()
            //Text(entry.date, style: .time)
            Text("Puissance consommée").font(.system(size:10))
            HStack{
            Text(puissance.description).font(.system(size:14)).bold()
                Text("KWh").font(.system(size:14)).bold()
                
            }
            HStack{
               
                ContentView(power: ConvertirPuissance())
                
            }
            HStack{
            Text("🤼‍♀️ ")
                Text(equipeAdversaire())}.background(Color.gray).font(.system(size: 14))
        }.background(Color.gray).edgesIgnoringSafeArea(.all)//fin de VStack
    }
}



//*****$$Structure ajouté
struct ContentView: View {
    @State var power: Float = 0.28
    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                ProgressBar(ProgressBar: self.$power).frame(width: 50, height: 60)
                Spacer()
                
                
            }
            
        }
        
    }
    
}//fin de struct

struct ProgressBar: View{
    @Binding var ProgressBar: Float
    
    var body: some View{
        ZStack{
            Circle().stroke(lineWidth: 20)
                .opacity(0.3).foregroundColor(Color.red)
            Circle().trim(from: 0, to: CGFloat(min(self.ProgressBar,1.0)))
                .stroke(lineWidth: 20).opacity(1).foregroundColor(Color.red)
               .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
            Text(String(format: "  %.0f %%", min(self.ProgressBar, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
        
    }

}//fin de progressBar

