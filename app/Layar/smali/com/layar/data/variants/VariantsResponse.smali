.class public Lcom/layar/data/variants/VariantsResponse;
.super Lcom/layar/data/Response;
.source "VariantsResponse.java"


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/variants/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 35
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
    invoke-static {p0}, Lcom/layar/data/variants/VariantsResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/VariantsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/VariantsResponse;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v3

    .line 16
    .local v3, response:Lcom/layar/data/Response;
    new-instance v5, Lcom/layar/data/variants/VariantsResponse;

    invoke-direct {v5, v3}, Lcom/layar/data/variants/VariantsResponse;-><init>(Lcom/layar/data/Response;)V

    .line 17
    .local v5, variantResponse:Lcom/layar/data/variants/VariantsResponse;
    invoke-virtual {v5}, Lcom/layar/data/variants/VariantsResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 18
    const-string v6, "variants"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 19
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 20
    .local v2, length:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/layar/data/variants/VariantsResponse;->items:Ljava/util/ArrayList;

    .line 21
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 26
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_0
    return-object v5

    .line 22
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/layar/data/variants/Variant;->parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/Variant;

    move-result-object v4

    .line 23
    .local v4, variant:Lcom/layar/data/variants/Variant;
    iget-object v6, v5, Lcom/layar/data/variants/VariantsResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
