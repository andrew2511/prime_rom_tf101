.class final Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$18;
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
.field final synthetic val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$18;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService$18;->val$model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setMinTodoItemRequestInterval(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
