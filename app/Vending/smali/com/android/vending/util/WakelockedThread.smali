.class public Lcom/android/vending/util/WakelockedThread;
.super Ljava/lang/Thread;
.source "WakelockedThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "name"
    .parameter "context"
    .parameter "runnable"

    .prologue
    .line 18
    new-instance v0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method
