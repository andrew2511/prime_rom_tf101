.class Lcom/android/email/activity/MailboxListFragment$2;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->onDrop(Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field final synthetic val$controller:Lcom/android/email/Controller;

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;[JLcom/android/email/Controller;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$2;->val$messageIds:[J

    iput-object p3, p0, Lcom/android/email/activity/MailboxListFragment$2;->val$controller:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 660
    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->val$messageIds:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v3, v0, v1

    .line 663
    .local v3, messageId:J
    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 664
    .local v5, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v5, :cond_0

    .line 665
    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$2;->val$controller:Lcom/android/email/Controller;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 661
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #messageId:J
    .end local v5           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$2;->val$controller:Lcom/android/email/Controller;

    iget-object v7, p0, Lcom/android/email/activity/MailboxListFragment$2;->val$messageIds:[J

    iget-object v8, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListItem;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/email/Controller;->moveMessage([JJ)Landroid/os/AsyncTask;

    .line 671
    :cond_2
    return-void
.end method
