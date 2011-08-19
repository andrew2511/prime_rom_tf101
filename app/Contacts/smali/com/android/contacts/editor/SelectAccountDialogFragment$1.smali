.class Lcom/android/contacts/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 57
    .local v0, target:Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Landroid/accounts/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Landroid/accounts/Account;)V

    .line 58
    return-void
.end method
