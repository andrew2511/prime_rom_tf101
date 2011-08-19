.class public abstract Lcom/google/android/common/gesture/GestureController;
.super Ljava/lang/Object;
.source "GestureController.java"


# static fields
.field private static instance:Lcom/google/android/common/gesture/GestureController;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static constructInstance(Ljava/lang/String;)Lcom/google/android/common/gesture/GestureController;
    .locals 2
    .parameter

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/common/gesture/GestureController;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/common/gesture/GestureController;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_2
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Lcom/google/android/common/gesture/GestureController;
    .locals 3

    .prologue
    .line 37
    sget-object v1, Lcom/google/android/common/gesture/GestureController;->instance:Lcom/google/android/common/gesture/GestureController;

    if-nez v1, :cond_0

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 52
    const-string v0, "com.google.android.common.gesture.GestureControllerSdk5"

    .line 57
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/google/android/common/gesture/GestureController;->constructInstance(Ljava/lang/String;)Lcom/google/android/common/gesture/GestureController;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/gesture/GestureController;->instance:Lcom/google/android/common/gesture/GestureController;

    .line 60
    .end local v0           #className:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/google/android/common/gesture/GestureController;->instance:Lcom/google/android/common/gesture/GestureController;

    return-object v1

    .line 55
    :cond_1
    const-string v0, "com.google.android.common.gesture.GestureControllerSdk4"

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public abstract initGestureController(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setIsLongpressEnabled(Z)V
.end method
