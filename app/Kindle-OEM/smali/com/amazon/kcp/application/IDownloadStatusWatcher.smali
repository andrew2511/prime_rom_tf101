.class public interface abstract Lcom/amazon/kcp/application/IDownloadStatusWatcher;
.super Ljava/lang/Object;
.source "IDownloadStatusWatcher.java"


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract getStatusFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/store/StatusNotFoundException;
        }
    .end annotation
.end method

.method public abstract setStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/IDownloadStatus;)V
.end method
