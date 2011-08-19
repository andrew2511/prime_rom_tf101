.class public Lcom/google/android/common/gesture/GestureControllerSdk4;
.super Lcom/google/android/common/gesture/GestureController;
.source "GestureControllerSdk4.java"


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 27
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk4;->gestureDetector:Landroid/view/GestureDetector;

    .line 28
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk4;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk4;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 30
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk4;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/common/gesture/GestureControllerSdk4;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 40
    return-void
.end method
