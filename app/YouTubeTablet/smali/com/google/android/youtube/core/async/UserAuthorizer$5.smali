.class Lcom/google/android/youtube/core/async/UserAuthorizer$5;
.super Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$1;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 360
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticationError(Ljava/lang/Exception;)V

    .line 368
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V

    .line 364
    return-void
.end method
