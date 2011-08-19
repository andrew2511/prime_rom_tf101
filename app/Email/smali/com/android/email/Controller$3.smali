.class Lcom/android/email/Controller$3;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->updateMailbox(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$3;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$3;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 387
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 389
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto :goto_0
.end method
