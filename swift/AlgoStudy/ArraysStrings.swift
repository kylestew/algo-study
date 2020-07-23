import Foundation

struct ArraysStrings {

    /// Assuming only ASCII character set
    /// Time: O(n) (arguably O(1))
    /// Space: O(1)
    static func allCharactersUnique(_ str: String) -> Bool {
        guard str.count <= 128 else {
            // ASCII character set is 128 character, more would require repeats
            return false
        }

        // build up a flag array for each char index
        var bits = Array.init(repeating: false, count: 128)
        for char in str.compactMap(\.asciiValue) {
            let idx = Int(char)
            if bits[idx] == true {
                // found repeating character
                return false
            }
            bits[idx] = true
        }
        return true
    }


}
