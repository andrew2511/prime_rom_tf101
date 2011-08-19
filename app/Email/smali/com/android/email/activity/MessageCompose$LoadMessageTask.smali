.class Lcom/android/email/activity/MessageCompose$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .locals 0
    .parameter
    .parameter "messageId"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 615
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    .line 616
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 611
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 620
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$100()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 621
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$200()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 623
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$100()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v7

    goto :goto_0

    .line 628
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 630
    .local v5, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v5, :cond_1

    .line 631
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    .line 659
    :goto_1
    return-object v6

    .line 628
    .end local v5           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 633
    .restart local v5       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 634
    .local v1, accountId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 637
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_4
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 638
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 639
    const-string v6, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 641
    .local v4, isEditDraft:Z
    if-eqz v4, :cond_2

    .line 642
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 644
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 646
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 648
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodySourceKey(Landroid/content/Context;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 659
    :goto_2
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object v0, v6, v11

    goto :goto_1

    .line 651
    :cond_2
    const/4 v6, 0x0

    :try_start_5
    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 652
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 653
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 655
    .end local v4           #isEditDraft:Z
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 656
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while loading message body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 611
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 11
    .parameter "messageAndAccount"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 664
    if-nez p1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 668
    :cond_0
    aget-object v3, p1, v10

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 669
    .local v3, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    aget-object v0, p1, v9

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 670
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 674
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f080047

    invoke-static {v4, v5}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 675
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 681
    :cond_1
    const-string v4, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 682
    .local v1, isEditDraft:Z
    const-string v4, "com.android.email.intent.action.FORWARD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 683
    .local v2, isForward:Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    .line 684
    :cond_2
    if-eqz v1, :cond_4

    .line 685
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4, v3}, Lcom/android/email/activity/MessageCompose;->access$402(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 689
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v5, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    new-array v6, v9, [Ljava/lang/Long;

    iget-wide v7, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageCompose;->access$602(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 726
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4, v0}, Lcom/android/email/activity/MessageCompose;->access$800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 727
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/email/activity/MessageCompose;->processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 728
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4, v9}, Lcom/android/email/activity/MessageCompose;->access$1002(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_0

    .line 687
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4, v3}, Lcom/android/email/activity/MessageCompose;->access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    goto :goto_1

    .line 720
    :cond_5
    const-string v4, "com.android.email.intent.action.REPLY"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.android.email.intent.action.REPLY_ALL"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 721
    :cond_6
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4, v3}, Lcom/android/email/activity/MessageCompose;->access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    goto :goto_2
.end method
