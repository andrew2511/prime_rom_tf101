.class Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;
.super Landroid/os/AsyncTask;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleAccountsChangedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/apps/books/app/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/AccountsReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->this$0:Lcom/google/android/apps/books/app/AccountsReceiver;

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 66
    iget-object v10, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 67
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v10, "com.google"

    invoke-virtual {v2, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 70
    .local v9, systemAccounts:[Landroid/accounts/Account;
    iget-object v10, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/apps/books/provider/BooksProvider;->getAllAccountNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 72
    .local v7, providerAccountNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 73
    move-object v3, v9

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 74
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, accountToRemove:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/google/android/apps/books/provider/BooksProvider;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v1           #accountToRemove:Ljava/lang/String;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    :cond_1
    new-instance v6, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v10, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 85
    .local v6, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v6}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    .line 86
    .local v8, selectedAccount:Landroid/accounts/Account;
    if-eqz v8, :cond_2

    invoke-static {v9, v8}, Lcom/google/android/apps/books/app/AccountsReceiver;->access$000([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 87
    invoke-virtual {v6, v11}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 90
    :cond_2
    return-object v11
.end method
