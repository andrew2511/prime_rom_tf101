.class public Lcom/amazon/kcp/store/models/internal/CDetailsModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "CDetailsModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IDetailsModel;


# instance fields
.field private asin:Ljava/lang/String;

.field private listCallback:Lcom/amazon/foundation/ICallback;

.field private resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field private title:Ljava/lang/String;

.field private totalItems:I

.field private totalPages:I

.field private totalReceived:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 19
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CDetailsModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel$1;-><init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->listCallback:Lcom/amazon/foundation/ICallback;

    .line 27
    iput-object v2, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->asin:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->title:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalItems:I

    .line 40
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalPages:I

    .line 41
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalReceived:I

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/models/IBookDetails;)V
    .locals 1
    .parameter "bookDetails"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    check-cast p1, Lcom/amazon/kcp/store/models/internal/BookDetails;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 53
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 67
    iput-object v2, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->asin:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->title:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalItems:I

    .line 70
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalPages:I

    .line 71
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalReceived:I

    .line 74
    invoke-super {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->empty()V

    .line 75
    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/IBookDetails;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->asin:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookDetail()Lcom/amazon/kcp/store/models/IBookDetails;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/models/IBookDetails;

    return-object p0
.end method

.method public getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getResultListToAdd()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/IBookDetails;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBookDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->title:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalItems:I

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalPages:I

    return v0
.end method

.method public getTotalReceived()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalReceived:I

    return v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

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
    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 211
    return-void
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->asin:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->title:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 113
    return-void
.end method

.method public setTotalItems(I)V
    .locals 1
    .parameter "totalItems"

    .prologue
    .line 133
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalItems:I

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 135
    return-void
.end method

.method public setTotalPages(I)V
    .locals 1
    .parameter "totalPages"

    .prologue
    .line 150
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalPages:I

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 152
    return-void
.end method

.method public setTotalReceived(I)V
    .locals 1
    .parameter "totalReceived"

    .prologue
    .line 167
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->totalReceived:I

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 169
    return-void
.end method
