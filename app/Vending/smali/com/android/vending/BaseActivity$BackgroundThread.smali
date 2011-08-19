.class public final Lcom/android/vending/BaseActivity$BackgroundThread;
.super Ljava/lang/Thread;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackgroundThread"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1477
    new-instance v0, Lcom/android/vending/BaseActivity$BackgroundThread$1;

    invoke-direct {v0, p1}, Lcom/android/vending/BaseActivity$BackgroundThread$1;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1483
    return-void
.end method
