.class final Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$7;
.super Ljava/lang/Object;
.source "SyncMetadataWebService.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$7;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$7;->val$metaData:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/internal/MetaData;->setPublicationDate(Ljava/lang/String;)V

    .line 289
    return-void
.end method
