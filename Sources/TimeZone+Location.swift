//
//  TimeZones.swift
//  TimeZones
//
//  Created by Tibor Bödecs on 2017. 09. 27..
//  Copyright © 2017. Tibor Bödecs. All rights reserved.
//

import Foundation


protocol TimeZoneCoordinateRepresentable: RawRepresentable, CaseIterable {
    var identifier: String { get }
    var coordinate: Coordinate { get }
}

extension TimeZoneCoordinateRepresentable where Self.RawValue == String {
    var identifier: String { return self.rawValue }
    var coordinate: Coordinate { return TimeZone.knownTimeZoneCoordinates[self.rawValue]! }
}

public extension TimeZone {

    public static var local: TimeZone {
        return TimeZone(identifier: NSTimeZone.local.identifier)!
    }

    public static var system: TimeZone {
        return TimeZone(identifier: NSTimeZone.system.identifier)!
    }
    
    //created from TimeZone.knownTimeZoneIdentifiers
    public static var knownTimeZoneCoordinates: [String: Coordinate] = [
        "GMT": Coordinate(latitude: -15.706_518_6, longitude: -47.905_952_3),
    
        "Africa/Abidjan": Coordinate(latitude: 5.359_951_7, longitude: -4.008_256_3),
        "Africa/Accra": Coordinate(latitude: 5.603_716_8, longitude: -0.186_964_4),
        "Africa/Addis_Ababa": Coordinate(latitude: 8.980_603_4, longitude: 38.757_760_5),
        "Africa/Algiers": Coordinate(latitude: 36.752_887, longitude: 3.042_048),
        "Africa/Asmara": Coordinate(latitude: 15.322_876_7, longitude: 38.925_051_7),
        "Africa/Bamako": Coordinate(latitude: 12.639_231_6, longitude: -8.002_889_2),
        "Africa/Bangui": Coordinate(latitude: 4.394_673_5, longitude: 18.558_189_9),
        "Africa/Banjul": Coordinate(latitude: 13.454_876_1, longitude: -16.579_032_3),
        "Africa/Bissau": Coordinate(latitude: 11.881_655_3, longitude: -15.617_794_2),
        "Africa/Blantyre": Coordinate(latitude: -15.766_670_7, longitude: 35.016_786_6),
        "Africa/Brazzaville": Coordinate(latitude: -4.263_359_7, longitude: 15.242_885_3),
        "Africa/Bujumbura": Coordinate(latitude: -3.361_378, longitude: 29.359_878_2),
        "Africa/Cairo": Coordinate(latitude: 30.044_419_6, longitude: 31.235_711_6),
        "Africa/Casablanca": Coordinate(latitude: 33.573_110_4, longitude: -7.589_843_4),
        "Africa/Ceuta": Coordinate(latitude: 35.889_387_4, longitude: -5.321_345_5),
        "Africa/Conakry": Coordinate(latitude: 9.641_185_5, longitude: -13.578_401_2),
        "Africa/Dakar": Coordinate(latitude: 14.764_504_2, longitude: -17.366_028_6),
        "Africa/Dar_es_Salaam": Coordinate(latitude: -6.792_354, longitude: 39.208_328_4),
        "Africa/Djibouti": Coordinate(latitude: 11.825_138, longitude: 42.590_275),
        "Africa/Douala": Coordinate(latitude: 4.051_056_4, longitude: 9.767_868_7),
        "Africa/El_Aaiun": Coordinate(latitude: 27.125_286_7, longitude: -13.162_500_5),
        "Africa/Freetown": Coordinate(latitude: 8.465_676_5, longitude: -13.231_722_5),
        "Africa/Gaborone": Coordinate(latitude: -24.628_207_9, longitude: 25.923_147_1),
        "Africa/Harare": Coordinate(latitude: -17.825_165_7, longitude: 31.033_51),
        "Africa/Johannesburg": Coordinate(latitude: -26.204_102_8, longitude: 28.047_305_1),
        "Africa/Juba": Coordinate(latitude: 4.859_363, longitude: 31.571_25),
        "Africa/Kampala": Coordinate(latitude: 0.347_596_4, longitude: 32.582_519_7),
        "Africa/Khartoum": Coordinate(latitude: 15.500_654_4, longitude: 32.559_899_4),
        "Africa/Kigali": Coordinate(latitude: -1.970_578_6, longitude: 30.104_428_8),
        "Africa/Kinshasa": Coordinate(latitude: -4.441_931_1, longitude: 15.266_293_1),
        "Africa/Lagos": Coordinate(latitude: 6.524_379_3, longitude: 3.379_205_7),
        "Africa/Libreville": Coordinate(latitude: 0.416_197_6, longitude: 9.467_267_6),
        "Africa/Lome": Coordinate(latitude: 6.172_496_9, longitude: 1.231_361_8),
        "Africa/Luanda": Coordinate(latitude: -8.839_987_6, longitude: 13.289_436_8),
        "Africa/Lubumbashi": Coordinate(latitude: -11.687_602_6, longitude: 27.502_617_4),
        "Africa/Lusaka": Coordinate(latitude: -15.387_525_9, longitude: 28.322_816_5),
        "Africa/Malabo": Coordinate(latitude: 3.750_411_8, longitude: 8.737_103_9),
        "Africa/Maputo": Coordinate(latitude: -25.891_968, longitude: 32.605_135_1),
        "Africa/Maseru": Coordinate(latitude: -29.363_218_8, longitude: 27.514_360_3),
        "Africa/Mbabane": Coordinate(latitude: -26.305_448_2, longitude: 31.136_671_5),
        "Africa/Mogadishu": Coordinate(latitude: 2.046_934_3, longitude: 45.318_162_3),
        "Africa/Monrovia": Coordinate(latitude: 6.290_743_2, longitude: -10.760_523_9),
        "Africa/Nairobi": Coordinate(latitude: -1.292_065_9, longitude: 36.821_946_2),
        "Africa/Ndjamena": Coordinate(latitude: 12.134_845_7, longitude: 15.055_741_5),
        "Africa/Niamey": Coordinate(latitude: 13.511_596_3, longitude: 2.125_385_4),
        "Africa/Nouakchott": Coordinate(latitude: 18.073_529_9, longitude: -15.958_237_2),
        "Africa/Ouagadougou": Coordinate(latitude: 12.371_427_7, longitude: -1.519_660_3),
        "Africa/Porto-Novo": Coordinate(latitude: 6.496_857_4, longitude: 2.628_852_3),
        "Africa/Sao_Tome": Coordinate(latitude: 0.330_192_4, longitude: 6.733_343),
        "Africa/Tripoli": Coordinate(latitude: 32.887_209_4, longitude: 13.191_338_3),
        "Africa/Tunis": Coordinate(latitude: 36.806_494_8, longitude: 10.181_531_6),
        "Africa/Windhoek": Coordinate(latitude: -22.560_880_7, longitude: 17.065_754_9),
        
        "America/Adak": Coordinate(latitude: 51.88, longitude: -176.658_055_6),
        "America/Anchorage": Coordinate(latitude: 61.218_055_6, longitude: -149.900_277_8),
        "America/Anguilla": Coordinate(latitude: 32.974_015_5, longitude: -90.824_543_7),
        "America/Antigua": Coordinate(latitude: 17.074_655_7, longitude: -61.817_520_7),
        "America/Araguaina": Coordinate(latitude: -7.192_773_3, longitude: -48.204_827),
        
        "America/Argentina/Buenos_Aires": Coordinate(latitude: -34.603_684_4, longitude: -58.381_559_1),
        "America/Argentina/Catamarca": Coordinate(latitude: -28.469_581, longitude: -65.779_544_1),
        "America/Argentina/Cordoba": Coordinate(latitude: -31.420_083_3, longitude: -64.188_776_1),
        "America/Argentina/Jujuy": Coordinate(latitude: -24.185_786_4, longitude: -65.299_476_7),
        "America/Argentina/La_Rioja": Coordinate(latitude: -29.413_453_8, longitude: -66.856_457_9),
        "America/Argentina/Mendoza": Coordinate(latitude: -32.889_458_7, longitude: -68.845_838_6),
        "America/Argentina/Rio_Gallegos": Coordinate(latitude: -51.623_048_5, longitude: -69.216_829_1),
        "America/Argentina/Salta": Coordinate(latitude: -24.782_126_9, longitude: -65.423_197_6),
        "America/Argentina/San_Juan": Coordinate(latitude: -31.535_107_4, longitude: -68.538_594_1),
        "America/Argentina/San_Luis": Coordinate(latitude: -33.301_726_7, longitude: -66.337_752_2),
        "America/Argentina/Tucuman": Coordinate(latitude: -26.808_284_8, longitude: -65.217_590_3),
        "America/Argentina/Ushuaia": Coordinate(latitude: -54.801_912_1, longitude: -68.302_951_1),
    
        "America/Aruba": Coordinate(latitude: 12.521_11, longitude: -69.968_338),
        "America/Asuncion": Coordinate(latitude: -25.263_739_9, longitude: -57.575_926),
        "America/Atikokan": Coordinate(latitude: 48.759_753_1, longitude: -91.618_171_6),
        "America/Bahia": Coordinate(latitude: -12.579_738, longitude: -41.700_727_2),
        "America/Bahia_Banderas": Coordinate(latitude: 26.090_183, longitude: -98.322_999_6),
        "America/Barbados": Coordinate(latitude: 27.965_754_5, longitude: -82.718_930_5),
        "America/Belem": Coordinate(latitude: -1.455_754_9, longitude: -48.490_179_9),
        "America/Belize": Coordinate(latitude: 5.861_269_3, longitude: -55.176_899_1),
        "America/Blanc-Sablon": Coordinate(latitude: 51.426_445, longitude: -57.131_315),
        "America/Boa_Vista": Coordinate(latitude: 2.823_509_8, longitude: -60.675_833_1),
        "America/Bogota": Coordinate(latitude: 4.710_988_6, longitude: -74.072_092),
        "America/Boise": Coordinate(latitude: 43.618_710_2, longitude: -116.214_606_8),
        "America/Cambridge_Bay": Coordinate(latitude: 38.583_895_7, longitude: -76.082_068),
        "America/Campo_Grande": Coordinate(latitude: -20.469_710_5, longitude: -54.620_121_1),
        "America/Cancun": Coordinate(latitude: 30.311_939_4, longitude: -95.298_234_1),
        "America/Caracas": Coordinate(latitude: 10.480_593_7, longitude: -66.903_606_3),
        "America/Cayenne": Coordinate(latitude: 4.922_42, longitude: -52.313_453_1),
        "America/Cayman": Coordinate(latitude: 37.990_600_4, longitude: -122.231_814),
        "America/Chicago": Coordinate(latitude: 41.878_113_6, longitude: -87.629_798_2),
        "America/Chihuahua": Coordinate(latitude: 30.163_179_4, longitude: -107.808_078_4),
        "America/Costa_Rica": Coordinate(latitude: 9.748_917, longitude: -83.753_428),
        "America/Creston": Coordinate(latitude: 41.058_600_2, longitude: -94.361_347_4),
        "America/Cuiaba": Coordinate(latitude: -15.601_410_9, longitude: -56.097_891_7),
        "America/Curacao": Coordinate(latitude: 12.169_57, longitude: -68.990_02),
        "America/Danmarkshavn": Coordinate(latitude: 70.853_066, longitude: -36.867_071_1),
        "America/Dawson": Coordinate(latitude: 31.773_500_1, longitude: -84.446_582_6),
        "America/Dawson_Creek": Coordinate(latitude: 40.087_445, longitude: -79.633_865),
        "America/Denver": Coordinate(latitude: 39.739_235_8, longitude: -104.990_251),
        "America/Detroit": Coordinate(latitude: 42.331_427, longitude: -83.045_753_8),
        "America/Dominica": Coordinate(latitude: 15.414_999, longitude: -61.370_976),
        "America/Edmonton": Coordinate(latitude: 36.980_056_3, longitude: -85.612_190_6),
        "America/Eirunepe": Coordinate(latitude: -6.657_140_1, longitude: -69.866_714_1),
        "America/El_Salvador": Coordinate(latitude: -12.973_040_1, longitude: -38.502_304),
        "America/Fort_Nelson": Coordinate(latitude: 29.698_714_3, longitude: -95.631_153_6),
        "America/Fortaleza": Coordinate(latitude: -3.731_861_6, longitude: -38.526_670_4),
        "America/Glace_Bay": Coordinate(latitude: 33.360_664_9, longitude: -79.938_552_6),
        "America/Godthab": Coordinate(latitude: 64.181_409_9, longitude: -51.694_138),
        "America/Goose_Bay": Coordinate(latitude: 61.394_451, longitude: -149.845_55),
        "America/Grand_Turk": Coordinate(latitude: 37.776_663_5, longitude: -107.695_617_6),
        "America/Grenada": Coordinate(latitude: 33.769_004_9, longitude: -89.808_419_2),
        "America/Guadeloupe": Coordinate(latitude: 16.265, longitude: -61.551),
        "America/Guatemala": Coordinate(latitude: -33.097_682_5, longitude: -64.317_405_2),
        "America/Guayaquil": Coordinate(latitude: -2.170_997_9, longitude: -79.922_359_2),
        "America/Guyana": Coordinate(latitude: 4.860_416, longitude: -58.930_18),
        "America/Halifax": Coordinate(latitude: 41.991_213, longitude: -70.861_985),
        "America/Havana": Coordinate(latitude: 30.623_806_9, longitude: -84.414_629),
        "America/Hermosillo": Coordinate(latitude: 33.879_182_5, longitude: -118.295_906_3),
    
        "America/Indiana/Indianapolis": Coordinate(latitude: 39.768_403, longitude: -86.158_068),
        "America/Indiana/Knox": Coordinate(latitude: 41.295_875_1, longitude: -86.625_013_9),
        "America/Indiana/Marengo": Coordinate(latitude: 38.369_227_6, longitude: -86.343_591_7),
        "America/Indiana/Petersburg": Coordinate(latitude: 38.491_993_5, longitude: -87.278_624_4),
        "America/Indiana/Tell_City": Coordinate(latitude: 37.951_444_7, longitude: -86.767_766_3),
        "America/Indiana/Vevay": Coordinate(latitude: 38.747_840_1, longitude: -85.067_172_5),
        "America/Indiana/Vincennes": Coordinate(latitude: 38.677_269, longitude: -87.528_632_5),
        "America/Indiana/Winamac": Coordinate(latitude: 41.051_429_9, longitude: -86.603_064_8),
    
        "America/Inuvik": Coordinate(latitude: 72.592_678_3, longitude: -121.065_778_8),
        "America/Iqaluit": Coordinate(latitude: 63.746_693, longitude: -68.516_966_9),
        "America/Jamaica": Coordinate(latitude: 40.702_677, longitude: -73.788_968_9),
        "America/Juneau": Coordinate(latitude: 58.301_944_4, longitude: -134.419_722_2),
    
        "America/Kentucky/Louisville": Coordinate(latitude: 38.252_664_7, longitude: -85.758_455_7),
        "America/Kentucky/Monticello": Coordinate(latitude: 36.829_793_7, longitude: -84.849_112_6),
    
        "America/Kralendijk": Coordinate(latitude: 12.144_349_1, longitude: -68.265_545_6),
        "America/La_Paz": Coordinate(latitude: -16.489_689, longitude: -68.119_293_6),
        "America/Lima": Coordinate(latitude: -12.046_374, longitude: -77.042_793_4),
        "America/Los_Angeles": Coordinate(latitude: 34.052_234_2, longitude: -118.243_684_9),
        "America/Lower_Princes": Coordinate(latitude: 18.051_345_5, longitude: -63.047_137_1),
        "America/Maceio": Coordinate(latitude: -9.649_848_7, longitude: -35.708_949_2),
        "America/Managua": Coordinate(latitude: -34.633_524_6, longitude: -58.855_351_2),
        "America/Manaus": Coordinate(latitude: -3.119_027_5, longitude: -60.021_731_4),
        "America/Marigot": Coordinate(latitude: 18.067_518_9, longitude: -63.082_465_6),
        "America/Martinique": Coordinate(latitude: 26.908_273_5, longitude: -80.125_116_8),
        "America/Matamoros": Coordinate(latitude: 25.869_029_4, longitude: -97.502_737_6),
        "America/Mazatlan": Coordinate(latitude: 34.116_303, longitude: -117.778_230_8),
        "America/Menominee": Coordinate(latitude: 45.107_762_7, longitude: -87.614_273_7),
        "America/Merida": Coordinate(latitude: 8.569_824_4, longitude: -71.180_498_8),
        "America/Metlakatla": Coordinate(latitude: 55.129_166_7, longitude: -131.572_222_2),
        "America/Mexico_City": Coordinate(latitude: 39.173_065_2, longitude: -91.887_271),
        "America/Miquelon": Coordinate(latitude: -31.485_399_3, longitude: -64.246_930_6),
        "America/Moncton": Coordinate(latitude: 46.087_816_5, longitude: -64.778_231_3),
        "America/Monterrey": Coordinate(latitude: 36.600_237_8, longitude: -121.894_676_1),
        "America/Montevideo": Coordinate(latitude: -34.901_112_7, longitude: -56.164_531_4),
        "America/Montreal": Coordinate(latitude: 45.501_688_9, longitude: -73.567_256),
        "America/Montserrat": Coordinate(latitude: 16.742_498, longitude: -62.187_366),
        "America/Nassau": Coordinate(latitude: 42.515_914_5, longitude: -73.610_115_9),
        "America/New_York": Coordinate(latitude: 40.712_783_7, longitude: -74.005_941_3),
        "America/Nipigon": Coordinate(latitude: 49.015_735_1, longitude: -88.268_316),
        "America/Nome": Coordinate(latitude: 64.501_111_1, longitude: -165.406_388_9),
        "America/Noronha": Coordinate(latitude: -15.447_367_8, longitude: -50.362_688_6),
    
        "America/North_Dakota/Beulah": Coordinate(latitude: 47.263_340_3, longitude: -101.777_946_2),
        "America/North_Dakota/Center": Coordinate(latitude: 39.749_082_4, longitude: -86.170_194_5),
        "America/North_Dakota/New_Salem": Coordinate(latitude: 46.844_999, longitude: -101.411_254_5),
    
        "America/Ojinaga": Coordinate(latitude: 29.545_884_4, longitude: -104.408_290_8),
        "America/Panama": Coordinate(latitude: 8.537_981, longitude: -80.782_127),
        "America/Pangnirtung": Coordinate(latitude: 66.146_558, longitude: -65.701_218),
        "America/Paramaribo": Coordinate(latitude: 5.852_035_5, longitude: -55.203_827_8),
        "America/Phoenix": Coordinate(latitude: 33.448_377_1, longitude: -112.074_037_3),
        "America/Port-au-Prince": Coordinate(latitude: 31.984_162_4, longitude: -98.501_936_3),
        "America/Port_of_Spain": Coordinate(latitude: 10.654_901_3, longitude: -61.501_925_6),
        "America/Porto_Velho": Coordinate(latitude: -8.761_160_5, longitude: -63.900_430_3),
        "America/Puerto_Rico": Coordinate(latitude: 37.692_772_9, longitude: -108.030_350_2),
        "America/Punta_Arenas": Coordinate(latitude: -53.163_833, longitude: -70.917_068),
        "America/Rainy_River": Coordinate(latitude: 29.889_469, longitude: -95.443_030_8),
        "America/Rankin_Inlet": Coordinate(latitude: 62.808_375, longitude: -92.085_285),
        "America/Recife": Coordinate(latitude: -8.057_838_1, longitude: -34.882_896_9),
        "America/Regina": Coordinate(latitude: 36.184_185_5, longitude: -106.956_708_2),
        "America/Resolute": Coordinate(latitude: 61.965_208_5, longitude: -150.079_044_6),
        "America/Rio_Branco": Coordinate(latitude: -9.975_377, longitude: -67.824_897_7),
        "America/Santa_Isabel": Coordinate(latitude: -23.317_686_1, longitude: -46.224_110_5),
        "America/Santarem": Coordinate(latitude: -2.450_629_1, longitude: -54.700_922_8),
        "America/Santiago": Coordinate(latitude: -33.472_787_9, longitude: -70.629_831_3),
        "America/Santo_Domingo": Coordinate(latitude: 35.514_756_2, longitude: -106.365_858_8),
        "America/Sao_Paulo": Coordinate(latitude: -23.550_519_9, longitude: -46.633_309_4),
        "America/Scoresbysund": Coordinate(latitude: 70.485_569, longitude: -21.962_876),
        "America/Shiprock": Coordinate(latitude: 36.785_554_3, longitude: -108.687_032_2),
        "America/Sitka": Coordinate(latitude: 57.053_055_6, longitude: -135.33),
        "America/St_Barthelemy": Coordinate(latitude: 41.141_204_6, longitude: -78.720_280_8),
        "America/St_Johns": Coordinate(latitude: 43.001_143, longitude: -84.559_152_1),
        "America/St_Kitts": Coordinate(latitude: 32.665_080_2, longitude: -114.513_239_7),
        "America/St_Lucia": Coordinate(latitude: 27.906_122_4, longitude: -82.755_863_9),
        "America/St_Thomas": Coordinate(latitude: 18.335_361, longitude: -64.953_400_9),
        "America/St_Vincent": Coordinate(latitude: 35.304_999_6, longitude: -92.728_219),
        "America/Swift_Current": Coordinate(latitude: 50.285_069, longitude: -107.797_172_2),
        "America/Tegucigalpa": Coordinate(latitude: -31.382_707, longitude: -64.160_872_6),
        "America/Thule": Coordinate(latitude: 36.266_354_7, longitude: -91.571_511_6),
        "America/Thunder_Bay": Coordinate(latitude: 48.380_895_1, longitude: -89.247_682_3),
        "America/Tijuana": Coordinate(latitude: 32.514_947, longitude: -117.038_247),
        "America/Toronto": Coordinate(latitude: 43.653_226, longitude: -79.383_184),
        "America/Tortola": Coordinate(latitude: 18.433_470, longitude: -64.633_278),
        "America/Vancouver": Coordinate(latitude: 45.638_728, longitude: -122.661_486),
        "America/Whitehorse": Coordinate(latitude: 60.721_187_1, longitude: -135.056_844_9),
        "America/Winnipeg": Coordinate(latitude: 49.899_754_1, longitude: -97.137_493_7),
        "America/Yakutat": Coordinate(latitude: 59.546_944_4, longitude: -139.727_222_2),
        "America/Yellowknife": Coordinate(latitude: 64.923_528_9, longitude: -148.212_529_5),
        
        "Antarctica/Casey": Coordinate(latitude: -66.282_134_2, longitude: 110.528_546_7),
        "Antarctica/Davis": Coordinate(latitude: -68.576_246_6, longitude: 77.969_624_3),
        "Antarctica/DumontDUrville": Coordinate(latitude: -66.663_600, longitude: 140.003_256),
        "Antarctica/Macquarie": Coordinate(latitude: -35.247_788, longitude: 149.059_365),
        "Antarctica/Mawson": Coordinate(latitude: -67.008_786_8, longitude: 142.660_857_5),
        "Antarctica/McMurdo": Coordinate(latitude: -77.841_877_9, longitude: 166.686_344_9),
        "Antarctica/Palmer": Coordinate(latitude: -64.25, longitude: -62.833_333),
        "Antarctica/Rothera": Coordinate(latitude: -67.567_840_6, longitude: -68.126_669_7),
        "Antarctica/South_Pole": Coordinate(latitude: -63.578_957_6, longitude: -55.786_564_5),
        "Antarctica/Syowa": Coordinate(latitude: 39.468_333, longitude: 124.618_333),
        "Antarctica/Troll": Coordinate(latitude: -72.011_389, longitude: 2.535),
        "Antarctica/Vostok": Coordinate(latitude: -77.500_052, longitude: 106.000_095_1),
        "Arctic/Longyearbyen": Coordinate(latitude: 78.223_172_2, longitude: 15.626_723),
        
        "Asia/Aden": Coordinate(latitude: 12.785_496_9, longitude: 45.018_654_8),
        "Asia/Almaty": Coordinate(latitude: 43.222_014_6, longitude: 76.851_248_5),
        "Asia/Amman": Coordinate(latitude: 31.956_578_3, longitude: 35.945_695_1),
        "Asia/Anadyr": Coordinate(latitude: 64.733_661_3, longitude: 177.496_826_6),
        "Asia/Aqtau": Coordinate(latitude: 43.641_097_3, longitude: 51.198_511_3),
        "Asia/Aqtobe": Coordinate(latitude: 50.283_933_9, longitude: 57.166_978),
        "Asia/Ashgabat": Coordinate(latitude: 37.960_076_6, longitude: 58.326_062_9),
        "Asia/Atyrau": Coordinate(latitude: 47.094_496, longitude: 51.923_837),
        "Asia/Baghdad": Coordinate(latitude: 33.312_805_7, longitude: 44.361_487_5),
        "Asia/Bahrain": Coordinate(latitude: 26.066_7, longitude: 50.557_7),
        "Asia/Baku": Coordinate(latitude: 40.409_261_7, longitude: 49.867_092_4),
        "Asia/Bangkok": Coordinate(latitude: 13.756_330_9, longitude: 100.501_765_1),
        "Asia/Barnaul": Coordinate(latitude: 53.354_779, longitude: 83.769_783),
        "Asia/Beirut": Coordinate(latitude: 33.888_628_9, longitude: 35.495_479_4),
        "Asia/Bishkek": Coordinate(latitude: 42.874_621_2, longitude: 74.569_761_7),
        "Asia/Brunei": Coordinate(latitude: 4.535_277, longitude: 114.727_669),
        "Asia/Calcutta": Coordinate(latitude: 22.572_646, longitude: 88.363_895),
        "Asia/Chita": Coordinate(latitude: 52.051_503_2, longitude: 113.471_190_6),
        "Asia/Choibalsan": Coordinate(latitude: 48.095_127_1, longitude: 114.535_624_7),
        "Asia/Chongqing": Coordinate(latitude: 29.563_01, longitude: 106.551_556),
        "Asia/Colombo": Coordinate(latitude: 6.927_078_6, longitude: 79.861_243),
        "Asia/Damascus": Coordinate(latitude: 33.513_807_3, longitude: 36.276_527_9),
        "Asia/Dhaka": Coordinate(latitude: 23.810_332, longitude: 90.412_518_1),
        "Asia/Dili": Coordinate(latitude: -8.556_855_7, longitude: 125.560_314_3),
        "Asia/Dubai": Coordinate(latitude: 25.204_849_3, longitude: 55.270_782_8),
        "Asia/Dushanbe": Coordinate(latitude: 38.559_772_2, longitude: 68.787_038_4),
        "Asia/Famagusta": Coordinate(latitude: 35.114_912, longitude: 33.919_245),
        "Asia/Gaza": Coordinate(latitude: 34.047_863, longitude: 100.619_655_3),
        "Asia/Harbin": Coordinate(latitude: 45.803_775, longitude: 126.534_967),
        "Asia/Hebron": Coordinate(latitude: 31.532_569, longitude: 35.099_826),
        "Asia/Ho_Chi_Minh": Coordinate(latitude: 10.823_098_9, longitude: 106.629_663_8),
        "Asia/Hong_Kong": Coordinate(latitude: 22.396_428, longitude: 114.109_497),
        "Asia/Hovd": Coordinate(latitude: 47.979_521_8, longitude: 91.634_756),
        "Asia/Irkutsk": Coordinate(latitude: 52.286_974_1, longitude: 104.305_018_3),
        "Asia/Jakarta": Coordinate(latitude: -6.208_763_4, longitude: 106.845_599),
        "Asia/Jayapura": Coordinate(latitude: -2.591_602_5, longitude: 140.668_999_5),
        "Asia/Jerusalem": Coordinate(latitude: 31.768_319, longitude: 35.213_71),
        "Asia/Kabul": Coordinate(latitude: 34.555_349_4, longitude: 69.207_486),
        "Asia/Kamchatka": Coordinate(latitude: 61.434_398_1, longitude: 166.788_413_1),
        "Asia/Karachi": Coordinate(latitude: 24.861_462_2, longitude: 67.009_938_8),
        "Asia/Kashgar": Coordinate(latitude: 39.470_4, longitude: 75.989_755),
        "Asia/Kathmandu": Coordinate(latitude: 27.717_245_3, longitude: 85.323_960_5),
        "Asia/Katmandu": Coordinate(latitude: 27.717_245_3, longitude: 85.323_960_5),
        "Asia/Khandyga": Coordinate(latitude: 62.656_407_9, longitude: 135.553_980_1),
        "Asia/Krasnoyarsk": Coordinate(latitude: 56.015_283_4, longitude: 92.893_247_6),
        "Asia/Kuala_Lumpur": Coordinate(latitude: 3.139_003, longitude: 101.686_855),
        "Asia/Kuching": Coordinate(latitude: 1.607_681_2, longitude: 110.378_543_8),
        "Asia/Kuwait": Coordinate(latitude: 29.311_66, longitude: 47.481_766),
        "Asia/Macau": Coordinate(latitude: 22.198_745, longitude: 113.543_873),
        "Asia/Magadan": Coordinate(latitude: 59.561_152_5, longitude: 150.830_141_3),
        "Asia/Makassar": Coordinate(latitude: -5.147_665_1, longitude: 119.432_731_4),
        "Asia/Manila": Coordinate(latitude: 14.599_512_4, longitude: 120.984_219_5),
        "Asia/Muscat": Coordinate(latitude: 23.585_89, longitude: 58.405_922_7),
        "Asia/Nicosia": Coordinate(latitude: 35.185_565_9, longitude: 33.382_276_4),
        "Asia/Novokuznetsk": Coordinate(latitude: 53.759_593_5, longitude: 87.121_570_5),
        "Asia/Novosibirsk": Coordinate(latitude: 55.008_352_6, longitude: 82.935_732_7),
        "Asia/Omsk": Coordinate(latitude: 54.988_480_4, longitude: 73.324_236_2),
        "Asia/Oral": Coordinate(latitude: 51.227_821, longitude: 51.386_543_1),
        "Asia/Phnom_Penh": Coordinate(latitude: 11.544_872_9, longitude: 104.892_166_8),
        "Asia/Pontianak": Coordinate(latitude: -0.026_330_3, longitude: 109.342_503_9),
        "Asia/Pyongyang": Coordinate(latitude: 39.039_219_3, longitude: 125.762_524_1),
        "Asia/Qatar": Coordinate(latitude: 25.354_826, longitude: 51.183_884),
        "Asia/Qyzylorda": Coordinate(latitude: 44.848_831_4, longitude: 65.482_268_6),
        "Asia/Rangoon": Coordinate(latitude: 16.866_069_4, longitude: 96.195_132),
        "Asia/Riyadh": Coordinate(latitude: 25.005_448_2, longitude: 46.544_831),
        "Asia/Sakhalin": Coordinate(latitude: 50.690_984_8, longitude: 142.950_568_9),
        "Asia/Samarkand": Coordinate(latitude: 39.627_012, longitude: 66.974_973_1),
        "Asia/Seoul": Coordinate(latitude: 37.566_535, longitude: 126.977_969_2),
        "Asia/Shanghai": Coordinate(latitude: 31.230_416, longitude: 121.473_701),
        "Asia/Singapore": Coordinate(latitude: 1.352_083, longitude: 103.819_836),
        "Asia/Srednekolymsk": Coordinate(latitude: 67.437_307, longitude: 153.728_674),
        "Asia/Taipei": Coordinate(latitude: 25.032_963_6, longitude: 121.565_426_8),
        "Asia/Tashkent": Coordinate(latitude: 41.299_495_8, longitude: 69.240_073_4),
        "Asia/Tbilisi": Coordinate(latitude: 41.715_137_7, longitude: 44.827_096),
        "Asia/Tehran": Coordinate(latitude: 35.689_197_5, longitude: 51.388_973_6),
        "Asia/Thimphu": Coordinate(latitude: 27.472_792_4, longitude: 89.639_286_3),
        "Asia/Tokyo": Coordinate(latitude: 35.709_025_9, longitude: 139.731_992_5),
        "Asia/Tomsk": Coordinate(latitude: 56.501_040, longitude: 84.992_451),
        "Asia/Ulaanbaatar": Coordinate(latitude: 47.886_398_8, longitude: 106.905_743_9),
        "Asia/Urumqi": Coordinate(latitude: 43.825_592, longitude: 87.616_848),
        "Asia/Ust-Nera": Coordinate(latitude: 64.559_610_3, longitude: 143.224_425_3),
        "Asia/Vientiane": Coordinate(latitude: 17.975_705_8, longitude: 102.633_103_5),
        "Asia/Vladivostok": Coordinate(latitude: 43.173_738_7, longitude: 132.006_450_6),
        "Asia/Yakutsk": Coordinate(latitude: 62.035_452_3, longitude: 129.675_474_5),
        "Asia/Yekaterinburg": Coordinate(latitude: 56.838_926_1, longitude: 60.605_702_5),
        "Asia/Yangon": Coordinate(latitude: 16.866_069, longitude: 96.195_132),
        "Asia/Yerevan": Coordinate(latitude: 40.179_185_7, longitude: 44.499_102_9),
        
        "Atlantic/Azores": Coordinate(latitude: 37.741_249, longitude: -25.675_594),
        "Atlantic/Bermuda": Coordinate(latitude: 37.294_258_9, longitude: -77.304_022),
        "Atlantic/Canary": Coordinate(latitude: 39.492_871_8, longitude: -74.505_602_6),
        "Atlantic/Cape_Verde": Coordinate(latitude: 16.587_461, longitude: -22.935_668_5),
        "Atlantic/Faroe": Coordinate(latitude: 61.892_635, longitude: -6.911_806),
        "Atlantic/Madeira": Coordinate(latitude: 32.760_707_4, longitude: -16.959_472_3),
        "Atlantic/Reykjavik": Coordinate(latitude: 64.126_520_6, longitude: -21.817_439_3),
        "Atlantic/South_Georgia": Coordinate(latitude: 39.356_239_9, longitude: -74.440_106_1),
        "Atlantic/St_Helena": Coordinate(latitude: 43.169_537_2, longitude: -77.599_743_5),
        "Atlantic/Stanley": Coordinate(latitude: 39.411_781_8, longitude: -74.587_584),
        
        "Australia/Adelaide": Coordinate(latitude: -34.928_621_2, longitude: 138.599_959_4),
        "Australia/Brisbane": Coordinate(latitude: -27.471_010_7, longitude: 153.023_448_9),
        "Australia/Broken_Hill": Coordinate(latitude: -31.955_858_3, longitude: 141.465_136_1),
        "Australia/Currie": Coordinate(latitude: -39.928_241_7, longitude: 143.852_310_2),
        "Australia/Darwin": Coordinate(latitude: -12.462_827_1, longitude: 130.841_777_2),
        "Australia/Eucla": Coordinate(latitude: -31.677_126, longitude: 128.889_304_3),
        "Australia/Hobart": Coordinate(latitude: -42.881_903_2, longitude: 147.323_814_8),
        "Australia/Lindeman": Coordinate(latitude: -19.293_284_3, longitude: 146.755_763),
        "Australia/Lord_Howe": Coordinate(latitude: -31.531_482_2, longitude: 159.070_199_5),
        "Australia/Melbourne": Coordinate(latitude: -37.814_107, longitude: 144.963_28),
        "Australia/Perth": Coordinate(latitude: -31.953_513_2, longitude: 115.857_047_1),
        "Australia/Sydney": Coordinate(latitude: -33.867_486_9, longitude: 151.206_990_2),
        
        "Europe/Amsterdam": Coordinate(latitude: 52.370_215_7, longitude: 4.895_167_9),
        "Europe/Andorra": Coordinate(latitude: 42.506_285, longitude: 1.521_801),
        "Europe/Athens": Coordinate(latitude: 37.983_917, longitude: 23.729_359_9),
        "Europe/Astrakhan": Coordinate(latitude: 46.358_804, longitude: 48.059_935),
        "Europe/Belgrade": Coordinate(latitude: 44.786_568, longitude: 20.448_921_6),
        "Europe/Berlin": Coordinate(latitude: 52.520_006_6, longitude: 13.404_954),
        "Europe/Bratislava": Coordinate(latitude: 48.148_596_5, longitude: 17.107_747_7),
        "Europe/Brussels": Coordinate(latitude: 50.850_339_6, longitude: 4.351_710_3),
        "Europe/Bucharest": Coordinate(latitude: 44.426_767_4, longitude: 26.102_538_4),
        "Europe/Budapest": Coordinate(latitude: 47.497_912, longitude: 19.040_235),
        "Europe/Busingen": Coordinate(latitude: 47.696_993_9, longitude: 8.690_419_6),
        "Europe/Chisinau": Coordinate(latitude: 47.010_452_9, longitude: 28.863_810_3),
        "Europe/Copenhagen": Coordinate(latitude: 55.676_096_8, longitude: 12.568_337_1),
        "Europe/Dublin": Coordinate(latitude: 53.349_805_3, longitude: -6.260_309_7),
        "Europe/Gibraltar": Coordinate(latitude: 36.140_751, longitude: -5.353_585),
        "Europe/Guernsey": Coordinate(latitude: 49.465_691, longitude: -2.585_278),
        "Europe/Helsinki": Coordinate(latitude: 60.173_324_4, longitude: 24.941_024_8),
        "Europe/Isle_of_Man": Coordinate(latitude: 54.236_107, longitude: -4.548_056),
        "Europe/Istanbul": Coordinate(latitude: 41.008_237_6, longitude: 28.978_358_9),
        "Europe/Jersey": Coordinate(latitude: 49.214_439, longitude: -2.131_25),
        "Europe/Kaliningrad": Coordinate(latitude: 54.710_426_4, longitude: 20.452_214_4),
        "Europe/Kiev": Coordinate(latitude: 50.450_1, longitude: 30.523_4),
        "Europe/Kirov": Coordinate(latitude: 58.603_532, longitude: 49.666_798),
        "Europe/Lisbon": Coordinate(latitude: 38.722_252_4, longitude: -9.139_336_6),
        "Europe/Ljubljana": Coordinate(latitude: 46.056_946_5, longitude: 14.505_751_5),
        "Europe/London": Coordinate(latitude: 51.507_350_9, longitude: -0.127_758_3),
        "Europe/Luxembourg": Coordinate(latitude: 49.815_273, longitude: 6.129_583),
        "Europe/Madrid": Coordinate(latitude: 40.416_775_4, longitude: -3.703_790_2),
        "Europe/Malta": Coordinate(latitude: 35.937_496, longitude: 14.375_416),
        "Europe/Mariehamn": Coordinate(latitude: 60.097_094_5, longitude: 19.934_833_9),
        "Europe/Minsk": Coordinate(latitude: 53.904_539_8, longitude: 27.561_524_4),
        "Europe/Monaco": Coordinate(latitude: 43.738_417_6, longitude: 7.424_615_8),
        "Europe/Moscow": Coordinate(latitude: 55.755_826, longitude: 37.617_3),
        "Europe/Oslo": Coordinate(latitude: 59.913_868_8, longitude: 10.752_245_4),
        "Europe/Paris": Coordinate(latitude: 48.856_614, longitude: 2.352_221_9),
        "Europe/Podgorica": Coordinate(latitude: 42.430_419_6, longitude: 19.259_364_2),
        "Europe/Prague": Coordinate(latitude: 50.075_538_1, longitude: 14.437_800_5),
        "Europe/Riga": Coordinate(latitude: 56.949_648_7, longitude: 24.105_186_4),
        "Europe/Rome": Coordinate(latitude: 41.902_783_5, longitude: 12.496_365_5),
        "Europe/Samara": Coordinate(latitude: 53.241_504_1, longitude: 50.221_246_3),
        "Europe/San_Marino": Coordinate(latitude: 43.942_36, longitude: 12.457_777),
        "Europe/Sarajevo": Coordinate(latitude: 43.856_258_6, longitude: 18.413_076_3),
        "Europe/Saratov": Coordinate(latitude: 51.592_365, longitude: 45.960_803),
        "Europe/Simferopol": Coordinate(latitude: 44.952_117, longitude: 34.102_417),
        "Europe/Skopje": Coordinate(latitude: 41.997_346_2, longitude: 21.427_995_6),
        "Europe/Sofia": Coordinate(latitude: 42.697_708_2, longitude: 23.321_867_5),
        "Europe/Stockholm": Coordinate(latitude: 59.329_323_5, longitude: 18.068_580_8),
        "Europe/Tallinn": Coordinate(latitude: 59.436_960_8, longitude: 24.753_574_6),
        "Europe/Tirane": Coordinate(latitude: 41.327_545_9, longitude: 19.818_698_2),
        "Europe/Ulyanovsk": Coordinate(latitude: 54.318_160, longitude: 48.383_792),
        "Europe/Uzhgorod": Coordinate(latitude: 48.620_8, longitude: 22.287_883),
        "Europe/Vaduz": Coordinate(latitude: 47.141_030_3, longitude: 9.520_927_7),
        "Europe/Vatican": Coordinate(latitude: 41.902_916, longitude: 12.453_389),
        "Europe/Vienna": Coordinate(latitude: 48.208_174_3, longitude: 16.373_818_9),
        "Europe/Vilnius": Coordinate(latitude: 54.687_155_5, longitude: 25.279_651_4),
        "Europe/Volgograd": Coordinate(latitude: 48.708_048, longitude: 44.513_303_4),
        "Europe/Warsaw": Coordinate(latitude: 52.229_675_6, longitude: 21.012_228_7),
        "Europe/Zagreb": Coordinate(latitude: 45.815_010_8, longitude: 15.981_919),
        "Europe/Zaporozhye": Coordinate(latitude: 47.838_8, longitude: 35.139_567),
        "Europe/Zurich": Coordinate(latitude: 47.376_886_6, longitude: 8.541_694),
        
        "Indian/Comoro": Coordinate(latitude: -8.546_661, longitude: 125.524_759),
        "Indian/Maldives": Coordinate(latitude: 1.977_247, longitude: 73.536_103),
        "Indian/Antananarivo": Coordinate(latitude: -18.879_190_2, longitude: 47.507_905_5),
        "Indian/Chagos": Coordinate(latitude: -6.0, longitude: 72.0),
        "Indian/Christmas": Coordinate(latitude: 45.256_270_4, longitude: -66.076_065_1),
        "Indian/Cocos": Coordinate(latitude: 33.774_888_3, longitude: -116.442_241_6),
        "Indian/Kerguelen": Coordinate(latitude: -49.394_827_5, longitude: 69.354_462_6),
        "Indian/Mahe": Coordinate(latitude: -4.682_669_3, longitude: 55.480_396),
        "Indian/Mauritius": Coordinate(latitude: -20.325_775_8, longitude: 57.355_299_9),
        "Indian/Mayotte": Coordinate(latitude: -12.647_588_6, longitude: 45.051_318_9),
        "Indian/Reunion": Coordinate(latitude: 34.996_756_3, longitude: -85.135_975_6),
        
        "Pacific/Efate": Coordinate(latitude: -17.657_748, longitude: 168.429_719),
        "Pacific/Enderbury": Coordinate(latitude: -3.133_333, longitude: -171.083_333),
        "Pacific/Fakaofo": Coordinate(latitude: -9.380_255, longitude: -171.218_836),
        "Pacific/Funafuti": Coordinate(latitude: -8.520_066, longitude: 179.198_128),
        "Pacific/Kiritimati": Coordinate(latitude: 1.872_135, longitude: -157.427_812),
        "Pacific/Pago_Pago": Coordinate(latitude: -14.275_632, longitude: -170.702_036),
        "Pacific/Palau": Coordinate(latitude: 7.514_980, longitude: 134.582_520),
        "Pacific/Pitcairn": Coordinate(latitude: -24.376_745, longitude: -128.324_235),
        "Pacific/Ponape": Coordinate(latitude: 6.854_125, longitude: 158.262_382),
        "Pacific/Port_Moresby": Coordinate(latitude: -9.443_800, longitude: 147.180_267),
        "Pacific/Apia": Coordinate(latitude: -13.833_030_7, longitude: -171.769_789_2),
        "Pacific/Auckland": Coordinate(latitude: -36.920_611_3, longitude: 174.838_909_7),
        "Pacific/Bougainville": Coordinate(latitude: 32.674_899_5, longitude: -117.160_159_3),
        "Pacific/Chatham": Coordinate(latitude: 46.317_848_7, longitude: -124.007_096),
        "Pacific/Chuuk": Coordinate(latitude: 7.464_786_2, longitude: 151.849_011_8),
        "Pacific/Easter": Coordinate(latitude: -27.947_929_4, longitude: 153.319_147_2),
        "Pacific/Fiji": Coordinate(latitude: -18.141_720_2, longitude: 178.423_883),
        "Pacific/Galapagos": Coordinate(latitude: -27.942_039_3, longitude: 153.331_783_1),
        "Pacific/Gambier": Coordinate(latitude: -27.943_707_7, longitude: 153.329_161_7),
        "Pacific/Guadalcanal": Coordinate(latitude: 32.675_615_4, longitude: -117.160_777),
        "Pacific/Guam": Coordinate(latitude: 13.559_800_4, longitude: 144.911_094_9),
        "Pacific/Honolulu": Coordinate(latitude: 21.315_653_3, longitude: -157.871_890_3),
        "Pacific/Johnston": Coordinate(latitude: 37.848_660_9, longitude: -88.907_325_9),
        "Pacific/Kosrae": Coordinate(latitude: -27.946_935_3, longitude: 153.315_568_7),
        "Pacific/Kwajalein": Coordinate(latitude: 32.677_130_4, longitude: -117.158_947),
        "Pacific/Majuro": Coordinate(latitude: 7.084_042_2, longitude: 171.367_267),
        "Pacific/Marquesas": Coordinate(latitude: -9.454_444, longitude: -139.388_889),
        "Pacific/Midway": Coordinate(latitude: 36.027_244_6, longitude: -114.987_679_8),
        "Pacific/Nauru": Coordinate(latitude: -27.928_620_5, longitude: 153.325_668_8),
        "Pacific/Niue": Coordinate(latitude: -13.833_030_7, longitude: -171.769_789_2),
        "Pacific/Norfolk": Coordinate(latitude: 36.840_757_8, longitude: -76.343_290_3),
        "Pacific/Noumea": Coordinate(latitude: -22.250_210_7, longitude: 166.464_578),
        "Pacific/Pohnpei": Coordinate(latitude: 6.854_125_4, longitude: 158.262_382_2),
        "Pacific/Rarotonga": Coordinate(latitude: -27.938_689_2, longitude: 153.317_969_9),
        "Pacific/Saipan": Coordinate(latitude: -27.935_455_1, longitude: 153.326_715_1),
        "Pacific/Tahiti": Coordinate(latitude: 34.038_128_1, longitude: -118.537_323_8),
        "Pacific/Tarawa": Coordinate(latitude: 32.674_360_6, longitude: -117.164_754_2),
        "Pacific/Tongatapu": Coordinate(latitude: -21.138_999_3, longitude: -175.182_721_7),
        "Pacific/Truk": Coordinate(latitude: -29.708_038_5, longitude: 152.942_474_2),
        "Pacific/Wake": Coordinate(latitude: 35.844_473_1, longitude: -78.611_740_2),
        "Pacific/Wallis": Coordinate(latitude: -32.166_988, longitude: 152.501_226_4),
        
    ]

    
    public static let GMT: (identifier: String, coordinate: Coordinate) =
            (identifier: "GMT", coordinate: TimeZone.knownTimeZoneCoordinates["GMT"]!)

