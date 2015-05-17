import Foundation

public struct ChordQualities {
public static let Dyads = [
ChordQuality.PowerChord,
]
public static let Triads = [
ChordQuality.Major,
ChordQuality.Minor,
ChordQuality.Augmented,
ChordQuality.Diminished,
ChordQuality.Sus2,
ChordQuality.Sus4,
]
public static let Tetrads = [
ChordQuality.DominantSeventh,
ChordQuality.MajorSeventh,
ChordQuality.MinorMajorSeventh,
ChordQuality.MinorSeventh,
ChordQuality.AugmentedMajorSeventh,
ChordQuality.AugmentedSeventh,
ChordQuality.HalfDiminishedSeventh,
ChordQuality.DiminishedSeventh,
ChordQuality.DominantSeventhFlatFive,
ChordQuality.MajorSeventhFlatFive,
ChordQuality.DominantSeventhSusFour,
ChordQuality.MajorSeventhSusFour,
ChordQuality.MajorSixth,
ChordQuality.MinorSixth,
ChordQuality.AddNine,
ChordQuality.MinorAddNine,
]
public static let Pentads = [
ChordQuality.DominantNinth,
ChordQuality.MajorNinth,
ChordQuality.MinorNinth,
ChordQuality.MinorMajorNinth,
ChordQuality.AugmentedNinth,
ChordQuality.AugmentedMajorNinth,
ChordQuality.HalfDiminishedNinth,
ChordQuality.HalfDiminishedMinorNinth,
ChordQuality.DiminishedNinth,
ChordQuality.DiminishedMinorNinth,
ChordQuality.SixNine,
ChordQuality.Dominant9Sus4,
ChordQuality.DominantSeventhSharpNine,
ChordQuality.MajorSeventhSharpNine,
ChordQuality.AugmentedSeventhSharpNine,
ChordQuality.AugmentedMajorSeventhSharpNine,
ChordQuality.DominantSeventhFlatNine,
ChordQuality.MinorSeventhFlatNine,
ChordQuality.MajorSeventhFlatNine,
ChordQuality.MinorMajorSeventhFlatNine,
ChordQuality.AugmentedSeventhFlatNine,
ChordQuality.AugmentedMajorSeventhFlatNine,
ChordQuality.DominantSeventhSharpEleven,
ChordQuality.MinorSeventhSharpEleven,
ChordQuality.MajorSeventhSharpEleven,
ChordQuality.MinorMajorSeventhSharpEleven,
ChordQuality.AugmentedSeventhSharpEleven,
ChordQuality.AugmentedMajorSeventhSharpEleven,
]
public static let Hexads = [
ChordQuality.DominantEleventh,
ChordQuality.MajorEleventh,
ChordQuality.MinorMajorEleventh,
ChordQuality.MinorEleventh,
ChordQuality.AugmentedMajorEleventh,
ChordQuality.AugmentedEleventh,
ChordQuality.HalfDiminishedEleventh,
ChordQuality.DiminishedEleventh,
ChordQuality.DominantEleventhFlatNine,
ChordQuality.MajorEleventhFlatNine,
ChordQuality.MinorEleventhFlatNine,
ChordQuality.DominantNinthSharpEleven,
ChordQuality.MajorNinthSharpEleven,
ChordQuality.MinorNinthSharpEleven,
]
public static let Heptads = [
ChordQuality.DominantThirteenth,
ChordQuality.MajorThirteenth,
ChordQuality.MinorMajorThirteenth,
ChordQuality.MinorThirteenth,
ChordQuality.AugmentedMajorThirteenth,
ChordQuality.AugmentedThirteenth,
ChordQuality.HalfDiminishedThirteenth,
]
public static let All = [
ChordQuality.PowerChord,
ChordQuality.Major,
ChordQuality.Minor,
ChordQuality.Augmented,
ChordQuality.Diminished,
ChordQuality.Sus2,
ChordQuality.Sus4,
ChordQuality.DominantSeventh,
ChordQuality.MajorSeventh,
ChordQuality.MinorMajorSeventh,
ChordQuality.MinorSeventh,
ChordQuality.AugmentedMajorSeventh,
ChordQuality.AugmentedSeventh,
ChordQuality.HalfDiminishedSeventh,
ChordQuality.DiminishedSeventh,
ChordQuality.DominantSeventhFlatFive,
ChordQuality.MajorSeventhFlatFive,
ChordQuality.DominantSeventhSusFour,
ChordQuality.MajorSeventhSusFour,
ChordQuality.MajorSixth,
ChordQuality.MinorSixth,
ChordQuality.AddNine,
ChordQuality.MinorAddNine,
ChordQuality.DominantNinth,
ChordQuality.MajorNinth,
ChordQuality.MinorNinth,
ChordQuality.MinorMajorNinth,
ChordQuality.AugmentedNinth,
ChordQuality.AugmentedMajorNinth,
ChordQuality.HalfDiminishedNinth,
ChordQuality.HalfDiminishedMinorNinth,
ChordQuality.DiminishedNinth,
ChordQuality.DiminishedMinorNinth,
ChordQuality.SixNine,
ChordQuality.Dominant9Sus4,
ChordQuality.DominantSeventhSharpNine,
ChordQuality.MajorSeventhSharpNine,
ChordQuality.AugmentedSeventhSharpNine,
ChordQuality.AugmentedMajorSeventhSharpNine,
ChordQuality.DominantSeventhFlatNine,
ChordQuality.MinorSeventhFlatNine,
ChordQuality.MajorSeventhFlatNine,
ChordQuality.MinorMajorSeventhFlatNine,
ChordQuality.AugmentedSeventhFlatNine,
ChordQuality.AugmentedMajorSeventhFlatNine,
ChordQuality.DominantSeventhSharpEleven,
ChordQuality.MinorSeventhSharpEleven,
ChordQuality.MajorSeventhSharpEleven,
ChordQuality.MinorMajorSeventhSharpEleven,
ChordQuality.AugmentedSeventhSharpEleven,
ChordQuality.AugmentedMajorSeventhSharpEleven,
ChordQuality.DominantEleventh,
ChordQuality.MajorEleventh,
ChordQuality.MinorMajorEleventh,
ChordQuality.MinorEleventh,
ChordQuality.AugmentedMajorEleventh,
ChordQuality.AugmentedEleventh,
ChordQuality.HalfDiminishedEleventh,
ChordQuality.DiminishedEleventh,
ChordQuality.DominantEleventhFlatNine,
ChordQuality.MajorEleventhFlatNine,
ChordQuality.MinorEleventhFlatNine,
ChordQuality.DominantNinthSharpEleven,
ChordQuality.MajorNinthSharpEleven,
ChordQuality.MinorNinthSharpEleven,
ChordQuality.DominantThirteenth,
ChordQuality.MajorThirteenth,
ChordQuality.MinorMajorThirteenth,
ChordQuality.MinorThirteenth,
ChordQuality.AugmentedMajorThirteenth,
ChordQuality.AugmentedThirteenth,
ChordQuality.HalfDiminishedThirteenth,
]
}