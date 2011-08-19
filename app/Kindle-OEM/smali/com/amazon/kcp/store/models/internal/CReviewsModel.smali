.class public Lcom/amazon/kcp/store/models/internal/CReviewsModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "CReviewsModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IReviewsModel;


# instance fields
.field private asin:Ljava/lang/String;

.field private listModifiedCallback:Lcom/amazon/foundation/ICallback;

.field private pageNumber:I

.field private pageSize:I

.field private resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field private totalItems:I

.field private totalPages:I

.field private totalReceived:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CReviewsModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/CReviewsModel$1;-><init>(Lcom/amazon/kcp/store/models/internal/CReviewsModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->listModifiedCallback:Lcom/amazon/foundation/ICallback;

    .line 24
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->listModifiedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->empty()V

    .line 41
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->asin:Ljava/lang/String;

    .line 57
    const/16 v0, 0xa

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->pageSize:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->pageNumber:I

    .line 59
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalItems:I

    .line 60
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalPages:I

    .line 61
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalReceived:I

    .line 64
    invoke-super {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->empty()V

    .line 65
    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->pageNumber:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->pageSize:I

    return v0
.end method

.method public getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalItems:I

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalPages:I

    return v0
.end method

.method public getTotalReceived()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalReceived:I

    return v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

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
    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 193
    return-void
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->asin:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 82
    return-void
.end method

.method public setPageNumber(I)V
    .locals 1
    .parameter "pageNumber"

    .prologue
    .line 114
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->pageNumber:I

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 116
    return-void
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 97
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->pageSize:I

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 99
    return-void
.end method

.method public setTotalItems(I)V
    .locals 1
    .parameter "total"

    .prologue
    .line 131
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalItems:I

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 133
    return-void
.end method

.method public setTotalPages(I)V
    .locals 1
    .parameter "total"

    .prologue
    .line 148
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalPages:I

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 150
    return-void
.end method

.method public setTotalReceived(I)V
    .locals 1
    .parameter "total"

    .prologue
    .line 167
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalReceived:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->totalReceived:I

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 169
    return-void
.end method
