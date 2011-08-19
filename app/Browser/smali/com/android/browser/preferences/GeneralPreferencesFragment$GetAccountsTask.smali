.class Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;
.super Landroid/os/AsyncTask;
.source "GeneralPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .parameter "unused"

    .prologue
    const/4 v7, 0x0

    .line 163
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->mContext:Landroid/content/Context;

    const-string v6, "account"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 164
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 165
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_2

    .line 167
    :cond_0
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v5, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChromeSync:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    .line 168
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v5, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChromeSync:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v6, v6, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAddAccount:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    move-object v5, v7

    .line 192
    :goto_0
    return-object v5

    .line 172
    :cond_2
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iput-object v1, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAccounts:[Landroid/accounts/Account;

    .line 173
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 174
    .local v4, prefs:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v5, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChromeSync:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 175
    .local v3, args:Landroid/os/Bundle;
    const-string v5, "accounts"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 176
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v6, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/BrowserContract$Settings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mEnabled:Z

    .line 177
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v5, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChromeSync:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-boolean v5, v5, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mEnabled:Z

    if-nez v5, :cond_3

    .line 181
    iget-object v5, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090095

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 185
    :cond_3
    const-string v5, "acct_name"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, accountName:Ljava/lang/String;
    const-string v5, "curAccount"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 188
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iget-object v0, v0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChromeSync:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    return-void
.end method
