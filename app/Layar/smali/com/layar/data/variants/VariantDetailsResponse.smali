.class public Lcom/layar/data/variants/VariantDetailsResponse;
.super Lcom/layar/data/Response;
.source "VariantDetailsResponse.java"


# instance fields
.field public layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 36
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
    invoke-static {p0}, Lcom/layar/data/variants/VariantDetailsResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/VariantDetailsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/VariantDetailsResponse;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v4

    .line 17
    .local v4, response:Lcom/layar/data/Response;
    new-instance v5, Lcom/layar/data/variants/VariantDetailsResponse;

    invoke-direct {v5, v4}, Lcom/layar/data/variants/VariantDetailsResponse;-><init>(Lcom/layar/data/Response;)V

    .line 18
    .local v5, variantResponse:Lcom/layar/data/variants/VariantDetailsResponse;
    invoke-virtual {v5}, Lcom/layar/data/variants/VariantDetailsResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 19
    const-string v6, "results"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 20
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 21
    .local v3, length:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/layar/data/variants/VariantDetailsResponse;->layers:Ljava/util/ArrayList;

    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 27
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v3           #length:I
    :cond_0
    return-object v5

    .line 23
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v3       #length:I
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/layar/data/layer/Layer20;->parseLayer(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20;

    move-result-object v2

    .line 24
    .local v2, layer:Lcom/layar/data/layer/Layer20;
    iget-object v6, v5, Lcom/layar/data/variants/VariantDetailsResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
