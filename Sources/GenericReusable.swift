// The MIT License (MIT)
//
// Copyright (c) 2016 Suyeol Jeon (xoul.kr)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public protocol CellType: class {
}

/// A generic class that represents reusable cells.
public struct GenericCell<Cell: CellType> {
    public typealias Class = Cell

    let identifier: String

    /// Create and returns a new `GenericCell` instance.
    ///
    /// - parameter identifier: A reuse identifier. Use random UUID string if identifier is not provided.
    init(identifier: String? = nil) {
        self.identifier = identifier ?? NSUUID().UUIDString
    }
}

public protocol ViewType: class {
}

/// A generic class that represents reusable views.
public struct GenericView<View: ViewType> {
    public typealias Class = View

    let identifier: String

    /// Create and returns a new `GenericView` instance.
    ///
    /// - parameter identifier: A reuse identifier. Use random UUID string if identifier is not provided.
    init(identifier: String? = nil) {
        self.identifier = identifier ?? NSUUID().UUIDString
    }
}