.class public Lcom/layar/data/user/FriendsListResponse;
.super Lcom/layar/data/Response;
.source "FriendsListResponse.java"


# instance fields
.field public friendsOnLayar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public friendsOnSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 42
    return-void
.end method

.method public static bridge synthetic parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/layar/data/user/FriendsListResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/FriendsListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/FriendsListResponse;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v4

    .line 18
    .local v4, response:Lcom/layar/data/Response;
    new-instance v5, Lcom/layar/data/user/FriendsListResponse;

    invoke-direct {v5, v4}, Lcom/layar/data/user/FriendsListResponse;-><init>(Lcom/layar/data/Response;)V

    .line 19
    .local v5, resultResponse:Lcom/layar/data/user/FriendsListResponse;
    invoke-virtual {v5}, Lcom/layar/data/user/FriendsListResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/layar/data/user/FriendsListResponse;->friendsOnLayar:Ljava/util/ArrayList;

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/layar/data/user/FriendsListResponse;->friendsOnSource:Ljava/util/ArrayList;

    .line 23
    const-string v6, ""

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 24
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 25
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 33
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return-object v5

    .line 26
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/layar/data/user/Friend;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/Friend;

    move-result-object v2

    .line 27
    .local v2, friend:Lcom/layar/data/user/Friend;
    iget-boolean v6, v2, Lcom/layar/data/user/Friend;->isOnLayar:Z

    if-eqz v6, :cond_2

    .line 28
    iget-object v6, v5, Lcom/layar/data/user/FriendsListResponse;->friendsOnLayar:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_2
    iget-object v6, v5, Lcom/layar/data/user/FriendsListResponse;->friendsOnSource:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