    enum Africa: String, TimeZoneCoordinateRepresentable {
        case Abidjan = "Africa/Abidjan"
        case Accra = "Africa/Accra"
        case AddisAbaba = "Africa/Addis_Ababa"
        case Algiers = "Africa/Algiers"
        case Asmara = "Africa/Asmara"
        case Bamako = "Africa/Bamako"
        case Bangui = "Africa/Bangui"
        case Banjul = "Africa/Banjul"
        case Bissau = "Africa/Bissau"
        case Blantyre = "Africa/Blantyre"
        case Brazzaville = "Africa/Brazzaville"
        case Bujumbura = "Africa/Bujumbura"
        case Cairo = "Africa/Cairo"
        case Casablanca = "Africa/Casablanca"
        case Ceuta = "Africa/Ceuta"
        case Conakry = "Africa/Conakry"
        case Dakar = "Africa/Dakar"
        case DarEsSalaam = "Africa/Dar_es_Salaam"
        case Djibouti = "Africa/Djibouti"
        case Douala = "Africa/Douala"
        case ElAaiun = "Africa/El_Aaiun"
        case Freetown = "Africa/Freetown"
        case Gaborone = "Africa/Gaborone"
        case Harare = "Africa/Harare"
        case Johannesburg = "Africa/Johannesburg"
        case Juba = "Africa/Juba"
        case Kampala = "Africa/Kampala"
        case Khartoum = "Africa/Khartoum"
        case Kigali = "Africa/Kigali"
        case Kinshasa = "Africa/Kinshasa"
        case Lagos = "Africa/Lagos"
        case Libreville = "Africa/Libreville"
        case Lome = "Africa/Lome"
        case Luanda = "Africa/Luanda"
        case Lubumbashi = "Africa/Lubumbashi"
        case Lusaka = "Africa/Lusaka"
        case Malabo = "Africa/Malabo"
        case Maputo = "Africa/Maputo"
        case Maseru = "Africa/Maseru"
        case Mbabane = "Africa/Mbabane"
        case Mogadishu = "Africa/Mogadishu"
        case Monrovia = "Africa/Monrovia"
        case Nairobi = "Africa/Nairobi"
        case Ndjamena = "Africa/Ndjamena"
        case Niamey = "Africa/Niamey"
        case Nouakchott = "Africa/Nouakchott"
        case Ouagadougou = "Africa/Ouagadougou"
        case PortoNovo = "Africa/Porto-Novo"
        case SaoTome = "Africa/Sao_Tome"
        case Tripoli = "Africa/Tripoli"
        case Tunis = "Africa/Tunis"
        case Windhoek = "Africa/Windhoek"
    }
    
