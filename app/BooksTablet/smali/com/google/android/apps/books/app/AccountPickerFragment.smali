.class public Lcom/google/android/apps/books/app/AccountPickerFragment;
.super Landroid/app/DialogFragment;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/AccountPickerFragment$1;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountPickerFragment"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private mCurrentAccountPosition:I

.field private mListView:Landroid/widget/ListView;

.field private mProgressView:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mState:I

    .line 222
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/AccountPickerFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/app/AccountPickerFragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->finishSetAccount(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/AccountPickerFragment;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->onAccountClick(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/app/AccountPickerFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/AccountPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->selectCurrentAccount()V

    return-void
.end method

.method private finishSetAccount(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 266
    new-instance v1, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->dismiss()V

    .line 271
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    const-string v2, "AccountPickerFragment"

    .line 95
    const-string v0, "AccountPickerFragment"

    const/4 v0, 0x6

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "AccountPickerFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception raised while retrieving accounts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setAccountInScene(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->dismiss()V

    .line 101
    :cond_1
    return-void
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 275
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 279
    :goto_1
    return v1

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private onAccountClick(Landroid/accounts/Account;)V
    .locals 7
    .parameter "account"

    .prologue
    .line 146
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setState(I)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 150
    .local v4, activity:Landroid/app/Activity;
    if-eqz v4, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "print"

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v5, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/books/app/AccountPickerFragment$AuthorizedAccountCallback;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->dismiss()V

    goto :goto_0
.end method

.method private selectCurrentAccount()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 162
    return-void
.end method

.method private setAccountInScene(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->finishedPickingAccount(Landroid/accounts/Account;)V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 104
    iput p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mState:I

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 122
    const v0, 0x7f0b003f

    .line 124
    .local v0, titleId:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setTitle(I)V

    .line 125
    return-void

    .line 108
    .end local v0           #titleId:I
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 110
    const v0, 0x7f0b003e

    .line 111
    .restart local v0       #titleId:I
    goto :goto_0

    .line 113
    .end local v0           #titleId:I
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 116
    const v0, 0x7f0b003d

    .line 117
    .restart local v0       #titleId:I
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 140
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 77
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v3, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    .line 79
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 80
    new-array v2, v6, [Ljava/lang/String;

    .line 81
    .local v2, features:[Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V

    .line 82
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 85
    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setState(I)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    .local v0, result:Landroid/view/ViewGroup;
    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    .line 65
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    .line 66
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setAccountInScene(Landroid/accounts/Account;)Z

    .line 92
    return-void
.end method
