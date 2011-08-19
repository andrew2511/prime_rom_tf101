.class public Lorg/scribe/builder/ServiceBuilder;
.super Ljava/lang/Object;
.source "ServiceBuilder.java"


# instance fields
.field private api:Lorg/scribe/builder/api/Api;

.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "oob"

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private createApi(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/api/Api;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, apiClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/scribe/builder/api/Api;>;"
    const-string v2, "Api class cannot be null"

    invoke-static {p1, v2}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/scribe/builder/api/Api;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, api:Lorg/scribe/builder/api/Api;
    return-object v0

    .line 52
    .end local v0           #api:Lorg/scribe/builder/api/Api;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 54
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lorg/scribe/exceptions/OAuthException;

    const-string v3, "Error while creating the Api object"

    invoke-direct {v2, v3, v1}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "apiKey"

    .prologue
    .line 80
    const-string v0, "Invalid Api key"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "apiSecret"

    .prologue
    .line 93
    const-string v0, "Invalid Api secret"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public build()Lorg/scribe/oauth/OAuthService;
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    const-string v1, "You must specify a valid api through the provider() method"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    const-string v1, "You must provide an api key"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    const-string v1, "You must provide an api secret"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    new-instance v1, Lorg/scribe/model/OAuthConfig;

    iget-object v2, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    iget-object v4, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/scribe/builder/ServiceBuilder;->scope:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/scribe/builder/api/Api;->createService(Lorg/scribe/model/OAuthConfig;Ljava/lang/String;)Lorg/scribe/oauth/OAuthService;

    move-result-object v0

    return-object v0
.end method

.method public callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "callback"

    .prologue
    .line 67
    const-string v0, "Callback must be a valid URL or \'oob\'"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkValidOAuthCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/ServiceBuilder;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, apiClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/scribe/builder/api/Api;>;"
    invoke-direct {p0, p1}, Lorg/scribe/builder/ServiceBuilder;->createApi(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    .line 41
    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "scope"

    .prologue
    .line 106
    const-string v0, "Invalid OAuth scope"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->scope:Ljava/lang/String;

    .line 108
    return-object p0
.end method
