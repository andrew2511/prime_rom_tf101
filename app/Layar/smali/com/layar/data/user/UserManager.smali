.class public Lcom/layar/data/user/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/user/UserManager$LoginHandler;,
        Lcom/layar/data/user/UserManager$LogoutHandler;,
        Lcom/layar/data/user/UserManager$ResetPasswordHandler;,
        Lcom/layar/data/user/UserManager$ResponseHandler;,
        Lcom/layar/data/user/UserManager$UserCreateHandler;,
        Lcom/layar/data/user/UserManager$VerifyAccountHandler;
    }
.end annotation


# static fields
.field private static final CREATE_USER_URL:Ljava/lang/String; = "/user/api/new/"

.field private static final GET_USER_SETTINGS_URL:Ljava/lang/String; = "/api/user/settings/"

.field private static final HTTP_HOST:Lorg/apache/http/HttpHost; = null

.field private static final LOGIN_URL:Ljava/lang/String; = "/user/api/login/"

.field private static final LOGOUT_URL:Ljava/lang/String; = "/user/api/logout/"

.field private static final RESET_PASSWORD_URL:Ljava/lang/String; = "/user/api/reset_password/"

.field private static final TAG:Ljava/lang/String; = null

.field private static final VERIFY_ACCOUNT_URL:Ljava/lang/String; = "/user/api/verify_account/"


# instance fields
.field private context:Landroid/content/Context;

.field private currentTask:Lcom/layar/util/HttpManager$HttpTask;

