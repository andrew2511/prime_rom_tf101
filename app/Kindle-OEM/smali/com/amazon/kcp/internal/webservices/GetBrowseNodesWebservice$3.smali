.class final Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;
.super Ljava/lang/Object;
.source "GetBrowseNodesWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


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

.field final synthetic val$model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/BrowseNode;Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;->val$model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;->val$model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$3;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->cloneModel()Lcom/amazon/kcp/store/models/internal/BrowseNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 166
    :cond_0
    return-void
.end method
