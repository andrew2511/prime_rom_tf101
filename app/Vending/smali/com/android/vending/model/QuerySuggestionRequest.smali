.class public Lcom/android/vending/model/QuerySuggestionRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "QuerySuggestionRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->QUERY_SUGGESTION_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 16
    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->SUGGEST_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/android/vending/model/QuerySuggestionRequest;
    .locals 2
    .parameter "query"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 24
    return-object p0
.end method

.method public setRequestType(I)Lcom/android/vending/model/QuerySuggestionRequest;
    .locals 2
    .parameter "requestType"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 29
    return-object p0
.end method