.field private layerManager:Lcom/layar/data/layer/LayerManager;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-class v1, Lcom/layar/data/user/UserManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "dev.layar.com"

    const/16 v2, 0x1bb

    const-string v3, "https"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layar/data/user/UserManager;->HTTP_HOST:Lorg/apache/http/HttpHost;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/layar/data/user/UserManager;->context:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/layar/data/user/UserManager;->setLoggedInUser(Lcom/layar/data/user/User;)V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;
    .locals 1
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getLayerManager()Lcom/layar/data/layer/LayerManager;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/layar/data/user/UserManager;->layerManager:Lcom/layar/data/layer/LayerManager;

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/layar/data/user/UserManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/user/UserManager;->layerManager:Lcom/layar/data/layer/LayerManager;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/layar/data/user/UserManager;->layerManager:Lcom/layar/data/layer/LayerManager;

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/layar/data/user/UserManager;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/layar/data/user/UserManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/user/UserManager;->preferences:Landroid/content/SharedPreferences;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/layar/data/user/UserManager;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setLoggedInUser(Lcom/layar/data/user/User;)V
    .locals 4
    .parameter "loggedInUser"

    .prologue
    .line 733
    invoke-static {}, Lcom/layar/data/user/LayarState;->getInstance()Lcom/layar/data/user/LayarState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/layar/data/user/LayarState;->setUser(Lcom/layar/data/user/User;)V

    .line 735
    :try_start_0
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 736
    const-string v2, "settings.user.object"

    invoke-static {p1}, Lcom/layar/data/user/User;->asJSON(Lcom/layar/data/user/User;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 737
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 740
    .local v0, e:Lorg/json/JSONException;
    sget-object v1, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "setLoggedInUser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public authenticationParameters()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_0
    return-object v0
.end method

.method public clientLogout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/social/SocialManager;->setAllSocialsUnlinked()V

    .line 429
    invoke-direct {p0, v1}, Lcom/layar/data/user/UserManager;->setLoggedInUser(Lcom/layar/data/user/User;)V

    .line 430
    invoke-virtual {p0, v1}, Lcom/layar/data/user/UserManager;->setPassword(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v1}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0, v1}, Lcom/layar/data/user/UserManager;->setAccessToken(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/layar/App;->initPreferences()V

    .line 434
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/PaymentsManager;->reloadProviders()V

    .line 435
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerManager;->resetCache()V

    .line 436
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerManager;->resetYours()V

    .line 437
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerManager;->updateRecentLayers()V

    .line 438
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$UserCreateHandler;)V
    .locals 6
    .parameter "username"
    .parameter "email"
    .parameter "password"
    .parameter "createUserHandler"

    .prologue
    .line 290
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/layar/data/user/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/layar/data/user/UserManager$UserCreateHandler;)V

    .line 291
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/layar/data/user/UserManager$UserCreateHandler;)V
    .locals 9
    .parameter "username"
    .parameter "email"
    .parameter "password"
    .parameter "sendNews"
    .parameter "createUserHandler"

    .prologue
    const/4 v8, 0x0

    .line 297
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    new-instance v5, Lcom/layar/data/user/UserCreateResponse;

    .line 299
    const/16 v6, -0xa

    invoke-direct {v5, v6}, Lcom/layar/data/user/UserCreateResponse;-><init>(I)V

    .line 298
    invoke-interface {p5, v5}, Lcom/layar/data/user/UserManager$UserCreateHandler;->handleResponse(Lcom/layar/data/user/UserCreateResponse;)V

    .line 361
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 303
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "/user/api/new/"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 305
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, uri:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 309
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "username"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v5, "email"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v5, "password"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v5, "keep_notified"

    invoke-virtual {v2, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 314
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 318
    iget-object v5, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    invoke-virtual {v5}, Lcom/layar/util/HttpManager$HttpTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v5, v6, :cond_1

    .line 319
    iget-object v5, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/layar/util/HttpManager$HttpTask;->cancel(Z)Z

    .line 322
    :cond_1
    new-instance v5, Lcom/layar/util/HttpManager$HttpTask;

    sget-object v6, Lcom/layar/data/user/UserManager;->HTTP_HOST:Lorg/apache/http/HttpHost;

    new-instance v7, Lcom/layar/data/user/UserManager$3;

    invoke-direct {v7, p0, p5}, Lcom/layar/data/user/UserManager$3;-><init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$UserCreateHandler;)V

    invoke-direct {v5, v6, v7}, Lcom/layar/util/HttpManager$HttpTask;-><init>(Lorg/apache/http/HttpHost;Lcom/layar/util/HttpManager$ResponseHandler;)V

    iput-object v5, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    .line 354
    iget-object v5, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Lcom/layar/util/HttpManager$HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #uri:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 357
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/layar/data/user/UserManager;->context:Landroid/content/Context;

    const v6, 0x7f090154

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 358
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 359
    sget-object v5, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    const-string v6, "There was a problem when creating user..."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.accesstoken"

    .line 651
    const/4 v2, 0x0

    .line 650
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggedInUser()Lcom/layar/data/user/User;
    .locals 6

    .prologue
    .line 745
    invoke-static {}, Lcom/layar/data/user/LayarState;->getInstance()Lcom/layar/data/user/LayarState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/data/user/LayarState;->getUser()Lcom/layar/data/user/User;

    move-result-object v1

    .line 746
    .local v1, user:Lcom/layar/data/user/User;
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    :try_start_0
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "settings.user.object"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, userJson:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 750
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/layar/data/user/User;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/User;

    move-result-object v1

    .line 751
    invoke-static {}, Lcom/layar/data/user/LayarState;->getInstance()Lcom/layar/data/user/LayarState;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/layar/data/user/LayarState;->setUser(Lcom/layar/data/user/User;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v2           #userJson:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 753
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 754
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    const-string v4, "getLoggedInUser"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.password"

    .line 646
    const/4 v2, 0x0

    .line 645
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 605
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v8

    if-nez v8, :cond_0

    .line 606
    const/4 v8, 0x0

    .line 626
    :goto_0
    return-object v8

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v7

    .line 608
    .local v7, user:Lcom/layar/data/user/User;
    if-nez v7, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getUsername()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v7}, Lcom/layar/data/user/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, firstName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/layar/data/user/User;->getLastName()Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, lastName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/layar/data/user/User;->getFirstName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    move v3, v10

    .line 614
    .local v3, hasFirstName:Z
    :goto_1
    invoke-virtual {v7}, Lcom/layar/data/user/User;->getLastName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    move v4, v10

    .line 615
    .local v4, hasLastName:Z
    :goto_2
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 616
    invoke-virtual {v7}, Lcom/layar/data/user/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_4

    move v2, v10

    .line 618
    .local v2, hasEmail:Z
    :goto_3
    if-eqz v2, :cond_5

    move-object v8, v0

    .line 619
    goto :goto_0

    .end local v0           #email:Ljava/lang/String;
    .end local v2           #hasEmail:Z
    .end local v3           #hasFirstName:Z
    .end local v4           #hasLastName:Z
    :cond_2
    move v3, v9

    .line 613
    goto :goto_1

    .restart local v3       #hasFirstName:Z
    :cond_3
    move v4, v9

    .line 614
    goto :goto_2

    .restart local v0       #email:Ljava/lang/String;
    .restart local v4       #hasLastName:Z
    :cond_4
    move v2, v9

    .line 617
    goto :goto_3

    .line 620
    .restart local v2       #hasEmail:Z
    :cond_5
    invoke-virtual {v7}, Lcom/layar/data/user/User;->getUsername()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 623
    .end local v0           #email:Ljava/lang/String;
    .end local v2           #hasEmail:Z
    :cond_6
    if-eqz v3, :cond_8

    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .local v6, realName:Ljava/lang/String;
    :goto_5
    move-object v8, v6

    .line 626
    goto :goto_0

    .line 624
    .end local v6           #realName:Ljava/lang/String;
    :cond_7
    const-string v9, ""

    goto :goto_4

    .line 625
    :cond_8
    if-eqz v4, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_5

    :cond_9
    const-string v8, ""

    move-object v6, v8

    goto :goto_5
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.logintoken"

    .line 690
    const/4 v2, 0x0

    .line 689
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.username"

    .line 636
    const/4 v2, 0x0

    .line 635
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasToRemindToLogin()Z
    .locals 3

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 724
    const-string v1, "settings.user.remindtologin"

    const/4 v2, 0x1

    .line 723
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAccountVerified()Z
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Lcom/layar/data/user/UserState;->ACTIVATED:Lcom/layar/data/user/UserState;

    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/user/User;->getState()Lcom/layar/data/user/UserState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 761
    goto :goto_0
