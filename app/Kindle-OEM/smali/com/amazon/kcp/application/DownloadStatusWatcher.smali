.class public Lcom/amazon/kcp/application/DownloadStatusWatcher;
.super Ljava/lang/Object;
.source "DownloadStatusWatcher.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDownloadStatusWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;
    }
.end annotation


# instance fields
.field private downloadStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;",
            "Lcom/amazon/kcp/application/IDownloadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher;->downloadStatusMap:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 114
    iget-object v2, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher;->downloadStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/IDownloadStatus;

    .line 116
    .local v1, result:Lcom/amazon/kcp/application/IDownloadStatus;
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDownloadStatus;->cleanUp()V

    goto :goto_0

    .line 119
    .end local v1           #result:Lcom/amazon/kcp/application/IDownloadStatus;
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher;->downloadStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 120
    return-void
.end method

.method public getStatusFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus;
    .locals 3
    .parameter "asin"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/store/StatusNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "asin cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;-><init>(Lcom/amazon/kcp/application/DownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, key:Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;
    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher;->downloadStatusMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Lcom/amazon/kcp/store/StatusNotFoundException;

    invoke-direct {v1}, Lcom/amazon/kcp/store/StatusNotFoundException;-><init>()V

    throw v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher;->downloadStatusMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/application/IDownloadStatus;

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/IDownloadStatus;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asin cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    if-nez p3, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher;->downloadStatusMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;-><init>(Lcom/amazon/kcp/application/DownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
