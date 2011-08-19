.class public Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;
.super Landroid/app/DialogFragment;
.source "ConcurrentAccessLimitExceededFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 39
    new-instance v2, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;-><init>(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)V

    .line 49
    .local v2, okListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;->getMaxDevices(Landroid/os/Bundle;)I

    move-result v0

    .line 50
    .local v0, maxDevices:I
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0001

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, template:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "%1$d"

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    .local v1, message:Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0063

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
