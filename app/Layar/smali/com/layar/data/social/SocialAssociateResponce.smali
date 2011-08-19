.class public Lcom/layar/data/social/SocialAssociateResponce;
.super Lcom/layar/data/Response;
.source "SocialAssociateResponce.java"


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/layar/data/Response;-><init>(I)V

    .line 17
    invoke-virtual {p1}, Lcom/layar/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/data/social/SocialAssociateResponce;->setResponseMessage(Ljava/lang/String;)V

    .line 18
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
    invoke-static {p0}, Lcom/layar/data/social/SocialAssociateResponce;->parse(Lorg/json/JSONObject;)Lcom/layar/data/social/SocialAssociateResponce;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/social/SocialAssociateResponce;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/layar/data/social/SocialAssociateResponce;

    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layar/data/social/SocialAssociateResponce;-><init>(Lcom/layar/data/Response;)V

    .line 23
    .local v0, response:Lcom/layar/data/social/SocialAssociateResponce;
    invoke-virtual {v0}, Lcom/layar/data/social/SocialAssociateResponce;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/social/SocialAssociateResponce;->url:Ljava/lang/String;

    .line 26
    :cond_0
    return-object v0
.end method
