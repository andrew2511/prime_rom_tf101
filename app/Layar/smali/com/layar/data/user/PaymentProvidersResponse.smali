.class public Lcom/layar/data/user/PaymentProvidersResponse;
.super Lcom/layar/data/Response;
.source "PaymentProvidersResponse.java"


# instance fields
.field public modifiedAt:J

.field public paymentProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/PaymentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 38
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
    invoke-static {p0}, Lcom/layar/data/user/PaymentProvidersResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/PaymentProvidersResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/PaymentProvidersResponse;
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

    move-result-object v3

    .line 18
    .local v3, response:Lcom/layar/data/Response;
    new-instance v2, Lcom/layar/data/user/PaymentProvidersResponse;

    invoke-direct {v2, v3}, Lcom/layar/data/user/PaymentProvidersResponse;-><init>(Lcom/layar/data/Response;)V

    .line 20
    .local v2, providersResponse:Lcom/layar/data/user/PaymentProvidersResponse;
    invoke-virtual {v2}, Lcom/layar/data/user/PaymentProvidersResponse;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    const-string v4, "modified_at"

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/layar/data/user/PaymentProvidersResponse;->modifiedAt:J

    .line 22
    const-string v4, "providers"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 23
    .local v0, array:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    .line 24
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 29
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    :cond_0
    return-object v2

    .line 25
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v1       #i:I
    :cond_1
    iget-object v4, v2, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/layar/data/user/PaymentProvider;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/PaymentProvider;

    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
