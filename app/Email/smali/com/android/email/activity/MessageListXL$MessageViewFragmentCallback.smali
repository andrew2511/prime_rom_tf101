.class Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageViewFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onBeforeMessageDelete()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)V

    .line 512
    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .locals 1
    .parameter "epochEventStartTime"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 507
    return-void
.end method

.method public onForward()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 522
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 497
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public onMessageNotExists()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 483
    return-void
.end method

.method public onMessageSetUnread()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 478
    return-void
.end method

.method public onMessageViewGone()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1100(Lcom/android/email/activity/MessageListXL;)V

    .line 467
    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)V

    .line 461
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)V

    .line 462
    return-void
.end method

.method public onMoveMessage()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)V

    .line 517
    return-void
.end method

.method public onReply()V
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 527
    return-void
.end method

.method public onReplyAll()V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 532
    return-void
.end method

.method public onRespondedToInvite(I)V
    .locals 1
    .parameter "response"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)V

    .line 502
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method
