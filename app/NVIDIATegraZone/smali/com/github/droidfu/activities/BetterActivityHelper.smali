.class public Lcom/github/droidfu/activities/BetterActivityHelper;
.super Ljava/lang/Object;
.source "BetterActivityHelper.java"


# static fields
.field public static final ERROR_DIALOG_TITLE_RESOURCE:Ljava/lang/String; = "droidfu_error_dialog_title"

.field private static final PROGRESS_DIALOG_MESSAGE_RESOURCE:Ljava/lang/String; = "droidfu_progress_dialog_message"

.field private static final PROGRESS_DIALOG_TITLE_RESOURCE:Ljava/lang/String; = "droidfu_progress_dialog_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProgressDialog(Landroid/app/Activity;II)Landroid/app/ProgressDialog;
    .locals 5
    .parameter "activity"
    .parameter "progressDialogTitleId"
    .parameter "progressDialogMsgId"

    .prologue
    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    if-lez p1, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 76
    :goto_0
    if-lez p2, :cond_1

    .line 77
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 84
    new-instance v1, Lcom/github/droidfu/activities/BetterActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/github/droidfu/activities/BetterActivityHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 91
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "droidfu_progress_dialog_title"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "droidfu_progress_dialog_message"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 81
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static getWindowFeatures(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    .local v0, window:Landroid/view/Window;
    if-nez v0, :cond_0

    .line 61
    :cond_0
    return v1
.end method

.method public static isApplicationBroughtToBackground(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 197
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 200
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 205
    .end local v2           #topActivity:Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static newErrorHandlerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "activity"
    .parameter "dialogTitle"
    .parameter "error"

    .prologue
    .line 128
    const-string v1, ""

    .line 129
    .local v1, screenMessage:Ljava/lang/String;
    instance-of v1, p2, Lcom/github/droidfu/exception/ResourceMessageException;

    .end local v1           #screenMessage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/github/droidfu/exception/ResourceMessageException;

    move-object v1, v0

    invoke-interface {v1}, Lcom/github/droidfu/exception/ResourceMessageException;->getClientMessageResourceId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1       #screenMessage:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    const p1, 0x1080027

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 139
    .end local p1
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 140
    const p1, 0x104000a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/github/droidfu/activities/BetterActivityHelper$3;

    .end local v1           #screenMessage:Ljava/lang/String;
    invoke-direct {v1}, Lcom/github/droidfu/activities/BetterActivityHelper$3;-><init>()V

    invoke-virtual {v2, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    const-string p1, "android.intent.action.SEND"

    const-string v1, "message/rfc822"

    invoke-static {p0, p1, v1}, Lcom/github/droidfu/support/IntentSupport;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "droidfu_dialog_button_send_error_report"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 151
    .local p1, buttonId:I
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, buttonText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #buttonId:I
    const-string v1, "droidfu_error_report_email_address"

    const-string v4, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 154
    .local p1, bugEmailAddressId:I
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, bugReportEmailAddress:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #bugEmailAddressId:I
    const-string v4, "droidfu_error_report_email_subject"

    const-string v5, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 157
    .local p1, bugEmailSubjectId:I
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    .local p1, bugReportEmailSubject:Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/github/droidfu/support/DiagnosticSupport;->createDiagnosis(Landroid/app/Activity;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 159
    .local p2, diagnosis:Ljava/lang/String;
    invoke-static {p0, v1, p1, p2}, Lcom/github/droidfu/support/IntentSupport;->newEmailIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 161
    .local p1, intent:Landroid/content/Intent;
    move-object p0, p0

    .line 162
    .local p0, a:Landroid/app/Activity;
    new-instance p2, Lcom/github/droidfu/activities/BetterActivityHelper$4;

    .end local p2           #diagnosis:Ljava/lang/String;
    invoke-direct {p2, p0, p1}, Lcom/github/droidfu/activities/BetterActivityHelper$4;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    .end local v1           #bugReportEmailAddress:Ljava/lang/String;
    .end local v3           #buttonText:Ljava/lang/String;
    .end local p0           #a:Landroid/app/Activity;
    .end local p1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 132
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .local p0, activity:Landroid/app/Activity;
    .local p1, dialogTitle:Ljava/lang/String;
    .local p2, error:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .local v1, screenMessage:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static newListDialog(Landroid/content/Context;Ljava/util/List;Lcom/github/droidfu/dialogs/DialogClickListener;Z)Landroid/app/Dialog;
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .parameter "closeOnSelect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/github/droidfu/dialogs/DialogClickListener",
            "<TT;>;Z)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, elements:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, listener:Lcom/github/droidfu/dialogs/DialogClickListener;,"Lcom/github/droidfu/dialogs/DialogClickListener<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 178
    .local v1, entries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 179
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    new-instance v4, Lcom/github/droidfu/activities/BetterActivityHelper$5;

    invoke-direct {v4, p3, p2, p1}, Lcom/github/droidfu/activities/BetterActivityHelper$5;-><init>(ZLcom/github/droidfu/dialogs/DialogClickListener;Ljava/util/List;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static newMessageDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "dialogTitle"
    .parameter "screenMessage"
    .parameter "iconResourceId"

    .prologue
    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v1, "Okay"

    new-instance v2, Lcom/github/droidfu/activities/BetterActivityHelper$2;

    invoke-direct {v2}, Lcom/github/droidfu/activities/BetterActivityHelper$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static newYesNoDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "activity"
    .parameter "dialogTitle"
    .parameter "screenMessage"
    .parameter "iconResourceId"
    .parameter "listener"

    .prologue
    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 98
    const v1, 0x1040013

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    const v1, 0x1040009

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
