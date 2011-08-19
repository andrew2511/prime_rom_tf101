.class public interface abstract Lcom/layar/data/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDownloaded(I)V
.end method

.method public abstract onDownloadingCanceled()V
.end method

.method public abstract onDownloadingEnded()V
.end method

.method public abstract onDownloadingError(I)V
.end method

.method public abstract onDownloadingStarted()V
.end method

.method public abstract onItemDownloaded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
