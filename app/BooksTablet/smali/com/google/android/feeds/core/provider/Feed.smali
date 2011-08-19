.class public Lcom/google/android/feeds/core/provider/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# static fields
.field public static final EXTRA_ACCOUNT_MANAGER_BUNDLE:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.ACCOUNT_MANAGER_BUNDLE"

.field public static final EXTRA_CONTENT_ROW_COUNT:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

.field public static final EXTRA_DATE:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.DATE"

.field public static final EXTRA_DOCUMENT_ROW_COUNT:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.DOCUMENT_ROW_COUNT"

.field public static final EXTRA_ERROR_EXCEPTION_OBJECT:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

.field public static final EXTRA_MORE:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.MORE"

.field public static final EXTRA_RESPONSE_CODE:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.RESPONSE_CODE"

.field public static final EXTRA_RESPONSE_MESSAGE:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.RESPONSE_MESSAGE"

.field public static final EXTRA_RETRY_COMMAND:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.RETRY_COMMAND"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method public static errorCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "projection"

    .prologue
    .line 319
    new-instance v0, Lcom/google/android/feeds/core/provider/PlaceholderCursor;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-direct {v0, p0, v1}, Lcom/google/android/feeds/core/provider/PlaceholderCursor;-><init>([Ljava/lang/String;Lcom/google/android/feeds/core/provider/FeedStatus;)V

    return-object v0
.end method

.method public static getErrorExceptionObject(Landroid/database/Cursor;)Ljava/lang/Throwable;
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 229
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 230
    .local v3, extras:Landroid/os/Bundle;
    sget-object v6, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-static {v3}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 231
    const-string v6, "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 232
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v4, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, p0

    .line 246
    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v4           #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v6

    .line 237
    .restart local v1       #data:[B
    :catch_0
    move-exception v6

    move-object v5, v6

    .local v5, ioe:Ljava/io/IOException;
    move-object v6, v8

    .line 238
    goto :goto_0

    .line 239
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/lang/ClassNotFoundException;
    move-object v6, v8

    .line 240
    goto :goto_0

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local p0
    :cond_0
    move-object v6, v8

    .line 243
    goto :goto_0

    .end local v1           #data:[B
    :cond_1
    move-object v6, v8

    .line 246
    goto :goto_0
.end method

.method public static getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    return-object v0
.end method

.method public static hasError(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 126
    if-eqz p0, :cond_1

    .line 127
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 128
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 130
    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :goto_0
    return v1

    .restart local v0       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_0
    move v1, v2

    .line 128
    goto :goto_0

    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_1
    move v1, v2

    .line 130
    goto :goto_0
.end method

.method public static hasMore(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.google.android.feeds.cursor.extra.MORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isLoaded(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 145
    if-eqz p0, :cond_1

    .line 146
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 147
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 149
    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :goto_0
    return v1

    .restart local v0       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_0
    move v1, v2

    .line 147
    goto :goto_0

    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_1
    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public static isLoading(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 164
    if-eqz p0, :cond_1

    .line 165
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 166
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 168
    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :goto_0
    return v1

    .line 166
    .restart local v0       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_1
    move v1, v2

    .line 168
    goto :goto_0
.end method

.method public static isLoadingOrRequerying(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 199
    if-eqz p0, :cond_2

    .line 200
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 201
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 203
    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :goto_0
    return v1

    .line 201
    .restart local v0       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_2
    move v1, v2

    .line 203
    goto :goto_0
.end method

.method public static isRequerying(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 180
    if-eqz p0, :cond_1

    .line 181
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 182
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 184
    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :goto_0
    return v1

    .restart local v0       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_0
    move v1, v2

    .line 182
    goto :goto_0

    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_1
    move v1, v2

    .line 184
    goto :goto_0
.end method

.method public static loadingCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "projection"

    .prologue
    .line 301
    new-instance v0, Lcom/google/android/feeds/core/provider/PlaceholderCursor;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-direct {v0, p0, v1}, Lcom/google/android/feeds/core/provider/PlaceholderCursor;-><init>([Ljava/lang/String;Lcom/google/android/feeds/core/provider/FeedStatus;)V

    return-object v0
.end method

.method public static throwError(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 262
    .local v3, extras:Landroid/os/Bundle;
    sget-object v5, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-static {v3}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 264
    :try_start_0
    const-string v5, "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 265
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 266
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1           #data:[B
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 281
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 268
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #data:[B
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 269
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 270
    .local v4, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 271
    .local v2, e:Ljava/lang/Throwable;
    instance-of v5, v2, Ljava/io/IOException;

    if-eqz v5, :cond_1

    .line 272
    check-cast v2, Ljava/io/IOException;

    .end local v2           #e:Ljava/lang/Throwable;
    throw v2

    .line 273
    .restart local v2       #e:Ljava/lang/Throwable;
    :cond_1
    instance-of v5, v2, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_2

    .line 274
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2           #e:Ljava/lang/Throwable;
    throw v2

    .line 275
    .restart local v2       #e:Ljava/lang/Throwable;
    :cond_2
    instance-of v5, v2, Ljava/lang/Error;

    if-eqz v5, :cond_3

    .line 276
    check-cast v2, Ljava/lang/Error;

    .end local v2           #e:Ljava/lang/Throwable;
    throw v2

    .line 278
    .restart local v2       #e:Ljava/lang/Throwable;
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #e:Ljava/lang/Throwable;
    .end local v4           #in:Ljava/io/ObjectInputStream;
    :cond_4
    return-void
.end method
