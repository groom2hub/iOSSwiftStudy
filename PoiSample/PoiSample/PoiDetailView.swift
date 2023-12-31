//
//  PoiDetailView.swift
//  PoiSample
//
//  Created by 최준혁 on 2023/07/16.
//

import SwiftUI
import MapKit

struct PoiDetailView: View {
    let item: PoiItem
    @State var region: MKCoordinateRegion
    let center: CLLocationCoordinate2D
    init(item: PoiItem) {
        self.item = item
        let lat = CLLocationDegrees(item.REFINE_WGS84_LAT) ?? 0
        let lng = CLLocationDegrees(item.REFINE_WGS84_LOGT) ?? 0
        center = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        self.region = MKCoordinateRegion(center: center, span: span)
    }
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                PropertyView(img: "tram.circle") {
                    Text(item.SIGUN_NM)
                }
                PropertyView(img: "location.circle") {
                    Text(item.SIGUN_CD)
                }
                PropertyView(img: "fork.knife.circle") {
                    Text(item.REPRSNT_FOOD_NM)
                }
                PropertyView(img: "house.circle") {
                    Text(item.REFINE_ROADNM_ADDR)
                }
                PropertyView(img: "phone.circle") {
                    Button {
                        let us = "tel://\(item.TASTFDPLC_TELNO)"
                        guard let url = URL(string: us) else {
                            return
                        }
                        UIApplication.shared.open(url)
                    } label: {
                        Text(item.TASTFDPLC_TELNO)
                    }
                }
                Map(coordinateRegion: $region, annotationItems:[item]) { item in
                    MapMarker(
                        coordinate: item.location,
                        tint: .blue
                    )
                }
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
            }
        }
        .navigationTitle(item.RESTRT_NM)
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension PoiItem: Identifiable {
    var id: String { RESTRT_NM }
    var location: CLLocationCoordinate2D {
        let lat = CLLocationDegrees(self.REFINE_WGS84_LAT) ?? 0
        let lng = CLLocationDegrees(self.REFINE_WGS84_LOGT) ?? 0
        return CLLocationCoordinate2D(latitude: lat, longitude: lng)
    }
}

struct PropertyView<Content: View>: View {
    let img: String
    let content: ()->Content
    var body: some View {
        HStack {
            Image(systemName: img)
                .resizable()
                .frame(width: 32, height: 32)
            content()
        }
    }
}

struct PoiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PoiDetailView(item: load())
        }
    }
    static func load() -> PoiItem {
        return try! JSONDecoder().decode(
            PoiItem.self,
            from: json.data(using: .utf8)!
        )
    }
    static let json = """
    {
              "SIGUN_NM": "안산시",
              "SIGUN_CD": "41270",
              "RESTRT_NM": "해미청",
              "REPRSNT_FOOD_NM": "해물찜",
              "TASTFDPLC_TELNO": "031-438-7789",
              "RM_MATR": null,
              "REFINE_LOTNO_ADDR": "경기도 안산시 상록구 본오동 778-1번지",
              "REFINE_ROADNM_ADDR": "경기도 안산시 상록구 각골로 47",
              "REFINE_ZIP_CD": "15549",
              "REFINE_WGS84_LOGT": "126.8722885",
              "REFINE_WGS84_LAT": "37.29377283"
            }
    """
}
