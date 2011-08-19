.class final Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$12;
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
.field final synthetic val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$12;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$12;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->setLoaded()V

    .line 357
    return-void
.end method
