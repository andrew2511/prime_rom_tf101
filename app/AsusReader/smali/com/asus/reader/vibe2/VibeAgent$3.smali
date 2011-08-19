.class final Lcom/asus/reader/vibe2/VibeAgent$3;
.super Ljava/lang/Object;
.source "VibeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/vibe2/VibeAgent;->addCandidateDownload(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$candidatecontent:Lcom/asus/reader/vibe2/SubcategoryContents;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$candidatecontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    iput-object p2, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 384
    iget-object v6, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$candidatecontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/asus/reader/vibe2/VibeAgent;->getSubContentinDb(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 385
    .local v0, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, username:Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 387
    iget-object v6, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$candidatecontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v8, v3}, Lcom/asus/reader/vibe2/SubcategoryContents;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 390
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 391
    .local v1, id:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "purchase_time"

    new-instance v7, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v6, "sync_time"

    new-instance v7, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, where:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/reader/vibe2/VibeAgent$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
