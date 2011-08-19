.class Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBodyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mErrorLoadingMessageBody:Z

.field private mId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter
    .parameter "messageId"

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1072
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    .line 1073
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1063
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    .line 1078
    const/4 v2, 0x0

    .line 1079
    .local v2, text:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, html:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1081
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 1083
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v0           #html:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1084
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1087
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    const-string v4, "Exception while loading message body"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    .line 1089
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1063
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 3
    .parameter "results"

    .prologue
    .line 1095
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080047

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onPostLoadBody()V

    goto :goto_0
.end method
