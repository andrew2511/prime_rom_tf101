.class final Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;
.super Ljava/lang/Object;
.source "SyncMetadataWebService.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->getNewSyncMetadataDescriber(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$asinSet:Ljava/util/Set;

.field final synthetic val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

.field final synthetic val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/internal/MetaData;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$asinSet:Ljava/util/Set;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    iput-object p3, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$asinSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->cloneModel()Lcom/amazon/kcp/library/models/internal/MetaData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping duplicate metadata item with asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$3;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
