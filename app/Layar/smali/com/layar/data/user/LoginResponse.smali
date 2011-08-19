.class public Lcom/layar/data/user/LoginResponse;
.super Lcom/layar/data/Response;
.source "LoginResponse.java"


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lcom/layar/data/user/User;


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
    invoke-static {p0}, Lcom/layar/data/user/LoginResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/LoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/LoginResponse;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    .line 22
    .local v1, response:Lcom/layar/data/Response;
    new-instance v0, Lcom/layar/data/user/LoginResponse;

    invoke-direct {v0, v1}, Lcom/layar/data/user/LoginResponse;-><init>(Lcom/layar/data/Response;)V

    .line 23
    .local v0, loginResponse:Lcom/layar/data/user/LoginResponse;
    invoke-virtual {v0}, Lcom/layar/data/user/LoginResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const-string v2, "token"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layar/data/user/LoginResponse;->setToken(Ljava/lang/String;)V

    .line 25
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/data/user/User;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layar/data/user/LoginResponse;->setUser(Lcom/layar/data/user/User;)V

    .line 27
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/layar/data/user/LoginResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/layar/data/user/User;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/layar/data/user/LoginResponse;->user:Lcom/layar/data/user/User;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/layar/data/user/LoginResponse;->token:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUser(Lcom/layar/data/user/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/layar/data/user/LoginResponse;->user:Lcom/layar/data/user/User;

    .line 48
    return-void
.end method
