.class public abstract Lcom/google/android/apps/books/widget/FetchingReaderBridge;
.super Lcom/google/android/apps/books/widget/AbstractReaderBridge;
.source "FetchingReaderBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BooksBridge"


# instance fields
.field private mAborted:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;-><init>(Landroid/os/Handler;)V

    .line 37
    return-void
.end method

.method private decryptWithSessionKey([BLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .parameter "payload"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .parameter "cookie"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 150
    .local v6, e:Ljava/security/GeneralSecurityException;
    const-string v0, "BooksBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem decrypting content for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->mAborted:Z

    .line 49
    return-void
.end method

.method public abstract getAccount()Landroid/accounts/Account;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
.end method

.method public getResourceContentUriOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "volumeId"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->mAborted:Z

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "BooksBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborted, ignoring request for resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "data:"

    .line 137
    :goto_0
    return-object v1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 132
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, resContentUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getSegmentContentOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "volumeId"
    .parameter "sectionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSectionContentOrThrow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, invocation:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->mAborted:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "BooksBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborted, ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit p0

    return-object v0

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 71
    const-string v0, "BooksBridge"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BooksBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ensured content"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 75
    .local v12, sectionUri:Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 76
    .local v11, sectionContentUri:Landroid/net/Uri;
    invoke-static {v2, v12}, Lcom/google/android/apps/books/util/SessionKeyFactory;->getSessionKeyForSection(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 79
    .local v3, sessionKeyUri:Landroid/net/Uri;
    invoke-static {v2, v11}, Lcom/google/android/apps/books/util/ProviderUtils;->fullyReadContentUriOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v1

    .line 80
    .local v1, payload:[B
    const-string v0, "BooksBridge"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "BooksBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " read encrypted content; sessionKeyUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    if-eqz v3, :cond_6

    .line 85
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, cookie:Ljava/lang/String;
    move-object v0, p0

    move-object v5, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/widget/FetchingReaderBridge;->decryptWithSessionKey([BLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    const-string v0, "BooksBridge"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v2           #resolver:Landroid/content/ContentResolver;
    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BooksBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decrypted content"

    .end local v3           #sessionKeyUri:Landroid/net/Uri;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v8, inputRaw:Ljava/io/InputStream;
    const-string v0, "BooksBridge"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    const-string v0, "BooksBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created input stream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_4
    new-instance v7, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v7, v8}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .local v7, input:Ljava/util/zip/InflaterInputStream;
    :try_start_2
    invoke-static {v7}, Lcom/google/android/apps/books/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 98
    const-string v0, "BooksBridge"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    const-string v0, "BooksBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inflated content"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :cond_5
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 108
    .end local v4           #cookie:Ljava/lang/String;
    .end local v7           #input:Ljava/util/zip/InflaterInputStream;
    .end local v8           #inputRaw:Ljava/io/InputStream;
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .local v10, sectionContent:Ljava/lang/String;
    move-object v0, v10

    .line 109
    goto/16 :goto_0

    .line 101
    .end local v10           #sectionContent:Ljava/lang/String;
    .restart local v4       #cookie:Ljava/lang/String;
    .restart local v7       #input:Ljava/util/zip/InflaterInputStream;
    .restart local v8       #inputRaw:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 102
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    const-string v0, "BooksBridge"

    const-string v2, "unable to read compressed stream"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 60
    .end local v1           #payload:[B
    .end local v4           #cookie:Ljava/lang/String;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #input:Ljava/util/zip/InflaterInputStream;
    .end local v8           #inputRaw:Ljava/io/InputStream;
    .end local v9           #invocation:Ljava/lang/String;
    .end local v11           #sectionContentUri:Landroid/net/Uri;
    .end local v12           #sectionUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    .restart local v1       #payload:[B
    .restart local v4       #cookie:Ljava/lang/String;
    .restart local v7       #input:Ljava/util/zip/InflaterInputStream;
    .restart local v8       #inputRaw:Ljava/io/InputStream;
    .restart local v9       #invocation:Ljava/lang/String;
    .restart local v11       #sectionContentUri:Landroid/net/Uri;
    .restart local v12       #sectionUri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/InflaterInputStream;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
