//
//  LetsBreakTheDebugger.swift
//  SwiftDebuggerCrashInvestigation
//
//  Created by Joe Fryer on 15/02/2020.
//  Copyright © 2020 Joe Fryer. All rights reserved.
//

import UIKit


class Row<RowViewType> {
    
}

final class TagRow: Row<TagRowView> {
    struct Tag {
        let title: String
    }
    
    let tag: Tag
    
    override init() {
        self.tag = Tag(title: "Some tag")
    }
}


class TagRowView: RowView<TagRow.Tag> {
    
}

class RowView<DataType>: UIView {
    
}
