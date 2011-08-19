.class Lcom/asus/reader/book/ReaderDatabase$1$1;
.super Ljava/lang/Object;
.source "ReaderDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ReaderDatabase$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/reader/book/ReaderDatabase$1;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/ReaderDatabase$1;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xf69ec40

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 485
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->loadUnpaidActivities()Landroid/database/Cursor;

    move-result-object v1

    .line 486
    if-nez v1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 490
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 494
    :cond_2
    const-string v0, "sync_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 495
    const-string v0, "purchase_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 496
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/32 v8, 0x900b0

    cmp-long v0, v2, v8

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v2, v12

    if-gez v0, :cond_6

    .line 498
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 499
    const-string v0, "sync_time"

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/VibeAgent;->getContent(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/Content;

    move-result-object v4

    .line 503
    if-nez v4, :cond_4

    .line 533
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 505
    :cond_4
    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getPaid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 506
    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v5, "download_url"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v0, "_paid"

    const-string v5, "1"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f07002e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getContentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v6, v6, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v6}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0700c1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v7, v7, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v7}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/asus/reader/ReaderWebView;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 515
    const-string v7, "weburl"

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v7, "cover_url"

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getCoverPicUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getMainCategoryId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getSubcategoryId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getSPContentId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 518
    const-string v8, "vibeid"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    iget-object v7, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v7, v7, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v7}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 520
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 521
    const v8, 0x7f02000c

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 522
    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 523
    iget-object v8, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v8, v8, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v8}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v0, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 524
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2, v3, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 529
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v2, v12

    if-lez v0, :cond_3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$1$1;->this$1:Lcom/asus/reader/book/ReaderDatabase$1;

    iget-object v2, v2, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method
