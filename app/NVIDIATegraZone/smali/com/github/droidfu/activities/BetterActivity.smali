.class public interface abstract Lcom/github/droidfu/activities/BetterActivity;
.super Ljava/lang/Object;
.source "BetterActivity.java"


# virtual methods
.method public abstract getCurrentIntent()Landroid/content/Intent;
.end method

.method public abstract getWindowFeatures()I
.end method

.method public abstract isApplicationBroughtToBackground()Z
.end method

.method public abstract isLandscapeMode()Z
.end method

.method public abstract isLaunching()Z
.end method

.method public abstract isPortraitMode()Z
.end method

.method public abstract isRestoring()Z
.end method

.method public abstract isResuming()Z
.end method

.method public abstract newAlertDialog(II)Landroid/app/AlertDialog;
.end method

.method public abstract newErrorHandlerDialog(ILjava/lang/Exception;)Landroid/app/AlertDialog;
.end method

.method public abstract newErrorHandlerDialog(Ljava/lang/Exception;)Landroid/app/AlertDialog;
.end method

.method public abstract newInfoDialog(II)Landroid/app/AlertDialog;
.end method

.method public abstract newListDialog(Ljava/util/List;Lcom/github/droidfu/dialogs/DialogClickListener;Z)Landroid/app/Dialog;
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
.end method

.method public abstract newYesNoDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end method

.method public abstract setProgressDialogMsgId(I)V
.end method

.method public abstract setProgressDialogTitleId(I)V
.end method