    enum America: String, TimeZoneCoordinateRepresentable {
        case Adak = "America/Adak"
        case Anchorage = "America/Anchorage"
        case Anguilla = "America/Anguilla"
        case Antigua = "America/Antigua"
        case Araguaina = "America/Araguaina"
        
        enum Argentina: String, TimeZoneCoordinateRepresentable {
            case BuenosAires = "America/Argentina/Buenos_Aires"
            case Catamarca = "America/Argentina/Catamarca"
            case Cordoba = "America/Argentina/Cordoba"
            case Jujuy = "America/Argentina/Jujuy"
            case LaRioja = "America/Argentina/La_Rioja"
            case Mendoza = "America/Argentina/Mendoza"
            case RioGallegos = "America/Argentina/Rio_Gallegos"
            case Salta = "America/Argentina/Salta"
            case SanJuan = "America/Argentina/San_Juan"
            case SanLuis = "America/Argentina/San_Luis"
            case Tucuman = "America/Argentina/Tucuman"
            case Ushuaia = "America/Argentina/Ushuaia"
        }
        
        case Aruba = "America/Aruba"
        case Asuncion = "America/Asuncion"
        case Atikokan = "America/Atikokan"
        case Bahia = "America/Bahia"
        case BahiaBanderas = "America/Bahia_Banderas"
        case Barbados = "America/Barbados"
        case Belem = "America/Belem"
        case Belize = "America/Belize"
        case BlancSablon = "America/Blanc-Sablon"
        case BoaVista = "America/Boa_Vista"
        case Bogota = "America/Bogota"
        case Boise = "America/Boise"
        case CambridgeBay = "America/Cambridge_Bay"
        case CampoGrande = "America/Campo_Grande"
        case Cancun = "America/Cancun"
        case Caracas = "America/Caracas"
        case Cayenne = "America/Cayenne"
        case Cayman = "America/Cayman"
        case Chicago = "America/Chicago"
        case Chihuahua = "America/Chihuahua"
        case CostaRica = "America/Costa_Rica"
        case Creston = "America/Creston"
        case Cuiaba = "America/Cuiaba"
        case Curacao = "America/Curacao"
        case Danmarkshavn = "America/Danmarkshavn"
        case Dawson = "America/Dawson"
        case DawsonCreek = "America/Dawson_Creek"
        case Denver = "America/Denver"
        case Detroit = "America/Detroit"
        case Dominica = "America/Dominica"
        case Edmonton = "America/Edmonton"
        case Eirunepe = "America/Eirunepe"
        case ElSalvador = "America/El_Salvador"
        case FortNelson = "America/Fort_Nelson"
        case Fortaleza = "America/Fortaleza"
        case GlaceBay = "America/Glace_Bay"
        case Godthab = "America/Godthab"
        case GooseBay = "America/Goose_Bay"
        case GrandTurk = "America/Grand_Turk"
        case Grenada = "America/Grenada"
        case Guadeloupe = "America/Guadeloupe"
        case Guatemala = "America/Guatemala"
        case Guayaquil = "America/Guayaquil"
        case Guyana = "America/Guyana"
        case Halifax = "America/Halifax"
        case Havana = "America/Havana"
        case Hermosillo = "America/Hermosillo"
        
