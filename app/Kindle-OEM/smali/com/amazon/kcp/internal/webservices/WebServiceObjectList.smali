.class public Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "WebServiceObjectList.java"


# instance fields
.field private awaitedCount:I

.field private itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private itemAfterDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private itemBeforeDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private itemUpdateCallbacks:Ljava/util/Vector;

.field private itemUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private list:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdateCallbacks:Ljava/util/Vector;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    .line 36
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 37
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemBeforeDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 38
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAfterDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 39
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->onItemUpdated(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    return-void
.end method

.method private onItemUpdated(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V
    .locals 2
    .parameter "wModel"

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 251
    .end local v0           #index:I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 113
    new-instance v1, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;-><init>(Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 121
    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdateCallbacks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p1}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 123
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 125
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 75
    return-void
.end method

.method public empty()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    if-ne v0, v3, :cond_0

    .line 99
    :goto_0
    return-void

    .line 85
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemBeforeDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdateCallbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/ICallback;

    invoke-interface {v2, v0}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdateCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAfterDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto :goto_1

    .line 97
    :cond_1
    iput v3, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;
    .locals 1
    .parameter "idx"

    .prologue
    .line 166
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-object v0, p0

    .line 172
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getAfterDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAfterDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getAwaitedCount()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    return v0
.end method

.method public getBeforeDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemBeforeDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 2
    .parameter

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemBeforeDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdateCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemUpdateCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->itemAfterDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t remove the item index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from WebServiceObjectList!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setAwaitedCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 156
    iput p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    .line 157
    return-void
.end method

.method public setLoaded()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->awaitedCount:I

    .line 56
    return-void
.end method
