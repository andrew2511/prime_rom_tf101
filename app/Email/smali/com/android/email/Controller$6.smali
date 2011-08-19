.class Lcom/android/email/Controller$6;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->resetVisibleLimits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 612
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 616
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 618
    .local v7, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 619
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    .line 620
    iget-object v1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v11

    .line 622
    .local v11, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v11, :cond_0

    iget v1, v11, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    if-lez v1, :cond_0

    .line 623
    iget v12, v11, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    .line 624
    .local v12, limit:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 625
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "visibleLimit"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 633
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v7           #accountId:J
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #info:Lcom/android/email/mail/Store$StoreInfo;
    .end local v12           #limit:I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 634
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 633
    :cond_2
    if-eqz v9, :cond_3

    .line 634
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_3
    return-void
.end method
