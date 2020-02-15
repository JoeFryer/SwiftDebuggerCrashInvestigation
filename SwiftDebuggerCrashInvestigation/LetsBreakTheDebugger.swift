//
//  LetsBreakTheDebugger.swift
//  SwiftDebuggerCrashInvestigation
//
//  Created by Joe Fryer on 15/02/2020.
//  Copyright © 2020 Joe Fryer. All rights reserved.
//

import UIKit

struct Tag {
    let title: String
}

class Row<RowViewType> {
    
}

final class TagRow: Row<TagRowView> {
    let tag: Tag
    
    override init() {
        self.tag = Tag(title: "Some tag")
    }
}


class TagRowView: RowView<Tag> {
    
}

class RowView<DataType>: UIView {
    
}
