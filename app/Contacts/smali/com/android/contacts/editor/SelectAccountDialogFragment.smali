.class public Lcom/android/contacts/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 71
    .local v0, target:Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 45
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Z)V

    .line 50
    .local v0, accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v2, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    .line 61
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    const v4, 0x7f0c0104

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 62
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 64
    .local v3, result:Landroid/app/AlertDialog;
    return-object v3
.end method
