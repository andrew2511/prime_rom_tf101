.class public Lcom/layar/data/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public notificationsCount:I

.field protected responseCode:I

.field protected responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/layar/data/Response;->responseCode:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Lcom/layar/data/Response;->responseCode:I

    iput v0, p0, Lcom/layar/data/Response;->responseCode:I

    .line 57
    iget-object v0, p1, Lcom/layar/data/Response;->responseMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/layar/data/Response;->responseMessage:Ljava/lang/String;

    .line 58
    iget v0, p1, Lcom/layar/data/Response;->notificationsCount:I

    iput v0, p0, Lcom/layar/data/Response;->notificationsCount:I

    .line 59
    return-void
.end method

.method public static generateResponse(I)Ljava/lang/String;
    .locals 2
    .parameter "responseCode"

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, json:Lorg/json/JSONObject;
    const-string v1, "responseCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    .end local v0           #json:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v1

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v2, "errorCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string v2, "errorCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, responseCode:I
    :goto_0
    new-instance v0, Lcom/layar/data/Response;

    invoke-direct {v0, v1}, Lcom/layar/data/Response;-><init>(I)V

    .line 42
    .local v0, response:Lcom/layar/data/Response;
    const-string v2, "errorString"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string v2, "errorString"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/Response;->responseMessage:Ljava/lang/String;

    .line 47
    :goto_1
    const-string v2, "notifications_available"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/layar/data/Response;->notificationsCount:I

    .line 48
    return-object v0

    .line 39
    .end local v0           #response:Lcom/layar/data/Response;
    .end local v1           #responseCode:I
    :cond_0
    const-string v2, "responseCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #responseCode:I
    goto :goto_0

    .line 45
    .restart local v0       #response:Lcom/layar/data/Response;
    :cond_1
    const-string v2, "responseMessage"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/Response;->responseMessage:Ljava/lang/String;

    goto :goto_1
.end method

.method public static success()Lcom/layar/data/Response;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/layar/data/Response;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/layar/data/Response;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/layar/data/Response;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/layar/data/Response;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResponseCode(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 66
    iput p1, p0, Lcom/layar/data/Response;->responseCode:I

    .line 67
    return-void
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "responseMessage"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/layar/data/Response;->responseMessage:Ljava/lang/String;

    .line 75
    return-void
.end method
