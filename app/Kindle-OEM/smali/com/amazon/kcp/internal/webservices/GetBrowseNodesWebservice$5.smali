.class final Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$5;
.super Ljava/lang/Object;
.source "GetBrowseNodesWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;->getNewBrowseNodesDescriber(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$5;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$5;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setNodeId(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