.end method

.method public isConnectedToSocialNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "socialNetwork"

    .prologue
    const/4 v2, 0x0

    .line 796
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 799
    :goto_0
    return v1

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    .line 799
    .local v0, user:Lcom/layar/data/user/User;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/layar/data/user/User;->getSocialNetworks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isDeveloper()Z
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/User;->isDevSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 766
    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 3

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.logintoken"

    .line 589
    const/4 v2, 0x0

    .line 588
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtherPhone()Z
    .locals 3

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.otherphone"

    .line 782
    const/4 v2, 0x0

    .line 781
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStaff()Z
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/User;->isStaffAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 771
    goto :goto_0
.end method

.method public isThisCurrentUser(Ljava/lang/String;)Z
    .locals 2
    .parameter "username"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    .line 75
    .local v0, user:Lcom/layar/data/user/User;
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/layar/data/user/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isUserSet()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.username"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.user.password"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 581
    goto :goto_0
.end method

.method public login(Lcom/layar/data/user/UserManager$LoginHandler;)V
    .locals 3
    .parameter "loginHandler"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/layar/data/user/UserManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;Z)V

    .line 161
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;Z)V
    .locals 7
    .parameter "username"
    .parameter "password"
    .parameter "loginHandler"
    .parameter "force"

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    new-instance v4, Lcom/layar/data/user/LoginResponse;

    .line 174
    const/16 v5, -0xa

    invoke-direct {v4, v5}, Lcom/layar/data/user/LoginResponse;-><init>(I)V

    .line 173
    invoke-interface {p3, v4}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    .line 279
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/layar/util/UriHelper;->appendBasicParams(Ljava/util/ArrayList;)V

    .line 181
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "username"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "password"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "force"

    .line 184
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, accessToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "access_token"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "/user/api/login/"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 201
    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    invoke-virtual {v4}, Lcom/layar/util/HttpManager$HttpTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_2

    .line 202
    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/layar/util/HttpManager$HttpTask;->cancel(Z)Z

    .line 205
    :cond_2
    new-instance v4, Lcom/layar/util/HttpManager$HttpTask;

    sget-object v5, Lcom/layar/data/user/UserManager;->HTTP_HOST:Lorg/apache/http/HttpHost;

    new-instance v6, Lcom/layar/data/user/UserManager$2;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/layar/data/user/UserManager$2;-><init>(Lcom/layar/data/user/UserManager;Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;)V

    invoke-direct {v4, v5, v6}, Lcom/layar/util/HttpManager$HttpTask;-><init>(Lorg/apache/http/HttpHost;Lcom/layar/util/HttpManager$ResponseHandler;)V

    iput-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    .line 272
    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/layar/util/HttpManager$HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 274
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    const-string v5, "There was a problem when login in"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    new-instance v4, Lcom/layar/data/user/LoginResponse;

    .line 276
    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/layar/data/user/LoginResponse;-><init>(I)V

    .line 275
    invoke-interface {p3, v4}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    goto/16 :goto_0
.end method

