.class public Lorg/scribe/builder/api/FacebookApi;
.super Lorg/scribe/builder/api/DefaultApi20;
.source "FacebookApi.java"


# static fields
.field private static final AUTHORIZE_URL:Ljava/lang/String; = "https://m.facebook.com/dialog/oauth/authorize?display=touch&response_type=token&client_id=%s&redirect_uri=%s&scope=publish_stream"


# instance fields
.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi20;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
    .locals 4
    .parameter "config"

    .prologue
    .line 15
    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must provide a valid url as callback. Facebook does not support OOB"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "https://m.facebook.com/dialog/oauth/authorize?display=touch&response_type=token&client_id=%s&redirect_uri=%s&scope=publish_stream"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/scribe/utils/URLUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/scribe/builder/api/FacebookApi;->scope:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