        enum Indiana: String, TimeZoneCoordinateRepresentable {
            case Indianapolis = "America/Indiana/Indianapolis"
            case Knox = "America/Indiana/Knox"
            case Marengo = "America/Indiana/Marengo"
            case Petersburg = "America/Indiana/Petersburg"
            case TellCity = "America/Indiana/Tell_City"
            case Vevay = "America/Indiana/Vevay"
            case Vincennes = "America/Indiana/Vincennes"
            case Winamac = "America/Indiana/Winamac"
        }
        
        case Inuvik = "America/Inuvik"
        case Iqaluit = "America/Iqaluit"
        case Jamaica = "America/Jamaica"
        case Juneau = "America/Juneau"
        
        enum Kentucky: String, TimeZoneCoordinateRepresentable {
            case Louisville = "America/Kentucky/Louisville"
            case Monticello = "America/Kentucky/Monticello"
        }
        
        case Kralendijk = "America/Kralendijk"
        case La_Paz = "America/La_Paz"
        case Lima = "America/Lima"
        case LosAngeles = "America/Los_Angeles"
        case LowerPrinces = "America/Lower_Princes"
        case Maceio = "America/Maceio"
        case Managua = "America/Managua"
        case Manaus = "America/Manaus"
        case Marigot = "America/Marigot"
        case Martinique = "America/Martinique"
        case Matamoros = "America/Matamoros"
        case Mazatlan = "America/Mazatlan"
        case Menominee = "America/Menominee"
        case Merida = "America/Merida"
        case Metlakatla = "America/Metlakatla"
        case MexicoCity = "America/Mexico_City"
        case Miquelon = "America/Miquelon"
        case Moncton = "America/Moncton"
        case Monterrey = "America/Monterrey"
        case Montevideo = "America/Montevideo"
        case Montreal = "America/Montreal"
        case Montserrat = "America/Montserrat"
        case Nassau = "America/Nassau"
        case NewYork = "America/New_York"
        case Nipigon = "America/Nipigon"
        case Nome = "America/Nome"
        case Noronha = "America/Noronha"
        
