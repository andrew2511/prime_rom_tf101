.class Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxFinderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public onAccountNotFound()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountSecurityHold(J)V

    .line 511
    return-void
.end method

.method public onMailboxFound(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJ)V

    .line 519
    return-void
.end method

.method public onMailboxNotFound(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 527
    return-void
.end method
