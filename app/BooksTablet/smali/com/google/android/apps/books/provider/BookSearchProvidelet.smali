.class public Lcom/google/android/apps/books/provider/BookSearchProvidelet;
.super Ljava/lang/Object;
.source "BookSearchProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;
.implements Lcom/google/android/feeds/core/content/FeedResolverFactory;


# static fields
.field private static final MIN_VIEWABILITY:Ljava/lang/String; = "ge"

.field private static final PARAM_MIN_VIEWABILITY:Ljava/lang/String; = "min-viewability"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private blockingQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 247
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->feedQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    invoke-static {}, Lcom/google/android/feeds/core/provider/FeedCommand;->query()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/feeds/core/provider/FeedCommand;->maxAge(J)Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendSync(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createCollectionVolumeDirDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "contentUri"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createDocumentUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, uid:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getCollectionId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 132
    .local v1, cid:J
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const-string v4, "users"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    const-string v4, "collections"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    const-string v4, "volumes"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 136
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createDocumentUriBuilder()Landroid/net/Uri$Builder;
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseGDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 94
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    const-string v2, "books"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "feeds"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    return-object v1
.end method

.method private createLibraryVolumeDirDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "contentUri"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createDocumentUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 111
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, uid:Ljava/lang/String;
    const-string v4, "accountName"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    const-string v3, "me"

    .line 118
    :cond_0
    const-string v4, "users"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    const-string v4, "collections"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "library"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    const-string v4, "volumes"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, query:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 123
    const-string v4, "q"

    invoke-virtual {v1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 115
    .end local v2           #query:Ljava/lang/String;
    :cond_2
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createVolumeDirDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "contentUri"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createDocumentUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 101
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "volumes"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 104
    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private createVolumeDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "contentUri"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createDocumentUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "volumes"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 145
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, volumeId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private feedQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 227
    sparse-switch p1, :sswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 232
    :sswitch_0
    new-instance v0, Lcom/google/android/feeds/core/content/FeedCursor;

    iget-object v1, p0, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/feeds/core/content/FeedCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/feeds/core/content/FeedResolverFactory;)V

    return-object v0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x2c7 -> :sswitch_0
        0x2d0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isFeed(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 67
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createFeedResolver(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/os/Bundle;)Lcom/google/android/feeds/core/content/FeedResolver;
    .locals 19
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "output"
    .parameter "extras"

    .prologue
    .line 155
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->isFeed(Landroid/net/Uri;)Z

    move-result v14

    .line 158
    .local v14, feed:Z
    new-instance v16, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;-><init>(Landroid/database/MatrixCursor;Landroid/os/Bundle;)V

    .line 160
    .local v16, keyValueHandler:Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;
    new-instance v5, Lcom/google/android/apps/books/net/VolumesContentHandler;

    move-object v0, v5

    move v1, v14

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V

    .line 163
    .local v5, handler:Ljava/net/ContentHandler;
    new-instance v15, Lcom/google/android/apps/books/net/GoogleContentHandler;

    invoke-direct {v15, v5}, Lcom/google/android/apps/books/net/GoogleContentHandler;-><init>(Ljava/net/ContentHandler;)V

    .line 164
    .local v15, googleHandler:Lcom/google/android/apps/books/net/GoogleContentHandler;
    const-string v3, "accountName"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, accountName:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    .line 167
    .local v17, manager:Landroid/accounts/AccountManager;
    new-instance v11, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v11, v12, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v11, account:Landroid/accounts/Account;
    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/net/GoogleContentHandler;->setAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    .line 170
    .end local v11           #account:Landroid/accounts/Account;
    .end local v17           #manager:Landroid/accounts/AccountManager;
    :cond_0
    move-object v5, v15

    .line 173
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->getDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 175
    .local v4, documentUri:Landroid/net/Uri;
    const-string v18, "ge"

    .line 176
    .local v18, minViewability:Ljava/lang/String;
    const-string v3, "ge"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 178
    .local v13, builder:Landroid/net/Uri$Builder;
    const-string v3, "min-viewability"

    const-string v4, "ge"

    .end local v4           #documentUri:Landroid/net/Uri;
    invoke-virtual {v13, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 182
    .end local v13           #builder:Landroid/net/Uri$Builder;
    .restart local v4       #documentUri:Landroid/net/Uri;
    :cond_1
    if-eqz v14, :cond_2

    .line 185
    new-instance v3, Lcom/google/android/feeds/core/content/IndexedFeedResolver;

    const-string v8, "start-index"

    const/4 v9, 0x1

    const/16 v10, 0xa

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v10}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;-><init>(Landroid/net/Uri;Ljava/net/ContentHandler;Ljava/lang/Object;Landroid/os/Bundle;Ljava/lang/String;II)V

    .line 189
    :goto_0
    return-object v3

    :cond_2
    new-instance v3, Lcom/google/android/feeds/core/content/BasicFeedResolver;

    invoke-direct {v3, v4, v5}, Lcom/google/android/feeds/core/content/BasicFeedResolver;-><init>(Landroid/net/Uri;Ljava/net/ContentHandler;)V

    goto :goto_0
.end method

.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .parameter "contentUri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 77
    .local v0, type:I
    sparse-switch v0, :sswitch_data_0

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createVolumeDirDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 81
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createLibraryVolumeDirDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 83
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createCollectionVolumeDirDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 85
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->createVolumeDocumentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x2c7 -> :sswitch_2
        0x2d0 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 267
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->blockingQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