        enum NorthDakota: String, TimeZoneCoordinateRepresentable {
            case Beulah = "America/North_Dakota/Beulah"
            case Center = "America/North_Dakota/Center"
            case NewSalem = "America/North_Dakota/New_Salem"
        }
        
        case Ojinaga = "America/Ojinaga"
        case Panama = "America/Panama"
        case Pangnirtung = "America/Pangnirtung"
        case Paramaribo = "America/Paramaribo"
        case Phoenix = "America/Phoenix"
        case PortAuPrince = "America/Port-au-Prince"
        case PortOfSpain = "America/Port_of_Spain"
        case PortoVelho = "America/Porto_Velho"
        case PuertoRico = "America/Puerto_Rico"
        case PuntaArenas = "America/Punta_Arenas"
        case RainyRiver = "America/Rainy_River"
        case RankinInlet = "America/Rankin_Inlet"
        case Recife = "America/Recife"
        case Regina = "America/Regina"
        case Resolute = "America/Resolute"
        case RioBranco = "America/Rio_Branco"
        case SantaIsabel = "America/Santa_Isabel"
        case Santarem = "America/Santarem"
        case Santiago = "America/Santiago"
        case Santo_Domingo = "America/Santo_Domingo"
        case SaoPaulo = "America/Sao_Paulo"
        case Scoresbysund = "America/Scoresbysund"
        case Shiprock = "America/Shiprock"
        case Sitka = "America/Sitka"
        case StBarthelemy = "America/St_Barthelemy"
        case StJohns = "America/St_Johns"
        case StKitts = "America/St_Kitts"
        case StLucia = "America/St_Lucia"
        case StThomas = "America/St_Thomas"
        case StVincent = "America/St_Vincent"
        case SwiftCurrent = "America/Swift_Current"
        case Tegucigalpa = "America/Tegucigalpa"
        case Thule = "America/Thule"
        case Thunder_Bay = "America/Thunder_Bay"
        case Tijuana = "America/Tijuana"
        case Toronto = "America/Toronto"
        case Tortola = "America/Tortola"
        case Vancouver = "America/Vancouver"
        case Whitehorse = "America/Whitehorse"
        case Winnipeg = "America/Winnipeg"
        case Yakutat = "America/Yakutat"
        case Yellowknife = "America/Yellowknife"
    }

