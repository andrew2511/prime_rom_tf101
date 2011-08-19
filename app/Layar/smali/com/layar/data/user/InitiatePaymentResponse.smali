.class public Lcom/layar/data/user/InitiatePaymentResponse;
.super Lcom/layar/data/Response;
.source "InitiatePaymentResponse.java"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 29
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
    invoke-static {p0}, Lcom/layar/data/user/InitiatePaymentResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/InitiatePaymentResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/InitiatePaymentResponse;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/layar/data/user/InitiatePaymentResponse;

    .line 14
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/layar/data/user/InitiatePaymentResponse;-><init>(Lcom/layar/data/Response;)V

    .line 16
    .local v0, response:Lcom/layar/data/user/InitiatePaymentResponse;
    invoke-virtual {v0}, Lcom/layar/data/user/InitiatePaymentResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const-string v1, "URL"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/InitiatePaymentResponse;->setUrl(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/layar/data/user/InitiatePaymentResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/layar/data/user/InitiatePaymentResponse;->url:Ljava/lang/String;

    .line 33
    return-void
.end method
