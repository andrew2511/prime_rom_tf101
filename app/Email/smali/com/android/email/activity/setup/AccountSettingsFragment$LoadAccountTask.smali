.class Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 320
    aget-object v5, p1, v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 321
    .local v1, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 322
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 323
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 325
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 327
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v5, :cond_1

    .line 328
    :cond_0
    const/4 v0, 0x0

    .line 331
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v3

    .line 332
    .local v3, defaultAccountId:J
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/4 v6, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5
    .parameter "results"

    .prologue
    const/4 v2, 0x0

    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    aget-object v0, p1, v2

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 339
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$202(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 341
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 350
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    :goto_0
    return-void

    .line 343
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$402(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 344
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J

    .line 345
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    goto :goto_0
.end method