.method public logout(Lcom/layar/data/user/UserManager$LogoutHandler;)V
    .locals 6
    .parameter "logoutHandler"

    .prologue
    .line 367
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    new-instance v3, Lcom/layar/data/user/LogoutResponse;

    .line 369
    const/16 v4, -0xa

    invoke-direct {v3, v4}, Lcom/layar/data/user/LogoutResponse;-><init>(I)V

    .line 368
    invoke-interface {p1, v3}, Lcom/layar/data/user/UserManager$LogoutHandler;->handleResponse(Lcom/layar/data/user/LogoutResponse;)V

    .line 425
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v2, requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/layar/util/UriHelper;->appendBasicParams(Ljava/util/ArrayList;)V

    .line 375
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "/user/api/logout/"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 378
    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    invoke-virtual {v3}, Lcom/layar/util/HttpManager$HttpTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_1

    .line 379
    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/layar/util/HttpManager$HttpTask;->cancel(Z)Z

    .line 382
    :cond_1
    new-instance v3, Lcom/layar/util/HttpManager$HttpTask;

    sget-object v4, Lcom/layar/data/user/UserManager;->HTTP_HOST:Lorg/apache/http/HttpHost;

    new-instance v5, Lcom/layar/data/user/UserManager$4;

    invoke-direct {v5, p0, p1}, Lcom/layar/data/user/UserManager$4;-><init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$LogoutHandler;)V

    invoke-direct {v3, v4, v5}, Lcom/layar/util/HttpManager$HttpTask;-><init>(Lorg/apache/http/HttpHost;Lcom/layar/util/HttpManager$ResponseHandler;)V

    iput-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    .line 419
    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/layar/util/HttpManager$HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 421
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    const-string v4, "There was a problem when logging out..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    new-instance v3, Lcom/layar/data/user/LogoutResponse;

    .line 423
    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/layar/data/user/LogoutResponse;-><init>(I)V

    .line 422
    invoke-interface {p1, v3}, Lcom/layar/data/user/UserManager$LogoutHandler;->handleResponse(Lcom/layar/data/user/LogoutResponse;)V

    goto :goto_0
.end method

