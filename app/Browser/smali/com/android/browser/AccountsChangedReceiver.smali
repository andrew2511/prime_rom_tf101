.class public Lcom/android/browser/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 37
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v8, "acct_type"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, accountType:Ljava/lang/String;
    const-string v8, "acct_name"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, accountName:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 44
    .local v3, accounts:[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v4, v5

    .line 45
    .local v0, a:Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    .end local v0           #a:Landroid/accounts/Account;
    :cond_2
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "acct_type"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "acct_name"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    invoke-static {p1, v10}, Landroid/provider/BrowserContract$Settings;->setSyncEnabled(Landroid/content/Context;Z)V

    .line 56
    move-object v4, v3

    array-length v6, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v0, v4, v5

    .line 57
    .restart local v0       #a:Landroid/accounts/Account;
    const-string v8, "com.android.browser"

    invoke-static {v0, v8, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 58
    const-string v8, "com.android.browser"

    invoke-static {v0, v8, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 60
    .end local v0           #a:Landroid/accounts/Account;
    :cond_3
    const/4 v8, 0x1

    invoke-static {p1, v8}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;Z)V

    goto :goto_0
.end method
