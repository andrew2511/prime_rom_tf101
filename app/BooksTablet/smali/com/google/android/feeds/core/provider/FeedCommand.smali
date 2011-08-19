.class public Lcom/google/android/feeds/core/provider/FeedCommand;
.super Ljava/lang/Object;
.source "FeedCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/provider/FeedCommand$Output;,
        Lcom/google/android/feeds/core/provider/FeedCommand$Argument;,
        Lcom/google/android/feeds/core/provider/FeedCommand$Response;,
        Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    }
.end annotation


# static fields
.field public static final RESPOND_INPUT_COMMAND:Ljava/lang/String; = "com.google.android.feeds.cursor.respond.input.extra.COMMAND"

.field public static final RESPOND_OUTPUT_COMMAND_RESPONSE:Ljava/lang/String; = "com.google.android.feeds.cursor.respond.output.extra.COMMAND_RESPONSE"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method private constructor <init>(Lcom/google/android/feeds/core/provider/FeedCommand$Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    .line 215
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->writeTo(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public static moreAsync(Landroid/database/Cursor;)V
    .locals 9
    .parameter "c"

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 375
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 376
    .local v4, extras:Landroid/os/Bundle;
    const-string v7, "com.google.android.feeds.cursor.extra.DATE"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 377
    .local v2, date:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 378
    .local v0, age:J
    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 379
    .local v5, maxAge:J
    invoke-static {}, Lcom/google/android/feeds/core/provider/FeedCommand;->query()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/feeds/core/provider/FeedCommand;->append()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/feeds/core/provider/FeedCommand;->async()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/google/android/feeds/core/provider/FeedCommand;->maxAge(J)Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 380
    return-void
.end method

.method public static query()Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->QUERY:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    invoke-direct {v0, v1}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Lcom/google/android/feeds/core/provider/FeedCommand$Type;)V

    return-object v0
.end method

.method public static refreshAsync(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 309
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 310
    .local v0, count:I
    invoke-static {}, Lcom/google/android/feeds/core/provider/FeedCommand;->query()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->minCount(I)Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand;->refresh()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand;->async()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 311
    return-void
.end method

.method public static retryAsync(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 317
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 318
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "com.google.android.feeds.cursor.extra.RETRY_COMMAND"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 319
    .local v0, command:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 320
    new-instance v2, Lcom/google/android/feeds/core/provider/FeedCommand;

    invoke-direct {v2, v0}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendAsync(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 322
    :cond_0
    return-void
.end method

.method public static save(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 350
    if-nez p0, :cond_0

    move-object v5, v6

    .line 361
    :goto_0
    return-object v5

    .line 353
    :cond_0
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    sget-object v5, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->SAVE:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    invoke-direct {v0, v5}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Lcom/google/android/feeds/core/provider/FeedCommand$Type;)V

    .line 354
    .local v0, command:Lcom/google/android/feeds/core/provider/FeedCommand;
    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 355
    .local v1, respondInput:Landroid/os/Bundle;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 356
    .local v2, respondOutput:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v3

    .line 357
    .local v3, response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    sget-object v5, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    if-ne v3, v5, :cond_1

    .line 358
    sget-object v5, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->URI:Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    invoke-virtual {v5}, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .local v4, uri:Landroid/net/Uri;
    move-object v5, v4

    .line 359
    goto :goto_0

    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    move-object v5, v6

    .line 361
    goto :goto_0
.end method


# virtual methods
.method public append()Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    return-object p0
.end method

.method public async()Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 4

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinCount()I
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MIN_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getState()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    move-result-object v0

    return-object v0
.end method

.method public isAppend()Z
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAsync()Z
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotifyFailureSet()Z
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->NOTIFY_FAILURE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public maxAge(J)Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 2
    .parameter "age"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 438
    return-object p0
.end method

.method public minCount(I)Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 2
    .parameter "count"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MIN_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    return-object p0
.end method

.method public notifyFailure()Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->NOTIFY_FAILURE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    return-object p0
.end method

.method public refresh()Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 2

    .prologue
    .line 445
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/feeds/core/provider/FeedCommand;->maxAge(J)Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v0

    return-object v0
.end method

.method public rowCount(I)Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 2
    .parameter "count"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    return-object p0
.end method

.method public sendAsync(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .locals 1
    .parameter "c"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->async()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v0

    return-object v0
.end method

.method public sendSync(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .locals 10
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand;->sync()Lcom/google/android/feeds/core/provider/FeedCommand;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v5

    .line 254
    .local v5, response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 255
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 256
    .local v3, extras:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v6

    .line 257
    .local v6, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v8, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v6, v8, :cond_4

    .line 258
    const-string v8, "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 259
    .local v1, data:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 260
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    .local v7, throwable:Ljava/lang/Throwable;
    instance-of v8, v7, Ljava/io/IOException;

    if-eqz v8, :cond_0

    .line 270
    check-cast v7, Ljava/io/IOException;

    .end local v7           #throwable:Ljava/lang/Throwable;
    throw v7

    .line 264
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 265
    .local v2, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 266
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 267
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 271
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v7       #throwable:Ljava/lang/Throwable;
    :cond_0
    instance-of v8, v7, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_1

    .line 272
    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7           #throwable:Ljava/lang/Throwable;
    throw v7

    .line 273
    .restart local v7       #throwable:Ljava/lang/Throwable;
    :cond_1
    instance-of v8, v7, Ljava/lang/Error;

    if-eqz v8, :cond_2

    .line 274
    check-cast v7, Ljava/lang/Error;

    .end local v7           #throwable:Ljava/lang/Throwable;
    throw v7

    .line 276
    .restart local v7       #throwable:Ljava/lang/Throwable;
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 281
    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v6           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    .end local v7           #throwable:Ljava/lang/Throwable;
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "requery failed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 279
    .restart local v3       #extras:Landroid/os/Bundle;
    .restart local v6       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_4
    return-object v5
.end method

.method public sendTo(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .locals 1
    .parameter "c"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v0

    return-object v0
.end method

.method public state(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 2
    .parameter "extras"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 474
    return-object p0
.end method

.method public sync()Lcom/google/android/feeds/core/provider/FeedCommand;
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedCommand;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 416
    return-object p0
.end method
