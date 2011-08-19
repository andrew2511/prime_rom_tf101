.class public Lcom/amazon/kcp/store/models/internal/CSearchModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "CSearchModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/ISearchModel;


# instance fields
.field private browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

.field private listCallback:Lcom/amazon/foundation/ICallback;

.field private modelType:I

.field private pageNumber:I

.field private pageSize:I

.field private resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field private searchTerm:Ljava/lang/String;

.field private totalItems:I

.field private totalPages:I

.field private totalReceived:I

.field private updateEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private updateItemCallback:Lcom/amazon/foundation/IIntCallback;

.field private viewTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 22
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 24
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CSearchModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CSearchModel$1;-><init>(Lcom/amazon/kcp/store/models/internal/CSearchModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->listCallback:Lcom/amazon/foundation/ICallback;

    .line 32
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CSearchModel$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CSearchModel$2;-><init>(Lcom/amazon/kcp/store/models/internal/CSearchModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateItemCallback:Lcom/amazon/foundation/IIntCallback;

    .line 40
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->searchTerm:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->viewTitle:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/CSearchModel;->empty()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/models/internal/CBrowseModel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 22
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 24
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CSearchModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CSearchModel$1;-><init>(Lcom/amazon/kcp/store/models/internal/CSearchModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->listCallback:Lcom/amazon/foundation/ICallback;

    .line 32
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CSearchModel$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CSearchModel$2;-><init>(Lcom/amazon/kcp/store/models/internal/CSearchModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateItemCallback:Lcom/amazon/foundation/IIntCallback;

    .line 40
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->searchTerm:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->viewTitle:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->modelType:I

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateItemCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/CSearchModel;->empty()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/models/internal/CSearchModel;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method


# virtual methods
.method public empty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 90
    iput-object v2, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->searchTerm:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->viewTitle:Ljava/lang/String;

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->pageSize:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->pageNumber:I

    .line 94
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalItems:I

    .line 95
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalPages:I

    .line 96
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalReceived:I

    .line 99
    invoke-super {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->empty()V

    .line 100
    return-void
.end method

.method public getModelType()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->modelType:I

    return v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->pageNumber:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->pageSize:I

    return v0
.end method

.method public getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getResultListToAdd()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->searchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBooks()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->getTotalBooksCount()I

    move-result v0

    return v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalItems:I

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalPages:I

    return v0
.end method

.method public getTotalReceived()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalReceived:I

    return v0
.end method

.method public getUpdateEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->updateEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getViewTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->viewTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

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

.method public listModified()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 278
    return-void
.end method

.method public setModelType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 189
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->modelType:I

    .line 191
    return-void
.end method

.method public setPageNumber(I)V
    .locals 1
    .parameter "pageNumber"

    .prologue
    .line 171
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->pageNumber:I

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 173
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .parameter "pageSize"

    .prologue
    .line 154
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->pageSize:I

    .line 155
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 1
    .parameter "searchTerm"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->searchTerm:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 120
    return-void
.end method

.method public setTotalItems(I)V
    .locals 1
    .parameter "total"

    .prologue
    .line 207
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalItems:I

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 209
    return-void
.end method

.method public setTotalPages(I)V
    .locals 1
    .parameter "total"

    .prologue
    .line 225
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalPages:I

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 227
    return-void
.end method

.method public setTotalReceived(I)V
    .locals 1
    .parameter "total"

    .prologue
    .line 243
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalReceived:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->totalReceived:I

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 245
    return-void
.end method

.method public setViewTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "viewTitle"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->viewTitle:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 138
    return-void
.end method
