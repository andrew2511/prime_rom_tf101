.class public Lcom/android/vending/api/RequestManager$AccountRequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AccountRequestManager"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mIsProcessedFromCache:Z

.field protected mNotifiedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

.field protected mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->this$0:Lcom/android/vending/api/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mAccount:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->reset()V

    .line 110
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getListener()Lcom/android/vending/api/RequestManager$ResponseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/api/RequestManager$ResponseListener;->clearResponse()V

    .line 130
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public declared-synchronized doRequests()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mIsProcessedFromCache:Z

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->doRequestsFromCache(Z)Z

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v0}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isAllCachedOrPostponed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->this$0:Lcom/android/vending/api/RequestManager;

    iget-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/api/RequestManager;->access$200(Lcom/android/vending/api/RequestManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doRequestsFromCache(Z)Z
    .locals 9
    .parameter "checkDiskToo"

    .prologue
    const/4 v2, 0x1

    .line 135
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 158
    :goto_0
    return v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->this$0:Lcom/android/vending/api/RequestManager;

    invoke-static {v0}, Lcom/android/vending/api/RequestManager;->access$000(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/RequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/RequestDispatcher;->createContext(Ljava/util/List;)Lcom/android/vending/api/RequestDispatcher$RequestContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    .line 139
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->this$0:Lcom/android/vending/api/RequestManager;

    invoke-static {v0}, Lcom/android/vending/api/RequestManager;->access$000(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/RequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/api/RequestDispatcher;->performRequestsFromCache(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V

    .line 140
    iput-boolean v2, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mIsProcessedFromCache:Z

    .line 142
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 143
    .local v7, request:Lcom/android/vending/api/RequestManager$BatchRequest;
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->this$0:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/api/RequestManager;->access$100(Lcom/android/vending/api/RequestManager;Lcom/android/vending/model/BaseResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager$BatchRequest;->getListener()Lcom/android/vending/api/RequestManager$ResponseListener;

    move-result-object v0

    invoke-interface {v0, v7, v2}, Lcom/android/vending/api/RequestManager$ResponseListener;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 146
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    .end local v7           #request:Lcom/android/vending/api/RequestManager$BatchRequest;
    :cond_3
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v0}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isAllCachedOrPostponed()Z

    move-result v8

    .line 152
    .local v8, wasProcessedCompletelyFromCache:Z
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v0}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isAsyncRequestNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    new-instance v0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;

    iget-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->this$0:Lcom/android/vending/api/RequestManager;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;-><init>(Lcom/android/vending/api/RequestManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V

    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->execute()V

    .line 155
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->reset()V

    :cond_4
    move v0, v8

    .line 158
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iput-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequests:Ljava/util/ArrayList;

    .line 119
    iput-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mIsProcessedFromCache:Z

    .line 121
    iput-object v1, p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    .line 122
    return-void
.end method
