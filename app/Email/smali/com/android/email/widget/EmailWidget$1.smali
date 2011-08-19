.class final Lcom/android/email/widget/EmailWidget$1;
.super Ljava/lang/Object;
.source "EmailWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/widget/EmailWidget;->openMessage(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/email/widget/EmailWidget$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/email/widget/EmailWidget$1;->val$mailboxId:J

    iput-wide p4, p0, Lcom/android/email/widget/EmailWidget$1;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$1;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidget$1;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 284
    .local v7, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v7, :cond_0

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v8, p0, Lcom/android/email/widget/EmailWidget$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$1;->val$context:Landroid/content/Context;

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v3, p0, Lcom/android/email/widget/EmailWidget$1;->val$mailboxId:J

    iget-wide v5, p0, Lcom/android/email/widget/EmailWidget$1;->val$messageId:J

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
