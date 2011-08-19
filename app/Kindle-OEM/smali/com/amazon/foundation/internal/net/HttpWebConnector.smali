.class public Lcom/amazon/foundation/internal/net/HttpWebConnector;
.super Ljava/lang/Object;
.source "HttpWebConnector.java"

# interfaces
.implements Lcom/amazon/foundation/internal/net/LightWebConnector;


# instance fields
.field private connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

.field private requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

.field private synchronizationUtilities:Lcom/amazon/system/util/Utilities;


# direct methods
.method public constructor <init>(Lcom/amazon/system/net/HttpConnectionFactory;Lcom/amazon/system/util/Utilities;)V
    .locals 2
    .parameter "connectionFactory"
    .parameter "synchronizationUtilities"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    .line 41
    iput-object p2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->synchronizationUtilities:Lcom/amazon/system/util/Utilities;

    .line 42
    new-instance v0, Lcom/amazon/foundation/internal/QueueableRequestManager;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnectionFactory;->getMaxParallelConnections()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/QueueableRequestManager;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    .line 43
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/net/WebConnectorRequest;
    .locals 1
    .parameter "url"
    .parameter "responseStream"
    .parameter "statusTracker"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/foundation/internal/net/HttpWebConnector;->createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    move-result-object v0

    return-object v0
.end method

.method public createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/foundation/internal/net/WebConnectorRequest;
    .locals 7
    .parameter "url"
    .parameter "responseStream"
    .parameter "statusTracker"
    .parameter "numRetry"

    .prologue
    .line 66
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->synchronizationUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v5, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    iget-object v6, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;-><init>(Lcom/amazon/system/util/Utilities;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/QueueableRequestManager;Lcom/amazon/system/net/HttpConnectionFactory;)V

    return-object v0
.end method

.method public createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;)Lcom/amazon/foundation/internal/net/WebConnectorRequest;
    .locals 6
    .parameter "url"
    .parameter "responseStream"
    .parameter "statusTracker"
    .parameter "headers"

    .prologue
    .line 60
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/foundation/internal/net/HttpWebConnector;->createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    move-result-object v0

    return-object v0
.end method

.method public createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/foundation/internal/net/WebConnectorRequest;
    .locals 9
    .parameter "url"
    .parameter "responseStream"
    .parameter "statusTracker"
    .parameter "headers"
    .parameter "numRetry"

    .prologue
    .line 73
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->synchronizationUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v5, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    iget-object v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnector;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;-><init>(Lcom/amazon/system/util/Utilities;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/QueueableRequestManager;Ljava/util/Hashtable;Lcom/amazon/system/net/HttpConnectionFactory;I)V

    return-object v0
.end method
