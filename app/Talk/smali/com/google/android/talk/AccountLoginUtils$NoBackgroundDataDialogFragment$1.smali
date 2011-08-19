.class Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountLoginUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$1;->this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$1;->this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->access$100(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$1;->this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->access$100(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 206
    return-void
.end method
