.class Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "SplitContactConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;

    .line 50
    .local v0, targetListener:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;->onSplitContactConfirmed()V

    .line 51
    return-void
.end method
