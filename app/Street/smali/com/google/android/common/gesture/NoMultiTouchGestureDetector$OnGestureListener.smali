.class public interface abstract Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;
.super Ljava/lang/Object;
.source "NoMultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGestureListener"
.end annotation


# virtual methods
.method public abstract onDown(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onShowPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method
