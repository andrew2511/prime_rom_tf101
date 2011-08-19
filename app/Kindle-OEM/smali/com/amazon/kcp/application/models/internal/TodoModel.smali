.class public Lcom/amazon/kcp/application/models/internal/TodoModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "TodoModel.java"


# static fields
.field public static final PULL_REASON_MANUAL_SYNC:I = 0x0

.field public static final PULL_REASON_NONE:I = 0x1


# instance fields
.field private listCallback:Lcom/amazon/foundation/ICallback;

.field private nextPullTime:Ljava/lang/String;

.field private resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 44
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/models/internal/TodoModel$1;-><init>(Lcom/amazon/kcp/application/models/internal/TodoModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->listCallback:Lcom/amazon/foundation/ICallback;

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->nextPullTime:Ljava/lang/String;

    .line 70
    invoke-super {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->empty()V

    .line 71
    return-void
.end method

.method public getNextPullTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->nextPullTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

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
    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 115
    return-void
.end method

.method public setNextPullTime(Ljava/lang/String;)V
    .locals 0
    .parameter "nextPullTime"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->nextPullTime:Ljava/lang/String;

    .line 107
    return-void
.end method
