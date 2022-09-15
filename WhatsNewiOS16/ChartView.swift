//
//  ChartView.swift
//  WhatsNewiOS16
//
//  Created by Umer Khan on 15.09.2022.
//

import SwiftUI
import Charts

struct Sale: Identifiable {
    var id: String { UUID().uuidString }
    let month: String
    let revenue: Int

    static let dummyData = [
    Sale(month: "Jan", revenue: 95),
    Sale(month: "Feb", revenue: 66),
    Sale(month: "Mar", revenue: 58)
    ]
}

struct ChartView: View {
    var body: some View {
        Chart(Sale.dummyData) { sale in
            BarMark(x: .value("Month", sale.month), y: .value("Revenue", sale.revenue))
        }
        .foregroundColor(.red)
        .opacity(0.8)
        .padding()
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
