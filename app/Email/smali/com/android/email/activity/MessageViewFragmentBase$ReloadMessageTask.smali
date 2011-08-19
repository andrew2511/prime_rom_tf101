.class Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadMessageTask"
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
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 1021
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 1028
    :goto_0
    return-object v1

    .line 1024
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1025
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 1026
    goto :goto_0

    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1018
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1037
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1043
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1018
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
