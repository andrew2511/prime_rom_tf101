.class final Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$4;
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
    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$4;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice$4;->val$browseNode:Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setName(Ljava/lang/String;)V

    .line 178
    return-void
.end method
