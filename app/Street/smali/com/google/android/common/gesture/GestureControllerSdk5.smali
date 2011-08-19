.class public Lcom/google/android/common/gesture/GestureControllerSdk5;
.super Lcom/google/android/common/gesture/GestureController;
.source "GestureControllerSdk5.java"

# interfaces
.implements Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;
.implements Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;


# instance fields
.field private gestureDetector:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

.field private wrappedDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private wrappedListener:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/common/gesture/GestureController;-><init>()V

    return-void
.end method


# virtual methods
.method public initGestureController(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .parameter "c"
    .parameter "listener"
    .parameter "doubleTapListener"

    .prologue
    .line 41
    iput-object p2, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 42
    iput-object p3, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 43
    new-instance v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->gestureDetector:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    .line 44
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->gestureDetector:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-virtual {v0, p0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->setOnDoubleTapListener(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->gestureDetector:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->setIsLongpressEnabled(Z)V

    .line 46
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 97
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 84
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->wrappedListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->gestureDetector:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk5;->gestureDetector:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->setIsLongpressEnabled(Z)V

    .line 58
    return-void
.end method
