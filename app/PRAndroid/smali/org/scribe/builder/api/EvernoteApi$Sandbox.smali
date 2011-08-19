.class public Lorg/scribe/builder/api/EvernoteApi$Sandbox;
.super Lorg/scribe/builder/api/EvernoteApi;
.source "EvernoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/builder/api/EvernoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sandbox"
.end annotation


# static fields
.field private static final SANDBOX_URL:Ljava/lang/String; = "https://sandbox.evernote.com/oauth"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/scribe/builder/api/EvernoteApi;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "https://sandbox.evernote.com/oauth"

    return-object v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 4
    .parameter "requestToken"

    .prologue
    .line 59
    const-string v0, "https://sandbox.evernote.com/oauth?oauth_token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "https://sandbox.evernote.com/oauth"

    return-object v0
.end method
