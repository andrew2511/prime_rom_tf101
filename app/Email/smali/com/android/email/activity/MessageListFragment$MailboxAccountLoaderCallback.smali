.class Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxAccountLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/data/MailboxAccountLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mMailboxChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0
    .parameter
    .parameter "mailboxChanging"

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-boolean p2, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->mMailboxChanging:Z

    .line 1086
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v0, Lcom/android/email/data/MailboxAccountLoader;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/data/MailboxAccountLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/data/MailboxAccountLoader$Result;)V
    .locals 6
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ">;",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/data/MailboxAccountLoader$Result;>;"
    iget-boolean v0, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsFound:Z

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailboxNotFound()V

    .line 1120
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->access$702(Lcom/android/email/activity/MessageListFragment;J)J

    .line 1110
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1111
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$902(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 1112
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v1, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsEasAccount:Z

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$1002(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1113
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v1, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsRefreshable:Z

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$1102(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1114
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget v1, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mCountTotalAccounts:I

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$1202(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1115
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->mMailboxChanging:Z

    invoke-direct {v3, v4, v5}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->mMailboxChanging:Z

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1080
    check-cast p2, Lcom/android/email/data/MailboxAccountLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/data/MailboxAccountLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1124
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/data/MailboxAccountLoader$Result;>;"
    return-void
.end method
