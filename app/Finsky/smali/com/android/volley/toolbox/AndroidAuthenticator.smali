.class public Lcom/android/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAuthTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter "defaultAuthTokenType"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 45
    iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No default auth type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 67
    .local v0, accountManager:Landroid/accounts/AccountManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p1, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, authToken:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 70
    new-instance v3, Lcom/android/volley/AuthFailureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null auth token for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/volley/AuthFailureException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1           #authToken:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 75
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/volley/AuthFailureException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/volley/AuthFailureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 73
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #authToken:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 3
    .parameter "listener"
    .parameter "handler"
    .parameter "authTokenType"
    .parameter "forceReauth"

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 132
    :cond_0
    if-eqz p4, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, p3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, cachedAuthToken:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 139
    .end local v0           #cachedAuthToken:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/volley/toolbox/AndroidAuthenticator$1;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator;Ljava/lang/String;Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->start()V

    goto :goto_0
.end method

.method public getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .parameter "forceReauth"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method
