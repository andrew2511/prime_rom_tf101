.class Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/system/AndroidUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoinableRunnable"
.end annotation


# instance fields
.field private final inner:Ljava/lang/Runnable;

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "inner"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;->inner:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 29
    return-void
.end method


# virtual methods
.method public join()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-nez v0, :cond_0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;->inner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    iget-object v0, p0, Lcom/amazon/android/system/AndroidUtilities$JoinableRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 36
    return-void
.end method
