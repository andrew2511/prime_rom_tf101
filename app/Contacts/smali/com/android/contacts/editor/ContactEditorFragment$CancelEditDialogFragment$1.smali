.class Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 820
    return-void
.end method
