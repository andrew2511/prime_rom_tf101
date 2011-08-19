.class public Lcom/layar/data/user/PaymentsManager;
.super Ljava/lang/Object;
.source "PaymentsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;,
        Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;,
        Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;
    }
.end annotation


# static fields
.field public static final PAYMENT_INITIATE_URL:Ljava/lang/String; = "/payments/api/initiate/"

.field public static final PAYMENT_PROVIDERS_URL:Ljava/lang/String; = "/payments/api/providerlist/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGetListTask:Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/PaymentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;

.field private wasSuccessfulRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/layar/data/user/PaymentsManager;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/user/PaymentsManager;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mProviders:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mHandlers:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/user/PaymentsManager;->wasSuccessfulRequest:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mGetListTask:Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

    .line 47
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/user/PaymentsManager;->preferences:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/layar/data/user/PaymentsManager;->loadPaymentProviders(Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/data/user/PaymentsManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/data/user/PaymentsManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/layar/data/user/PaymentsManager;->wasSuccessfulRequest:Z

    return-void
.end method

.method static synthetic access$3(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/layar/data/user/PaymentsManager;->mGetListTask:Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/layar/data/user/PaymentsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private load()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mGetListTask:Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;-><init>(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;)V

    iput-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mGetListTask:Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

    .line 79
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mGetListTask:Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    :cond_0
    monitor-exit p0

    .line 82
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadPaymentProviders(Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V
    .locals 11
    .parameter "handler"

    .prologue
    const/4 v10, -0x1

    .line 87
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    new-instance v6, Lcom/layar/data/user/PaymentProvidersResponse;

    .line 89
    const/4 v7, -0x1

    invoke-direct {v6, v7}, Lcom/layar/data/user/PaymentProvidersResponse;-><init>(I)V

    .line 88
    invoke-interface {p1, v6}, Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;->handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V

    .line 146
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 94
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v6, "/payments/api/providerlist/"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v5

    .line 97
    .local v5, uriHelper:Lcom/layar/util/UriHelper;
    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;Z)V

    .line 101
    iget-object v6, p0, Lcom/layar/data/user/PaymentsManager;->preferences:Landroid/content/SharedPreferences;

    .line 102
    const-string v7, "settings.payments.modified"

    const-wide/16 v8, 0x0

    .line 101
    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 103
    .local v3, modifiedAt:J
    const-string v6, "modified_at"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Lorg/apache/http/HttpHost;

    const-string v7, "dev.layar.com"

    invoke-direct {v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v7, Lcom/layar/data/user/PaymentsManager$1;

    invoke-direct {v7, p0, p1}, Lcom/layar/data/user/PaymentsManager$1;-><init>(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V

    .line 107
    invoke-static {v6, v2, v7}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #modifiedAt:J
    .end local v5           #uriHelper:Lcom/layar/util/UriHelper;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 142
    .local v1, e:Ljava/io/IOException;
    sget-object v6, Lcom/layar/data/user/PaymentsManager;->TAG:Ljava/lang/String;

    const-string v7, "There was a problem when getting payment providers"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    new-instance v6, Lcom/layar/data/user/PaymentProvidersResponse;

    .line 144
    invoke-direct {v6, v10}, Lcom/layar/data/user/PaymentProvidersResponse;-><init>(I)V

    .line 143
    invoke-interface {p1, v6}, Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;->handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V

    goto :goto_0
.end method


# virtual methods
.method public getPaymentProvider()Lcom/layar/data/user/PaymentProvider;
    .locals 5

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 225
    iget-object v2, p0, Lcom/layar/data/user/PaymentsManager;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "settings.payments.provider"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/layar/data/user/PaymentProvider;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/PaymentProvider;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 226
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 227
    .local v0, e:Lorg/json/JSONException;
    sget-object v1, Lcom/layar/data/user/PaymentsManager;->TAG:Ljava/lang/String;

    const-string v2, "There shouldn\'t be an exception here"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There shouldn\'t be an exception here."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPaymentProvider(Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/layar/data/user/PaymentsManager;->wasSuccessfulRequest:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Lcom/layar/data/user/PaymentProvidersResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/layar/data/user/PaymentProvidersResponse;-><init>(I)V

    .line 54
    .local v0, response:Lcom/layar/data/user/PaymentProvidersResponse;
    iget-object v1, p0, Lcom/layar/data/user/PaymentsManager;->mProviders:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    .line 55
    invoke-interface {p1, v0}, Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;->handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V

    .line 64
    .end local v0           #response:Lcom/layar/data/user/PaymentProvidersResponse;
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/layar/data/user/PaymentsManager;->mHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/user/PaymentsManager;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-direct {p0}, Lcom/layar/data/user/PaymentsManager;->load()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public initiate(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;)V
    .locals 6
    .parameter "paymentProvider"
    .parameter "layer"
    .parameter "handler"

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    new-instance v4, Lcom/layar/data/user/InitiatePaymentResponse;

    .line 155
    const/16 v5, -0xa

    invoke-direct {v4, v5}, Lcom/layar/data/user/InitiatePaymentResponse;-><init>(I)V

    .line 154
    invoke-interface {p3, v4}, Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;->handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V

    .line 211
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 160
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "/payments/api/initiate/"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 162
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "payment_provider"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v4, "model"

    const-string v5, "layer.layer"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v4, "pk"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 172
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "dev.layar.com"

    invoke-direct {v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 173
    new-instance v5, Lcom/layar/data/user/PaymentsManager$2;

    invoke-direct {v5, p0, p3}, Lcom/layar/data/user/PaymentsManager$2;-><init>(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;)V

    .line 172
    invoke-static {v4, v3, v5}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 206
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/layar/data/user/PaymentsManager;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t initiate payment..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    new-instance v4, Lcom/layar/data/user/InitiatePaymentResponse;

    .line 208
    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/layar/data/user/InitiatePaymentResponse;-><init>(I)V

    .line 207
    invoke-interface {p3, v4}, Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;->handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V

    goto :goto_0
.end method

.method public reloadProviders()V
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/layar/data/user/PaymentsManager;->wasSuccessfulRequest:Z

    .line 69
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.payments.modified"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-direct {p0}, Lcom/layar/data/user/PaymentsManager;->load()V

    .line 67
    monitor-exit p0

    .line 73
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPaymentProvider(Lcom/layar/data/user/PaymentProvider;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.payments.provider"

    .line 219
    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvider;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method
