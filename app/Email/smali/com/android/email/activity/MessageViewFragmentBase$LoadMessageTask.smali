.class Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
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
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mMailboxType:I

.field private final mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 0
    .parameter
    .parameter "okToFetch"

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 978
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 979
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 5
    .parameter "params"

    .prologue
    .line 983
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 984
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 985
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 988
    :cond_0
    if-eqz v1, :cond_1

    .line 989
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    .line 990
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 991
    const/4 v1, 0x0

    .line 994
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 969
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1002
    :cond_0
    if-nez p1, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1004
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1202(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 1009
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 1010
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 1011
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 969
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
