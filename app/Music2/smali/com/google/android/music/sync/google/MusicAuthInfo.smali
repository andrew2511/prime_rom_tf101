.class public Lcom/google/android/music/sync/google/MusicAuthInfo;
.super Ljava/lang/Object;
.source "MusicAuthInfo.java"

# interfaces
.implements Lcom/google/android/music/sync/common/AuthInfo;


# static fields
.field public static final SERVICE:Ljava/lang/String; = "sj"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "music_auth_token"

    const-string v6, "sj"

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, tokenType:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 39
    .local v2, manager:Landroid/accounts/AccountManager;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, authToken:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 42
    new-instance v4, Landroid/accounts/AuthenticatorException;

    const-string v5, "Received null auth token."

    invoke-direct {v4, v5}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .end local v0           #authToken:Ljava/lang/String;
    .end local v2           #manager:Landroid/accounts/AccountManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 46
    .local v1, e:Landroid/accounts/OperationCanceledException;
    new-instance v4, Landroid/accounts/AuthenticatorException;

    invoke-direct {v4, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 47
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 48
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Landroid/accounts/AuthenticatorException;

    invoke-direct {v4, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 44
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #authToken:Ljava/lang/String;
    .restart local v2       #manager:Landroid/accounts/AccountManager;
    :cond_0
    return-object v0
.end method

.method public getAuthTokenForeground(Landroid/app/Activity;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .parameter "activity"
    .parameter "account"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 62
    .local p3, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "music_auth_token"

    const-string v5, "sj"

    invoke-static {v1, v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, tokenType:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 66
    .local v0, manager:Landroid/accounts/AccountManager;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, options:Landroid/os/Bundle;
    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    .line 69
    .local v7, authToken:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez v7, :cond_0

    .line 70
    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v4, "Received null auth token."

    invoke-direct {v1, v4}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    return-object v7
.end method

.method public invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "music_auth_token"

    const-string v4, "sj"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, tokenType:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicAuthInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 56
    .local v0, manager:Landroid/accounts/AccountManager;
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
