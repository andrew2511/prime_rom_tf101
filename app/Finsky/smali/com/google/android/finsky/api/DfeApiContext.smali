.class public Lcom/google/android/finsky/api/DfeApiContext;
.super Ljava/lang/Object;
.source "DfeApiContext.java"


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mCache:Lcom/android/volley/Cache;

.field private final mContext:Landroid/content/Context;

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAuthToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/android/volley/Cache;Ljava/lang/String;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "authenticator"
    .parameter "cache"
    .parameter "appVersionString"
    .parameter "appVersionCode"
    .parameter "locale"
    .parameter "mccmnc"
    .parameter "clientId"
    .parameter "loggingId"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 41
    iput-object p3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mCache:Lcom/android/volley/Cache;

    .line 42
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-Device-Id"

    sget-object v1, Lcom/google/android/finsky/config/G;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "Accept-Language"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-MCCMNC"

    invoke-interface {v1, v2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-Client-Id"

    invoke-interface {v1, v2, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-Logging-Id"

    invoke-interface {v1, v2, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "User-Agent"

    invoke-direct {p0, p4, p5}, Lcom/google/android/finsky/api/DfeApiContext;->makeUserAgentString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    const-string v2, "finsky"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, "content-filter-level"

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/google/android/finsky/config/G;->defaultContentFilterLevel:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, contentFilterLevel:I
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-Filter-Level"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiContext;->checkUrlRules()V

    .line 62
    .end local v0           #contentFilterLevel:I
    :cond_3
    return-void
.end method

.method private checkUrlRules()V
    .locals 5

    .prologue
    .line 68
    sget-object v2, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, uriString:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/volley/toolbox/UrlTools;->rewrite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, rewritten:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASE_URI blocked by UrlRules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->checkUrlIsSecure(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private makeUserAgentString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "versionString"
    .parameter "versionCode"

    .prologue
    const/4 v5, 0x2

    .line 77
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Android-Finsky/%s (api=%d,versionCode=%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->clear()V

    .line 101
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public invalidateAuthToken()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 94
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "[DfeApiContext headers={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, first:Z
    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    .local v1, header:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    .end local v1           #header:Ljava/lang/String;
    :cond_1
    const-string v4, "}]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
