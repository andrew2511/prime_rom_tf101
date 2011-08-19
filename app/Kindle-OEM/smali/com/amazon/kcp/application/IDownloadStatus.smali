.class public interface abstract Lcom/amazon/kcp/application/IDownloadStatus;
.super Ljava/lang/Object;
.source "IDownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/IDownloadStatus$Status;
    }
.end annotation


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract getProgress()F
.end method

.method public abstract getStatus()Lcom/amazon/kcp/application/IDownloadStatus$Status;
.end method
