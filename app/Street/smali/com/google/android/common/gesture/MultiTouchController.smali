.class public abstract Lcom/google/android/common/gesture/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# static fields
.field private static instance:Lcom/google/android/common/gesture/MultiTouchController;


# instance fields
.field protected multiTouchListener:Lcom/google/android/common/gesture/MultiTouchListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static constructInstance(Ljava/lang/String;)Lcom/google/android/common/gesture/MultiTouchController;
    .locals 2
    .parameter

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/common/gesture/MultiTouchController;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/common/gesture/MultiTouchController;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :catch_2
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Lcom/google/android/common/gesture/MultiTouchController;
    .locals 3

    .prologue
    .line 41
    sget-object v1, Lcom/google/android/common/gesture/MultiTouchController;->instance:Lcom/google/android/common/gesture/MultiTouchController;

    if-nez v1, :cond_0

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 56
    const-string v0, "com.google.android.common.gesture.MultiTouchControllerSdk5"

    .line 60
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/google/android/common/gesture/MultiTouchController;->constructInstance(Ljava/lang/String;)Lcom/google/android/common/gesture/MultiTouchController;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/gesture/MultiTouchController;->instance:Lcom/google/android/common/gesture/MultiTouchController;

    .line 63
    .end local v0           #className:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/google/android/common/gesture/MultiTouchController;->instance:Lcom/google/android/common/gesture/MultiTouchController;

    return-object v1

    .line 58
    :cond_1
    const-string v0, "com.google.android.common.gesture.MultiTouchControllerSdk4"

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final initMultiTouchListener(Landroid/content/Context;Lcom/google/android/common/gesture/MultiTouchListener;)V
    .locals 0
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 93
    iput-object p2, p0, Lcom/google/android/common/gesture/MultiTouchController;->multiTouchListener:Lcom/google/android/common/gesture/MultiTouchListener;

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/common/gesture/MultiTouchController;->initMultiTouchListenerInternal(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method protected abstract initMultiTouchListenerInternal(Landroid/content/Context;)V
.end method

.method public abstract isMultiTouchSupported()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setMultiTouchSupported(Landroid/content/pm/PackageManager;)V
.end method
