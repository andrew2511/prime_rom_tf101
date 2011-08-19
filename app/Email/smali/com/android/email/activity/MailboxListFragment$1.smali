.class Lcom/android/email/activity/MailboxListFragment$1;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MailboxesAdapter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$1;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetDropTargetBackground(Lcom/android/email/activity/MailboxListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$1;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$000(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$1;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 119
    return-void
.end method
