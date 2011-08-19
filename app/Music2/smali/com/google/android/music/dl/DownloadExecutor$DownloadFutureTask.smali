.class Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "DownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private final mTask:Lcom/google/android/music/dl/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/DownloadTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 398
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->mTask:Lcom/google/android/music/dl/DownloadTask;

    .line 399
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 400
    return-void
.end method


# virtual methods
.method public getOrder()Lcom/google/android/music/dl/DownloadOrder;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method public getTask()Lcom/google/android/music/dl/DownloadTask;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->mTask:Lcom/google/android/music/dl/DownloadTask;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadFutureTask for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
