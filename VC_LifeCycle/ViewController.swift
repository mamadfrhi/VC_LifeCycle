//
//  ViewController.swift
//  VC_LifeCycle
//
//  Created by iMamad on 5/2/22.
//

import UIKit

import UIKit

class ViewController: UIViewController {

    // MARK: - 1
    override func loadView() {
        super.loadView()
        // just called when we're using views in code
        // we must load custom view to the VC's view here
        // e.g. self.view = CustomView()
    }
    
    // MARK: - 2
    override func viewDidLoad() {
        super.viewDidLoad()
        // view doesn't have bounds and orientation yet, so don't play with view size
        // good 4: tasks that must be done just 1 time like network calls
    }
    
    // MARK: - 3
    // before APPEAR
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // called before make view visible to the user
        // view has bound and NO orientation
        // good 4: disable and enable textfields - not change sizes
    }
    
    // MARK: - 4
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // when view's bounds change, the view adjust position of its subviews
        // good 4: make change before the view lays out its subviews.
    }
    
    // MARK: - 5
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // when? after VC has been adjusting its subviews regarding a change on its bound
        // good 4: change subviews when they have been set
    }
    
    // MARK: - 6
    // after APPEAR
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // when? after the view present on the screen
        // good 4: save data - start animation - play video or sound
    }
    
    // MARK: - 7
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // when? before view is removed from view hierarchy (still view is there in hierarchy)
        // good 4: handle timers, hide keyboard, cancel network request, revert any changes to the parent UI, save state
    }
    
    //MARK: - 8
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // when? after VC's view has been removed from view hierarchy
        // good 4: stop listening to sensors and notifications
    }
    
    //MARK: - 9
    deinit {
        // when? before VC removed from memory
        // good 4: clean resources that VC has allocated and ARC can't free
        // Keep in mind that just because a VC is no longer visible, doesn’t mean that it has been deallocated. Container view controllers such as NavigationController can keep their VCs available in memory. Keep in mind that even though a VC is off-screen, if it is still in memory, it still works normally and can receive notifications.
    }
    
}