    enum Antarctica: String, TimeZoneCoordinateRepresentable {
        case Casey = "Antarctica/Casey"
        case Davis = "Antarctica/Davis"
        case DumontDUrville = "Antarctica/DumontDUrville"
        case Macquarie = "Antarctica/Macquarie"
        case Mawson = "Antarctica/Mawson"
        case McMurdo = "Antarctica/McMurdo"
        case Palmer = "Antarctica/Palmer"
        case Rothera = "Antarctica/Rothera"
        case SouthPole = "Antarctica/South_Pole"
        case Syowa = "Antarctica/Syowa"
        case Troll = "Antarctica/Troll"
        case Vostok = "Antarctica/Vostok"
        case Longyearbyen = "Arctic/Longyearbyen"
    }
    
    enum Asia: String, TimeZoneCoordinateRepresentable {
        case Aden = "Asia/Aden"
        case Almaty = "Asia/Almaty"
        case Amman = "Asia/Amman"
        case Anadyr = "Asia/Anadyr"
        case Aqtau = "Asia/Aqtau"
        case Aqtobe = "Asia/Aqtobe"
        case Ashgabat = "Asia/Ashgabat"
        case Atyrau = "Asia/Atyrau"
        case Baghdad = "Asia/Baghdad"
        case Bahrain = "Asia/Bahrain"
        case Baku = "Asia/Baku"
        case Bangkok = "Asia/Bangkok"
        case Barnaul = "Asia/Barnaul"
        case Beirut = "Asia/Beirut"
        case Bishkek = "Asia/Bishkek"
        case Brunei = "Asia/Brunei"
        case Calcutta = "Asia/Calcutta"
        case Chita = "Asia/Chita"
        case Choibalsan = "Asia/Choibalsan"
        case Chongqing = "Asia/Chongqing"
        case Colombo = "Asia/Colombo"
        case Damascus = "Asia/Damascus"
        case Dhaka = "Asia/Dhaka"
        case Dili = "Asia/Dili"
        case Dubai = "Asia/Dubai"
        case Dushanbe = "Asia/Dushanbe"
        case Famagusta = "Asia/Famagusta"
        case Gaza = "Asia/Gaza"
        case Harbin = "Asia/Harbin"
        case Hebron = "Asia/Hebron"
        case HoChiMinh = "Asia/Ho_Chi_Minh"
        case HongKong = "Asia/Hong_Kong"
        case Hovd = "Asia/Hovd"
        case Irkutsk = "Asia/Irkutsk"
        case Jakarta = "Asia/Jakarta"
        case Jayapura = "Asia/Jayapura"
        case Jerusalem = "Asia/Jerusalem"
        case Kabul = "Asia/Kabul"
        case Kamchatka = "Asia/Kamchatka"
        case Karachi = "Asia/Karachi"
        case Kashgar = "Asia/Kashgar"
        case Kathmandu = "Asia/Kathmandu"
        case Katmandu = "Asia/Katmandu"
        case Khandyga = "Asia/Khandyga"
        case Krasnoyarsk = "Asia/Krasnoyarsk"
        case KualaLumpur = "Asia/Kuala_Lumpur"
        case Kuching = "Asia/Kuching"
        case Kuwait = "Asia/Kuwait"
        case Macau = "Asia/Macau"
        case Magadan = "Asia/Magadan"
        case Makassar = "Asia/Makassar"
        case Manila = "Asia/Manila"
        case Muscat = "Asia/Muscat"
        case Nicosia = "Asia/Nicosia"
        case Novokuznetsk = "Asia/Novokuznetsk"
        case Novosibirsk = "Asia/Novosibirsk"
        case Omsk = "Asia/Omsk"
        case Oral = "Asia/Oral"
        case PhnomPenh = "Asia/Phnom_Penh"
        case Pontianak = "Asia/Pontianak"
        case Pyongyang = "Asia/Pyongyang"
        case Qatar = "Asia/Qatar"
        case Qyzylorda = "Asia/Qyzylorda"
        case Rangoon = "Asia/Rangoon"
        case Riyadh = "Asia/Riyadh"
        case Sakhalin = "Asia/Sakhalin"
        case Samarkand = "Asia/Samarkand"
        case Seoul = "Asia/Seoul"
        case Shanghai = "Asia/Shanghai"
        case Singapore = "Asia/Singapore"
        case Srednekolymsk = "Asia/Srednekolymsk"
        case Taipei = "Asia/Taipei"
        case Tashkent = "Asia/Tashkent"
        case Tbilisi = "Asia/Tbilisi"
        case Tehran = "Asia/Tehran"
        case Thimphu = "Asia/Thimphu"
        case Tokyo = "Asia/Tokyo"
        case Tomsk = "Asia/Tomsk"
        case Ulaanbaatar = "Asia/Ulaanbaatar"
        case Urumqi = "Asia/Urumqi"
        case UstNera = "Asia/Ust-Nera"
        case Vientiane = "Asia/Vientiane"
        case Vladivostok = "Asia/Vladivostok"
        case Yakutsk = "Asia/Yakutsk"
        case Yekaterinburg = "Asia/Yekaterinburg"
        case Yangon = "Asia/Yangon"
        case Yerevan = "Asia/Yerevan"
    }
    
