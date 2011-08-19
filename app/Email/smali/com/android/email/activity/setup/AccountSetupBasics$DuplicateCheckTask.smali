.class Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckHost:Ljava/lang/String;

.field private final mCheckLogin:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "checkHost"
    .parameter "checkLogin"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 472
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    .line 473
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    .line 474
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    .line 476
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$102(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z

    .line 477
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 6
    .parameter "params"

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 483
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .parameter "duplicateAccount"

    .prologue
    .line 488
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$102(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z

    .line 490
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    :goto_0
    return-void

    .line 492
    :cond_0
    if-eqz p1, :cond_1

    .line 493
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v1

    .line 495
    .local v1, dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DuplicateAccountDialogFragment"

    invoke-virtual {v1, v3, v4}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 501
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 502
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 503
    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 504
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 466
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method
