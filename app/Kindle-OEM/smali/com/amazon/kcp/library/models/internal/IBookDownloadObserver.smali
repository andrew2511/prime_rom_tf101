.class public interface abstract Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;
.super Ljava/lang/Object;
.source "IBookDownloadObserver.java"


# virtual methods
.method public abstract onDownloadAdded(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
.end method

.method public abstract onDownloadProgressChanged()V
.end method

.method public abstract onDownloadStateChanged()V
.end method

.method public abstract onLicenseCountError()V
.end method

.method public abstract onTodoError()V
.end method

.method public abstract onTodoProcessed()V
.end method
