.class public Lcom/layar/data/user/ResetPasswordResponse;
.super Lcom/layar/data/Response;
.source "ResetPasswordResponse.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 20
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
    invoke-static {p0}, Lcom/layar/data/user/ResetPasswordResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/ResetPasswordResponse;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/layar/data/user/ResetPasswordResponse;

    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layar/data/user/ResetPasswordResponse;-><init>(Lcom/layar/data/Response;)V

    return-object v0
.end method
