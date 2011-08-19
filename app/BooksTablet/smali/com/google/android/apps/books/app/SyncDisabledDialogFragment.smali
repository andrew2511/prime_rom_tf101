.class public Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;
.super Landroid/app/DialogFragment;
.source "SyncDisabledDialogFragment.java"


# instance fields
.field private mNegativeClick:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;-><init>(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->mPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    new-instance v0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;-><init>(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->mNegativeClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->markHaveNagged()V

    return-void
.end method

.method private markHaveNagged()V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 59
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 60
    .local v0, account:Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 61
    new-instance v2, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v2, v1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, syncState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/books/sync/SyncAccountsState;->setHaveNagged(Ljava/lang/String;Z)V

    .line 64
    .end local v2           #syncState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v2, 0x7f0b0066

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const v2, 0x7f0b0067

    iget-object v3, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->mPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->mNegativeClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
