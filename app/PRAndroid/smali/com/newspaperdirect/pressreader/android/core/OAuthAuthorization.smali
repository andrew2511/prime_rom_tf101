.class public Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;
    }
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private mService:Lorg/scribe/oauth/OAuthService;

.field private mServiceAccessToken:Lorg/scribe/model/Token;

.field private mTwitter:Ltwitter4j/Twitter;

.field private mTwitterAccessToken:Ltwitter4j/http/AccessToken;

.field private mTwitterRequestToken:Ltwitter4j/http/RequestToken;

.field private mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V
    .locals 3
    .parameter "Typetype"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mService:Lorg/scribe/oauth/OAuthService;

    .line 43
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mServiceAccessToken:Lorg/scribe/model/Token;

    .line 45
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitter:Ltwitter4j/Twitter;

    .line 46
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterRequestToken:Ltwitter4j/http/RequestToken;

    .line 47
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterAccessToken:Ltwitter4j/http/AccessToken;

    .line 62
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    .line 63
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitter:Ltwitter4j/Twitter;

    .line 66
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitter:Ltwitter4j/Twitter;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v0, v1, :cond_1

    .line 70
    new-instance v0, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v0}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    .line 71
    const-class v1, Lorg/scribe/builder/api/FacebookApi;

    invoke-virtual {v0, v1}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v0

    const-string v1, "fbconnect://success"

    invoke-virtual {v0, v1}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mService:Lorg/scribe/oauth/OAuthService;

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;Lorg/scribe/model/Token;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mServiceAccessToken:Lorg/scribe/model/Token;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Ltwitter4j/Twitter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Ltwitter4j/http/RequestToken;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterRequestToken:Ltwitter4j/http/RequestToken;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;Ltwitter4j/http/AccessToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterAccessToken:Ltwitter4j/http/AccessToken;

    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V
    .locals 2
    .parameter "activity"
    .parameter "dialogListener"

    .prologue
    .line 98
    const-string v0, "oauth"

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;

    invoke-direct {v1, p0, p2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->dialog(Landroid/content/Context;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V

    .line 124
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V
    .locals 4
    .parameter "context"
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, endpoint:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v2, v3, :cond_0

    .line 80
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitter:Ltwitter4j/Twitter;

    const-string v3, "fbconnect://success"

    invoke-virtual {v2, v3}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterRequestToken:Ltwitter4j/http/RequestToken;

    .line 81
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterRequestToken:Ltwitter4j/http/RequestToken;

    invoke-virtual {v2}, Ltwitter4j/http/RequestToken;->getAuthorizationURL()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    if-nez v1, :cond_1

    .line 91
    const-string v2, "Network error"

    invoke-interface {p3, v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onError(Ljava/lang/String;)V

    .line 95
    :goto_1
    return-void

    .line 85
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mService:Lorg/scribe/oauth/OAuthService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-direct {v2, p1, v1, p3}, Lcom/newspaperdirect/pressreader/android/SharingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->show()V

    goto :goto_1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mServiceAccessToken:Lorg/scribe/model/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mServiceAccessToken:Lorg/scribe/model/Token;

    invoke-virtual {v0}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterAccessToken:Ltwitter4j/http/AccessToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterAccessToken:Ltwitter4j/http/AccessToken;

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mServiceAccessToken:Lorg/scribe/model/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mServiceAccessToken:Lorg/scribe/model/Token;

    invoke-virtual {v0}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterAccessToken:Ltwitter4j/http/AccessToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTwitterAccessToken:Ltwitter4j/http/AccessToken;

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v0, v1, :cond_0

    .line 26
    const-string v0, "ZNWvVy2SXzGad0b7wT5Yg"

    .line 29
    :goto_0
    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v0, v1, :cond_1

    .line 28
    const-string v0, "123467497689333"

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAppSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v0, v1, :cond_0

    .line 34
    const-string v0, "tS9fNZqeaxC1TJ1ud8mNS4IcVUpsWmVJHKlWQjl4s"

    .line 37
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->mTypetype:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v0, v1, :cond_1

    .line 36
    const-string v0, "05d65bca8a1bf9f3de9a360437047c5a"

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
