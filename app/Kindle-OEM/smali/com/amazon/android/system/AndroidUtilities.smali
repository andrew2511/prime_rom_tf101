.class public Lcom/amazon/android/system/AndroidUtilities;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Lcom/amazon/system/Utilities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;
    }
.end annotation


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field private volatile mainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->mainLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->mainLooper:Landroid/os/Looper;

    .line 65
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->mainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/android/system/AndroidUtilities;->mainLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->handler:Landroid/os/Handler;

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public hasEventThread()Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazon/android/system/AndroidUtilities;->initialize()V

    .line 76
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->mainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeAndWait(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/amazon/android/system/AndroidUtilities;->initialize()V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/android/system/AndroidUtilities;->isEventThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;

    invoke-direct {v0, p1}, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 99
    iget-object v1, p0, Lcom/amazon/android/system/AndroidUtilities;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    invoke-virtual {v0}, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;->join()V

    goto :goto_0
.end method

.method public invokeLater(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/amazon/android/system/AndroidUtilities;->initialize()V

    .line 108
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public isEventThread()Z
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/amazon/android/system/AndroidUtilities;->initialize()V

    .line 83
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities;->mainLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
