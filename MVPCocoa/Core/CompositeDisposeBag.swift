//
//  CompositeDisposeBag.swift
//  MVPCocoa
//
//  Created by Fatih Şen on 25.11.2018.
//  Copyright © 2018 Open Source. All rights reserved.
//

import Foundation
import RxSwift

public class CompositeDisposeBag {
	
	private var bag = Array<Disposable>()
	
	public init() { }
	
	public func add(_ disposable: Disposable) {
		bag.append(disposable)
	}
	
	public func clear() {
		bag.forEach { disposable in
			disposable.dispose()
		}
		bag.removeAll()
	}
	
	public static func += (bag: CompositeDisposeBag, d: Disposable) {
		bag.add(d)
	}
}
