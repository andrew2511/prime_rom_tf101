.class Lcom/asus/reader/vibe2/VibeAgent$2;
.super Ljava/lang/Object;
.source "VibeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/vibe2/VibeAgent;->checkUnpaidContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/vibe2/VibeAgent;


# direct methods
.method constructor <init>(Lcom/asus/reader/vibe2/VibeAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$2;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 240
    iget-object v11, p0, Lcom/asus/reader/vibe2/VibeAgent$2;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-virtual {v11}, Lcom/asus/reader/vibe2/VibeAgent;->loadUnpaidActivities()Landroid/database/Cursor;

    move-result-object v0

    .line 241
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 245
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 249
    :cond_2
    const-string v11, "sync_time"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 250
    .local v5, syncTime:J
    const-string v11, "purchase_time"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 251
    .local v3, purchaseTime:J
    const-string v11, "_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 252
    .local v8, vibeid:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    const-wide/32 v13, 0x900b0

    cmp-long v11, v11, v13

    if-lez v11, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/32 v13, 0xf69ec40

    cmp-long v11, v11, v13

    if-gez v11, :cond_6

    .line 253
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v7, values:Landroid/content/ContentValues;
    const-string v11, "sync_time"

    new-instance v12, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, where:Ljava/lang/String;
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/asus/reader/vibe2/VibeAgent;->getContent(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/Content;

    move-result-object v1

    .line 257
    .local v1, content:Lcom/asus/reader/vibe2/Content;
    if-nez v1, :cond_4

    .line 283
    .end local v1           #content:Lcom/asus/reader/vibe2/Content;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 259
    .restart local v1       #content:Lcom/asus/reader/vibe2/Content;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v10       #where:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getPaid()Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 260
    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, download_url:Ljava/lang/String;
    const-string v11, "download_url"

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v11, "_paid"

    const-string v12, "1"

    invoke-virtual {v7, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v2           #download_url:Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/asus/reader/vibe2/VibeAgent$2;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v11}, Lcom/asus/reader/vibe2/VibeAgent;->access$100(Lcom/asus/reader/vibe2/VibeAgent;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v7, v10, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 279
    .end local v1           #content:Lcom/asus/reader/vibe2/Content;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/String;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/32 v13, 0xf69ec40

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 280
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 281
    .restart local v10       #where:Ljava/lang/String;
    iget-object v11, p0, Lcom/asus/reader/vibe2/VibeAgent$2;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v11}, Lcom/asus/reader/vibe2/VibeAgent;->access$100(Lcom/asus/reader/vibe2/VibeAgent;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method
