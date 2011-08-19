.class public Lcom/github/droidfu/activities/BetterDefaultActivity;
.super Landroid/app/Activity;
.source "BetterDefaultActivity.java"

# interfaces
.implements Lcom/github/droidfu/activities/BetterActivity;


# instance fields
.field private currentIntent:Landroid/content/Intent;

.field private progressDialogMsgId:I

.field private progressDialogTitleId:I

.field private wasCreated:Z

.field private wasInterrupted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->currentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getWindowFeatures()I
    .locals 1

    .prologue
    .line 91
    invoke-static {p0}, Lcom/github/droidfu/activities/BetterActivityHelper;->getWindowFeatures(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public isApplicationBroughtToBackground()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/github/droidfu/activities/BetterActivityHelper;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLandscapeMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaunching()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasInterrupted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortraitMode()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestoring()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasInterrupted:Z

    return v0
.end method

.method public isResuming()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newAlertDialog(II)Landroid/app/AlertDialog;
    .locals 3
    .parameter "titleResourceId"
    .parameter "messageResourceId"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    invoke-static {p0, v0, v1, v2}, Lcom/github/droidfu/activities/BetterActivityHelper;->newMessageDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public newErrorHandlerDialog(ILjava/lang/Exception;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "titleResourceId"
    .parameter "error"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/github/droidfu/activities/BetterActivityHelper;->newErrorHandlerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public newErrorHandlerDialog(Ljava/lang/Exception;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "error"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "droidfu_error_dialog_title"

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/github/droidfu/activities/BetterDefaultActivity;->newErrorHandlerDialog(ILjava/lang/Exception;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public newInfoDialog(II)Landroid/app/AlertDialog;
    .locals 3
    .parameter "titleResourceId"
    .parameter "messageResourceId"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x108009b

    invoke-static {p0, v0, v1, v2}, Lcom/github/droidfu/activities/BetterActivityHelper;->newMessageDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public newListDialog(Ljava/util/List;Lcom/github/droidfu/dialogs/DialogClickListener;Z)Landroid/app/Dialog;
    .locals 1
    .parameter
    .parameter
    .parameter "closeOnSelect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/github/droidfu/dialogs/DialogClickListener",
            "<TT;>;Z)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, elements:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, listener:Lcom/github/droidfu/dialogs/DialogClickListener;,"Lcom/github/droidfu/dialogs/DialogClickListener<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/github/droidfu/activities/BetterActivityHelper;->newListDialog(Landroid/content/Context;Ljava/util/List;Lcom/github/droidfu/dialogs/DialogClickListener;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public newYesNoDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "titleResourceId"
    .parameter "messageResourceId"
    .parameter "listener"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x108009b

    invoke-static {p0, v0, v1, v2, p3}, Lcom/github/droidfu/activities/BetterActivityHelper;->newYesNoDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasCreated:Z

    .line 45
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->currentIntent:Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/github/droidfu/DroidFuApplication;->setActiveContext(Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 78
    iget v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->progressDialogTitleId:I

    iget v1, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->progressDialogMsgId:I

    invoke-static {p0, v0, v1}, Lcom/github/droidfu/activities/BetterActivityHelper;->createProgressDialog(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    iput-object p1, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->currentIntent:Landroid/content/Intent;

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasInterrupted:Z

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasCreated:Z

    .line 68
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->wasInterrupted:Z

    .line 62
    return-void
.end method

.method public setProgressDialogMsgId(I)V
    .locals 0
    .parameter "progressDialogMsgId"

    .prologue
    .line 87
    iput p1, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->progressDialogMsgId:I

    .line 88
    return-void
.end method

.method public setProgressDialogTitleId(I)V
    .locals 0
    .parameter "progressDialogTitleId"

    .prologue
    .line 83
    iput p1, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->progressDialogTitleId:I

    .line 84
    return-void
.end method
