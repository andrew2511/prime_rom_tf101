.class public Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;
.super Ljava/lang/Object;
.source "HandlerHolder.java"


# static fields
.field public static mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method
