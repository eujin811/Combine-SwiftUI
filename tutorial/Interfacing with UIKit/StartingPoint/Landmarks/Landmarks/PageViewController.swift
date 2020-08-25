//
//  PageViewController.swift
//  Landmarks
//
//  Created by YoujinMac on 2020/07/24.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    @Binding var currentPage: Int
    
    // makeUIViewController보다 먼저 호출된다.
    // 사용자 target-action 제어, 델리게이트 검색, 코코아 페턴, 데이터소스등 여기서!
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    // 뷰를 표시할 준비 되었을 때 한 번만 호출, life cycle관리한다.
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    
    // 앱 상태 변경 시 변경사항을 받는 인터페이스 부분 업데이트함.
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([controllers[currentPage]], direction: .forward, animated: true)
        
    }
    
    
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        
        
        var parent: PageViewController
        
        init(_ pageViewController: PageViewController) {
            self.parent = pageViewController
        }
        
        // DataSouurce
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else { return nil }
            
            if index == 0 {
                return parent.controllers.last
            }
            
            return parent.controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else { return nil }
            
            if index + 1 == parent.controllers.count {
                return parent.controllers.first
            }
            
            return parent.controllers[index + 1]
        }
        
        //Delegate
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            
            if completed, let visibleViewController = pageViewController.viewControllers?.first, let index = parent.controllers.firstIndex(of: visibleViewController) {
                parent.currentPage = index
            }
            
        }
        
    }



}

