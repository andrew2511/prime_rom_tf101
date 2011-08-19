.class public Lcom/google/android/common/gesture/MultiTouchControllerSdk4;
.super Lcom/google/android/common/gesture/MultiTouchController;
.source "MultiTouchControllerSdk4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/common/gesture/MultiTouchController;-><init>()V

    return-void
.end method


# virtual methods
.method protected initMultiTouchListenerInternal(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 19
    return-void
.end method

.method public isMultiTouchSupported()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setMultiTouchSupported(Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter "packageManager"

    .prologue
    .line 24
    return-void
.end method
