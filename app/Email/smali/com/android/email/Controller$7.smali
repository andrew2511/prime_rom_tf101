.class Lcom/android/email/Controller$7;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadMoreMessages(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$7;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 651
    iget-object v5, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/Controller$7;->val$mailboxId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 652
    .local v3, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v3, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v5, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 657
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 660
    iget-object v5, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 662
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    if-lez v5, :cond_0

    .line 664
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 665
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "field"

    const-string v6, "visibleLimit"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v5, "add"

    iget v6, v2, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/email/Controller$7;->val$mailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 668
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    iget v5, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    iget v6, v2, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 671
    iget-object v5, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v6}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto :goto_0
.end method