    enum Atlantic: String, TimeZoneCoordinateRepresentable {
        case Azores = "Atlantic/Azores"
        case Bermuda = "Atlantic/Bermuda"
        case Canary = "Atlantic/Canary"
        case CapeVerde = "Atlantic/Cape_Verde"
        case Faroe = "Atlantic/Faroe"
        case Madeira = "Atlantic/Madeira"
        case Reykjavik = "Atlantic/Reykjavik"
        case SouthGeorgia = "Atlantic/South_Georgia"
        case StHelena = "Atlantic/St_Helena"
        case Stanley = "Atlantic/Stanley"
    }
    
    enum Australia: String, TimeZoneCoordinateRepresentable {
        case Adelaide = "Australia/Adelaide"
        case Brisbane = "Australia/Brisbane"
        case BrokenHill = "Australia/Broken_Hill"
        case Currie = "Australia/Currie"
        case Darwin = "Australia/Darwin"
        case Eucla = "Australia/Eucla"
        case Hobart = "Australia/Hobart"
        case Lindeman = "Australia/Lindeman"
        case LordHowe = "Australia/Lord_Howe"
        case Melbourne = "Australia/Melbourne"
        case Perth = "Australia/Perth"
        case Sydney = "Australia/Sydney"
    }
    
    enum Europe: String, TimeZoneCoordinateRepresentable {
        case Amsterdam = "Europe/Amsterdam"
        case Andorra = "Europe/Andorra"
        case Athens = "Europe/Athens"
        case Astrakhan = "Europe/Astrakhan"
        case Belgrade = "Europe/Belgrade"
        case Berlin = "Europe/Berlin"
        case Bratislava = "Europe/Bratislava"
        case Brussels = "Europe/Brussels"
        case Bucharest = "Europe/Bucharest"
        case Budapest = "Europe/Budapest"
        case Busingen = "Europe/Busingen"
        case Chisinau = "Europe/Chisinau"
        case Copenhagen = "Europe/Copenhagen"
        case Dublin = "Europe/Dublin"
        case Gibraltar = "Europe/Gibraltar"
        case Guernsey = "Europe/Guernsey"
        case Helsinki = "Europe/Helsinki"
        case IsleOfMan = "Europe/Isle_of_Man"
        case Istanbul = "Europe/Istanbul"
        case Jersey = "Europe/Jersey"
        case Kaliningrad = "Europe/Kaliningrad"
        case Kiev = "Europe/Kiev"
        case Kirov = "Europe/Kirov"
        case Lisbon = "Europe/Lisbon"
        case Ljubljana = "Europe/Ljubljana"
        case London = "Europe/London"
        case Luxembourg = "Europe/Luxembourg"
        case Madrid = "Europe/Madrid"
        case Malta = "Europe/Malta"
        case Mariehamn = "Europe/Mariehamn"
        case Minsk = "Europe/Minsk"
        case Monaco = "Europe/Monaco"
        case Moscow = "Europe/Moscow"
        case Oslo = "Europe/Oslo"
        case Paris = "Europe/Paris"
        case Podgorica = "Europe/Podgorica"
        case Prague = "Europe/Prague"
        case Riga = "Europe/Riga"
        case Rome = "Europe/Rome"
        case Samara = "Europe/Samara"
        case SanMarino = "Europe/San_Marino"
        case Sarajevo = "Europe/Sarajevo"
        case Saratov = "Europe/Saratov"
        case Simferopol = "Europe/Simferopol"
        case Skopje = "Europe/Skopje"
        case Sofia = "Europe/Sofia"
        case Stockholm = "Europe/Stockholm"
        case Tallinn = "Europe/Tallinn"
        case Tirane = "Europe/Tirane"
        case Ulyanovsk = "Europe/Ulyanovsk"
        case Uzhgorod = "Europe/Uzhgorod"
        case Vaduz = "Europe/Vaduz"
        case Vatican = "Europe/Vatican"
        case Vienna = "Europe/Vienna"
        case Vilnius = "Europe/Vilnius"
        case Volgograd = "Europe/Volgograd"
        case Warsaw = "Europe/Warsaw"
        case Zagreb = "Europe/Zagreb"
        case Zaporozhye = "Europe/Zaporozhye"
        case Zurich = "Europe/Zurich"
    }
    
