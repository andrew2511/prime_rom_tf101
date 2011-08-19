.class Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->authorize(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

.field private final synthetic val$dialogListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->val$dialogListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->val$dialogListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onCancel()V

    .line 121
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->access$0(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    move-result-object v1

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    new-instance v2, Lorg/scribe/model/Token;

    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->access$1(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;Lorg/scribe/model/Token;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->access$0(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    move-result-object v1

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v1, v2, :cond_1

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->access$2(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Ltwitter4j/Twitter;

    move-result-object v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->access$3(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)Ltwitter4j/http/RequestToken;

    move-result-object v3

    const-string v4, "oauth_verifier"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->access$4(Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;Ltwitter4j/http/AccessToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->val$dialogListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    invoke-interface {v1, p1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 113
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 107
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->val$dialogListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$1;->val$dialogListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    invoke-interface {v0, p1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onError(Ljava/lang/String;)V

    .line 117
    return-void
.end method
