.class public Lcom/android/email/activity/DeleteMessageConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DeleteMessageConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 37
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 86
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 88
    check-cast v0, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    .end local v0           #targetFragment:Landroid/app/Fragment;
    move-object v1, v0

    .line 91
    .end local p0
    :goto_0
    return-object v1

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    move-object v1, p0

    goto :goto_0
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;
    .locals 3
    .parameter "countMessage"
    .parameter "callbackFragment"

    .prologue
    .line 50
    new-instance v1, Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    invoke-direct {v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;-><init>()V

    .line 51
    .local v1, dialog:Lcom/android/email/activity/DeleteMessageConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "count_messages"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 57
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 77
    packed-switch p2, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getCallback()Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;->onDeleteMessageConfirmationDialogOkPressed()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "count_messages"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, countMessages:I
    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 65
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 66
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0800a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v3, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08001f

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080020

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
