.class public Lcom/google/android/apps/books/app/ErrorFragment;
.super Landroid/app/DialogFragment;
.source "ErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;
    }
.end annotation


# instance fields
.field private mPositiveClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/books/app/ErrorFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ErrorFragment$1;-><init>(Lcom/google/android/apps/books/app/ErrorFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ErrorFragment;->mPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 19
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->getMessageText(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 21
    invoke-static {v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->getPositiveText(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ErrorFragment;->mPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    invoke-static {v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->getNegativeText(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
