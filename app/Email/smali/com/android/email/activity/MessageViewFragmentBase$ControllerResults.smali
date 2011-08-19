.class Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field private mWaitForLoadMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1602
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method

.method private showAttachmentProgress(JI)V
    .locals 3
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 1689
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_1

    .line 1690
    if-nez p3, :cond_0

    .line 1691
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1693
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgress(I)V

    .line 1695
    :cond_1
    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 12
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1647
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v7

    cmp-long v7, p4, v7

    if-nez v7, :cond_0

    .line 1648
    if-nez p1, :cond_2

    .line 1649
    move-object v0, p0

    move-wide/from16 v1, p6

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->showAttachmentProgress(JI)V

    .line 1650
    packed-switch p8, :pswitch_data_0

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1652
    :pswitch_0
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object v0, v7

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v5

    .line 1654
    .local v5, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v5, :cond_1

    .line 1655
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3200(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1657
    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object v0, v7

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto :goto_0

    .line 1664
    .end local v5           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object v0, v7

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v4

    .line 1665
    .local v4, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v4, :cond_0

    .line 1670
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1671
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1672
    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 1675
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_3

    .line 1676
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080045

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1682
    .local v6, error:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    goto :goto_0

    .line 1678
    .end local v6           #error:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800ab

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #error:Ljava/lang/String;
    goto :goto_1

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 1612
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1616
    :cond_0
    if-nez p1, :cond_1

    .line 1617
    sparse-switch p6, :sswitch_data_0

    goto :goto_0

    .line 1619
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageStarted()V

    .line 1621
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    goto :goto_0

    .line 1624
    :sswitch_1
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 1625
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageFinished()V

    .line 1628
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 1629
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1630
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1637
    :cond_1
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 1638
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, error:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    .line 1640
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_0

    .line 1617
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public setWaitForLoadMessageId(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 1606
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 1607
    return-void
.end method