    enum Indian: String, TimeZoneCoordinateRepresentable {
        case Comoro = "Indian/Comoro"
        case Maldives = "Indian/Maldives"
        case Antananarivo = "Indian/Antananarivo"
        case Chagos = "Indian/Chagos"
        case Christmas = "Indian/Christmas"
        case Cocos = "Indian/Cocos"
        case Kerguelen = "Indian/Kerguelen"
        case Mahe = "Indian/Mahe"
        case Mauritius = "Indian/Mauritius"
        case Mayotte = "Indian/Mayotte"
        case Reunion = "Indian/Reunion"
    }
    
    enum Pacific: String, TimeZoneCoordinateRepresentable {
        case Efate = "Pacific/Efate"
        case Enderbury = "Pacific/Enderbury"
        case Fakaofo = "Pacific/Fakaofo"
        case Funafuti = "Pacific/Funafuti"
        case Kiritimati = "Pacific/Kiritimati"
        case PagoPago = "Pacific/Pago_Pago"
        case Palau = "Pacific/Palau"
        case Pitcairn = "Pacific/Pitcairn"
        case Ponape = "Pacific/Ponape"
        case PortMoresby = "Pacific/Port_Moresby"
        case Apia = "Pacific/Apia"
        case Auckland = "Pacific/Auckland"
        case Bougainville = "Pacific/Bougainville"
        case Chatham = "Pacific/Chatham"
        case Chuuk = "Pacific/Chuuk"
        case Easter = "Pacific/Easter"
        case Fiji = "Pacific/Fiji"
        case Galapagos = "Pacific/Galapagos"
        case Gambier = "Pacific/Gambier"
        case Guadalcanal = "Pacific/Guadalcanal"
        case Guam = "Pacific/Guam"
        case Honolulu = "Pacific/Honolulu"
        case Johnston = "Pacific/Johnston"
        case Kosrae = "Pacific/Kosrae"
        case Kwajalein = "Pacific/Kwajalein"
        case Majuro = "Pacific/Majuro"
        case Marquesas = "Pacific/Marquesas"
        case Midway = "Pacific/Midway"
        case Nauru = "Pacific/Nauru"
        case Niue = "Pacific/Niue"
        case Norfolk = "Pacific/Norfolk"
        case Noumea = "Pacific/Noumea"
        case Pohnpei = "Pacific/Pohnpei"
        case Rarotonga = "Pacific/Rarotonga"
        case Saipan = "Pacific/Saipan"
        case Tahiti = "Pacific/Tahiti"
        case Tarawa = "Pacific/Tarawa"
        case Tongatapu = "Pacific/Tongatapu"
        case Truk = "Pacific/Truk"
        case Wake = "Pacific/Wake"
        case Wallis = "Pacific/Wallis"
    }
}
