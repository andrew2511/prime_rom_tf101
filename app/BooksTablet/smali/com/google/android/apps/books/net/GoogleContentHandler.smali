.class public Lcom/google/android/apps/books/net/GoogleContentHandler;
.super Ljava/net/ContentHandler;
.source "GoogleContentHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GoogleContentHandler"

.field public static final PARAM_SOURCE:Ljava/lang/String; = "source"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthToken:Ljava/lang/String;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field private mManager:Landroid/accounts/AccountManager;

.field private mNotifyAuthFailure:Z


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;)V
    .locals 0
    .parameter "contentHandler"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 177
    return-void
.end method

.method private static applyAuthToken(Ljava/lang/String;Ljava/net/URLConnection;)V
    .locals 4
    .parameter "authToken"
    .parameter "connection"

    .prologue
    .line 64
    const-string v0, "Authorization"

    .line 65
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private blockingGetAuthToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mManager:Landroid/accounts/AccountManager;

    iget-boolean v2, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mNotifyAuthFailure:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/net/GoogleContentHandler;->blockingGetAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blockingGetAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 11
    .parameter "account"
    .parameter "manager"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "authtoken"

    const-string v0, "intent"

    const-string v10, "GoogleContentHandler"

    .line 218
    if-eqz p0, :cond_1

    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    .line 221
    .local v5, handler:Landroid/os/Handler;
    :try_start_0
    const-string v2, "print"

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    .line 223
    .local v7, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v7}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 224
    .local v9, result:Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "authtoken"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .end local v4           #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5           #handler:Landroid/os/Handler;
    .end local v7           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v9           #result:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 227
    .restart local v4       #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local v5       #handler:Landroid/os/Handler;
    .restart local v7       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .restart local v9       #result:Landroid/os/Bundle;
    :cond_0
    const-string v0, "intent"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "intent"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 238
    .local v8, intent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/google/android/apps/books/net/GoogleContentHandler;->clearNewTaskFlag(Landroid/content/Intent;)V

    .line 243
    const-string v0, "intent"

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    .end local v8           #intent:Landroid/content/Intent;
    :goto_1
    invoke-static {v9}, Lcom/google/android/apps/books/net/GoogleContentHandler;->newAccountManagerException(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v7           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v9           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 255
    .local v6, e:Landroid/accounts/AuthenticatorException;
    const-string v0, "GoogleContentHandler"

    const-string v0, "Authentication error"

    invoke-static {v10, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v4           #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5           #handler:Landroid/os/Handler;
    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    .restart local v4       #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local v5       #handler:Landroid/os/Handler;
    .restart local v7       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .restart local v9       #result:Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v0, "GoogleContentHandler"

    const-string v1, "Intent missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 256
    .end local v7           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v9           #result:Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 257
    .local v6, e:Landroid/accounts/OperationCanceledException;
    const-string v0, "GoogleContentHandler"

    const-string v0, "Authentication canceled"

    invoke-static {v10, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static clearNewTaskFlag(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 94
    .local v0, flags:I
    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method private invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private static newAccountManagerException(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedException;
    .locals 3
    .parameter "result"

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.google.android.feeds.cursor.extra.RESPONSE_CODE"

    const/16 v2, 0x191

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "com.google.android.feeds.cursor.extra.ACCOUNT_MANAGER_BUNDLE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    new-instance v1, Lcom/google/android/feeds/core/provider/FeedException;

    const-string v2, "Unauthorized"

    invoke-direct {v1, v2, v0}, Lcom/google/android/feeds/core/provider/FeedException;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static openConnection(Ljava/net/URL;Landroid/content/Context;)Ljava/net/URLConnection;
    .locals 3
    .parameter "url"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p0}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 314
    .local v0, connection:Ljava/net/URLConnection;
    invoke-static {p1}, Lcom/google/android/apps/books/util/HttpHeaderUtils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, userAgent:Ljava/lang/String;
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-object v0
.end method

.method public static resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "relativePath"

    .prologue
    .line 111
    const-string v3, "missing relativePath"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 116
    .local v2, relativeUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    move-object v0, v2

    .line 123
    .local v0, absoluteUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    .end local v0           #absoluteUri:Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    .line 120
    .local v1, baseUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #absoluteUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static setSourceParameter(Ljava/lang/String;Lcom/google/android/apps/books/util/Config;)Ljava/lang/String;
    .locals 10
    .parameter "uriString"
    .parameter "config"

    .prologue
    const-string v9, "source"

    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 142
    :cond_0
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, booksAuthority:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 144
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "source"

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/apps/books/util/UriUtils;->dropQueryParam(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 147
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 151
    .local v2, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, sourceParam:Ljava/lang/String;
    const-string v5, "source"

    invoke-virtual {v2, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    .end local v0           #authority:Ljava/lang/String;
    .end local v2           #builder:Landroid/net/Uri$Builder;
    .end local v3           #sourceParam:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return-object v5

    .restart local v0       #authority:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    move-object v5, p0

    .line 156
    goto :goto_0

    .end local v0           #authority:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    move-object v5, p0

    .line 160
    goto :goto_0
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/android/apps/books/net/GoogleContentHandler;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAuthToken:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAuthToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAuthToken:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/google/android/apps/books/net/GoogleContentHandler;->applyAuthToken(Ljava/lang/String;Ljava/net/URLConnection;)V

    .line 275
    :cond_0
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getResponseCode(Ljava/net/URLConnection;)I

    move-result v1

    .line 276
    .local v1, responseCode:I
    sparse-switch v1, :sswitch_data_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, message:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getResponseMessage(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, responseMessage:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 300
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    const-string v3, " on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 278
    .end local v0           #message:Ljava/lang/StringBuilder;
    .end local v2           #responseMessage:Ljava/lang/String;
    :sswitch_0
    iget-object v3, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v3, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 285
    :sswitch_1
    iget-object v3, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAuthToken:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 286
    iget-object v3, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAuthToken:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/apps/books/net/GoogleContentHandler;->invalidateAuthToken(Ljava/lang/String;)V

    .line 290
    :cond_2
    new-instance v3, Ljava/net/HttpRetryException;

    const-string v4, "Unauthorized"

    const/16 v5, 0x191

    invoke-direct {v3, v4, v5}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 3
    .parameter "manager"
    .parameter "account"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    if-nez p2, :cond_1

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 193
    :cond_1
    const-string v0, "com.google"

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong account type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    iput-object p1, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mManager:Landroid/accounts/AccountManager;

    .line 197
    iput-object p2, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mAccount:Landroid/accounts/Account;

    .line 198
    return-void
.end method

.method public setNotifyAuthFailure(Z)V
    .locals 0
    .parameter "notifyAuthFailure"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/GoogleContentHandler;->mNotifyAuthFailure:Z

    .line 209
    return-void
.end method
