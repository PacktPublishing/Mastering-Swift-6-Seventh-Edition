import Foundation

func performTask(success: () -> Void, failure: () -> Void) {
    let taskSucceeded = Bool.random()
    
    if taskSucceeded {
        success()
    } else {
        failure()
    }
}

performTask {
    print("Task succeeded!")
} failure: {
    print("Task failed!")
}