.method public requestUserSettings(Lcom/layar/data/user/UserManager$LoginHandler;)V
    .locals 5
    .parameter "loginHandler"

    .prologue
    .line 86
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    new-instance v3, Lcom/layar/data/user/LoginResponse;

    .line 88
    const/16 v4, -0xa

    invoke-direct {v3, v4}, Lcom/layar/data/user/LoginResponse;-><init>(I)V

    .line 87
    invoke-interface {p1, v3}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    .line 151
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 94
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "/api/user/settings/"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 97
    const-string v3, "force"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "dev.layar.com"

    invoke-direct {v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v4, Lcom/layar/data/user/UserManager$1;

    invoke-direct {v4, p0, p1}, Lcom/layar/data/user/UserManager$1;-><init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$LoginHandler;)V

    .line 100
    invoke-static {v3, v2, v4}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 147
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/layar/data/user/LoginResponse;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/layar/data/user/LoginResponse;-><init>(I)V

    invoke-interface {p1, v3}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;Lcom/layar/data/user/UserManager$ResetPasswordHandler;)V
    .locals 6
    .parameter "email"
    .parameter "handler"

    .prologue
    .line 444
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    new-instance v3, Lcom/layar/data/user/ResetPasswordResponse;

    .line 446
    const/16 v4, -0xa

    invoke-direct {v3, v4}, Lcom/layar/data/user/ResetPasswordResponse;-><init>(I)V

    .line 445
    invoke-interface {p2, v3}, Lcom/layar/data/user/UserManager$ResetPasswordHandler;->handleResponse(Lcom/layar/data/user/ResetPasswordResponse;)V

    .line 502
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v2, requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/layar/util/UriHelper;->appendBasicParams(Ljava/util/ArrayList;)V

    .line 451
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "email"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "/user/api/reset_password/"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 456
    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    invoke-virtual {v3}, Lcom/layar/util/HttpManager$HttpTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_1

    .line 457
    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/layar/util/HttpManager$HttpTask;->cancel(Z)Z

    .line 460
    :cond_1
    new-instance v3, Lcom/layar/util/HttpManager$HttpTask;

    sget-object v4, Lcom/layar/data/user/UserManager;->HTTP_HOST:Lorg/apache/http/HttpHost;

    new-instance v5, Lcom/layar/data/user/UserManager$5;

    invoke-direct {v5, p0, p2}, Lcom/layar/data/user/UserManager$5;-><init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$ResetPasswordHandler;)V

    invoke-direct {v3, v4, v5}, Lcom/layar/util/HttpManager$HttpTask;-><init>(Lorg/apache/http/HttpHost;Lcom/layar/util/HttpManager$ResponseHandler;)V

    iput-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    .line 496
    iget-object v3, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/layar/util/HttpManager$HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 498
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    const-string v4, "There was a problem when resetting password..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    new-instance v3, Lcom/layar/data/user/ResetPasswordResponse;

    .line 500
    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/layar/data/user/ResetPasswordResponse;-><init>(I)V

    .line 499
    invoke-interface {p2, v3}, Lcom/layar/data/user/UserManager$ResetPasswordHandler;->handleResponse(Lcom/layar/data/user/ResetPasswordResponse;)V

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2
    .parameter "accessToken"

    .prologue
    .line 665
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 667
    const-string v1, "settings.user.accesstoken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 668
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 673
    const-string v1, "settings.user.accesstoken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setConnectedToSocialNetwork(Ljava/lang/String;Z)V
    .locals 2
    .parameter "socialNetwork"
    .parameter "connected"

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v0

    .line 811
    .local v0, user:Lcom/layar/data/user/User;
    if-eqz v0, :cond_0

    .line 817
    if-eqz p2, :cond_2

    .line 818
    invoke-virtual {p0, p1}, Lcom/layar/data/user/UserManager;->isConnectedToSocialNetwork(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/layar/data/user/User;->getSocialNetworks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {v0}, Lcom/layar/data/user/User;->getSocialNetworks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.user.email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 682
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 683
    return-void
.end method

.method public setHasToRemindToLogin(Z)V
    .locals 2
    .parameter "remind"

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 729
    const-string v1, "settings.user.remindtologin"

    .line 728
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 729
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 730
    return-void
.end method

.method public setOtherPhone(Z)V
    .locals 2
    .parameter "otherPhone"

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 777
    const-string v1, "settings.user.otherphone"

    .line 776
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 777
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 778
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.user.password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 662
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.user.logintoken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 696
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/layar/data/user/UserManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.user.username"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method

.method public verifyAccount(Lcom/layar/data/user/UserManager$VerifyAccountHandler;)V
    .locals 7
    .parameter "handler"

    .prologue
    .line 505
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v4

    if-nez v4, :cond_1

    .line 506
    new-instance v4, Lcom/layar/data/user/VerifyAccountResponse;

    .line 507
    const/16 v5, -0xa

    invoke-direct {v4, v5}, Lcom/layar/data/user/VerifyAccountResponse;-><init>(I)V

    .line 506
    invoke-interface {p1, v4}, Lcom/layar/data/user/UserManager$VerifyAccountHandler;->handleResponse(Lcom/layar/data/user/VerifyAccountResponse;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v3

    .line 513
    .local v3, user:Lcom/layar/data/user/User;
    if-eqz v3, :cond_0

    .line 516
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v2, requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/layar/util/UriHelper;->appendBasicParams(Ljava/util/ArrayList;)V

    .line 518
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "email"

    invoke-virtual {v3}, Lcom/layar/data/user/User;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "/user/api/verify_account/"

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 521
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 523
    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    invoke-virtual {v4}, Lcom/layar/util/HttpManager$HttpTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_2

    .line 524
    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/layar/util/HttpManager$HttpTask;->cancel(Z)Z

    .line 527
    :cond_2
    new-instance v4, Lcom/layar/util/HttpManager$HttpTask;

    sget-object v5, Lcom/layar/data/user/UserManager;->HTTP_HOST:Lorg/apache/http/HttpHost;

    new-instance v6, Lcom/layar/data/user/UserManager$6;

    invoke-direct {v6, p0, p1}, Lcom/layar/data/user/UserManager$6;-><init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$VerifyAccountHandler;)V

    invoke-direct {v4, v5, v6}, Lcom/layar/util/HttpManager$HttpTask;-><init>(Lorg/apache/http/HttpHost;Lcom/layar/util/HttpManager$ResponseHandler;)V

    iput-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    .line 564
    iget-object v4, p0, Lcom/layar/data/user/UserManager;->currentTask:Lcom/layar/util/HttpManager$HttpTask;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Lcom/layar/util/HttpManager$HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #requestParameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 566
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/layar/data/user/UserManager;->TAG:Ljava/lang/String;

    .line 567
    const-string v5, "There was a problem when sending request to verify account..."

    .line 566
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    new-instance v4, Lcom/layar/data/user/VerifyAccountResponse;

    .line 569
    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/layar/data/user/VerifyAccountResponse;-><init>(I)V

    .line 568
    invoke-interface {p1, v4}, Lcom/layar/data/user/UserManager$VerifyAccountHandler;->handleResponse(Lcom/layar/data/user/VerifyAccountResponse;)V

    goto :goto_0
.end method
