.class public Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoBackgroundDataDialogFragment"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->mActivity:Landroid/app/Activity;

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 214
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0077

    new-instance v2, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$2;-><init>(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0078

    new-instance v2, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$1;-><init>(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
