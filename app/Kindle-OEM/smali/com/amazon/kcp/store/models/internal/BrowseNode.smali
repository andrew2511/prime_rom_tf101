.class public Lcom/amazon/kcp/store/models/internal/BrowseNode;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "BrowseNode.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IBrowseNode;


# instance fields
.field private count:I

.field private name:Ljava/lang/String;

.field private nodeId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->empty()V

    .line 21
    return-void
.end method


# virtual methods
.method public cloneModel()Lcom/amazon/kcp/store/models/internal/BrowseNode;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;-><init>()V

    .line 30
    .local v0, browseNodes:Lcom/amazon/kcp/store/models/internal/BrowseNode;
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setName(Ljava/lang/String;)V

    .line 31
    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->count:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setCount(I)V

    .line 32
    iget-wide v1, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->nodeId:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setNodeId(J)V

    .line 34
    return-object v0
.end method

.method public empty()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setName(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setCount(I)V

    .line 44
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->setNodeId(J)V

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->nodeId:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 68
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->count:I

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNodeId(J)V
    .locals 0
    .parameter "nodeId"

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;->nodeId:J

    .line 85
    return-void
.end method
