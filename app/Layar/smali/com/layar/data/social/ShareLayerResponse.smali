.class public Lcom/layar/data/social/ShareLayerResponse;
.super Lcom/layar/data/Response;
.source "ShareLayerResponse.java"


# static fields
.field public static final RESPONSE_OK:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 30
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
    invoke-static {p0}, Lcom/layar/data/social/ShareLayerResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/social/ShareLayerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/social/ShareLayerResponse;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/layar/data/social/ShareLayerResponse;

    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layar/data/social/ShareLayerResponse;-><init>(Lcom/layar/data/Response;)V

    return-object v0
.end method
