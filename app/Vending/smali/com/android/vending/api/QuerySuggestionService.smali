.class public Lcom/android/vending/api/QuerySuggestionService;
.super Lcom/android/vending/api/BaseService;
.source "QuerySuggestionService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 0
    .parameter "request"
    .parameter "isCached"

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 21
    return-void
.end method

.method public queueSuggestionRequest(Lcom/android/vending/model/QuerySuggestionRequest;)Lcom/android/vending/model/QuerySuggestionResponse;
    .locals 1
    .parameter "request"

    .prologue
    .line 24
    new-instance v0, Lcom/android/vending/model/QuerySuggestionResponse;

    invoke-direct {v0}, Lcom/android/vending/model/QuerySuggestionResponse;-><init>()V

    .line 25
    .local v0, response:Lcom/android/vending/model/QuerySuggestionResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/QuerySuggestionService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 26
    return-object v0
.end method
