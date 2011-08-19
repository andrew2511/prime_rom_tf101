.class final Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;
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
.field final synthetic val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

.field final synthetic val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kcp/library/models/internal/MetaData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$13;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->remove(Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    .line 368
    return-void
.end method
