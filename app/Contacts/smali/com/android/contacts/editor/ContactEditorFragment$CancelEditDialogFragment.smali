.class public Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelEditDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 804
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;-><init>()V

    .line 805
    .local v0, dialog:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 806
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "cancelEditor"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 807
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 811
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01a8

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 825
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method
