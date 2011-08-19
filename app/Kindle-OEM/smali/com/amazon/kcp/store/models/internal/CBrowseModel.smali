.class public Lcom/amazon/kcp/store/models/internal/CBrowseModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "CBrowseModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IBrowseModel;


# instance fields
.field private ancestorCount:I

.field private ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field private bookCount:I

.field private childCount:I

.field private currentNodeId:J

.field private isRootBrowseNode:Z

.field private listCallback:Lcom/amazon/foundation/ICallback;

.field private parentNodeName:Ljava/lang/String;

.field private resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->isRootBrowseNode:Z

    .line 22
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 27
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 32
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->bookCount:I

    .line 35
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorCount:I

    .line 36
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->childCount:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->currentNodeId:J

    .line 40
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CBrowseModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel$1;-><init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->listCallback:Lcom/amazon/foundation/ICallback;

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 56
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "isRootBrowseNode"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->isRootBrowseNode:Z

    .line 65
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 82
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->bookCount:I

    .line 83
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorCount:I

    .line 84
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->childCount:I

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->currentNodeId:J

    .line 90
    invoke-super {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->empty()V

    .line 91
    return-void
.end method

.method public getAncestorCount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorCount:I

    return v0
.end method

.method public getAncestorList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getAncestorListToAdd()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->childCount:I

    return v0
.end method

.method public getNodeId()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->isRootBrowseNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->getNodeId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->currentNodeId:J

    .line 203
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->currentNodeId:J

    return-wide v0
.end method

.method public getParentNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->isRootBrowseNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->parentNodeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getResultListToAdd()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getRootBrowseNode()Lcom/amazon/kcp/store/models/internal/BrowseNode;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/store/models/internal/BrowseNode;

    move-object v0, p0

    .line 273
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalBooksCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/internal/BrowseNode;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/BrowseNode;->getCount()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->bookCount:I

    .line 236
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->bookCount:I

    return v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootBrowseNode()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->isRootBrowseNode:Z

    return v0
.end method

.method public onListModified()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 145
    return-void
.end method

.method public setAncestorCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 152
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->ancestorCount:I

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 154
    return-void
.end method

.method public setChildCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 169
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->childCount:I

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 171
    return-void
.end method

.method public setNodeId(J)V
    .locals 1
    .parameter "nodeId"

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->currentNodeId:J

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 189
    return-void
.end method

.method public setParentNodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "parentNodeName"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->parentNodeName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setTotalBooksCount(I)V
    .locals 1
    .parameter "newCount"

    .prologue
    .line 220
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->bookCount:I

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 222
    return-void
.end method
