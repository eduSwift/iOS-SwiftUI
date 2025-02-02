//
//  String+Extensions.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 02.02.25.
//

import Foundation

extension String {
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
