.class Lcom/android/email/Controller$10;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageBoolean(JLjava/lang/String;Z)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnValue:Z

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/lang/String;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$10;->val$columnName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/email/Controller$10;->val$columnValue:Z

    iput-wide p4, p0, Lcom/android/email/Controller$10;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 837
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 838
    .local v2, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/email/Controller$10;->val$columnName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/email/Controller$10;->val$columnValue:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 839
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/email/Controller$10;->val$messageId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 841
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 844
    iget-object v4, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/Controller$10;->val$messageId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 845
    .local v0, accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v4, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-virtual {v4, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    iget-object v4, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    goto :goto_0
.end method
