.class public Lcom/android/browser/preferences/GeneralPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;,
        Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;
    }
.end annotation


# instance fields
.field mAccounts:[Landroid/accounts/Account;

.field mAddAccount:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mChromeSync:Landroid/preference/Preference;

.field mEnabled:Z

.field mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;

    invoke-direct {v0, p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V

    iput-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 124
    new-instance v0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;

    invoke-direct {v0, p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V

    iput-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 143
    new-instance v0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;

    invoke-direct {v0, p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V

    iput-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAddAccount:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/preferences/GeneralPreferencesFragment;)Landroid/accounts/AccountManagerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-object v0
.end method

.method private getSKUValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, SKUvalue:Ljava/lang/String;
    const-string v0, "0"

    .line 216
    .local v0, DefaultValue:Ljava/lang/String;
    const-string v2, "ro.product.name"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "CN_epad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const-string v0, "1"

    .line 221
    :goto_0
    return-object v0

    .line 220
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->addPreferencesFromResource(I)V

    .line 67
    const-string v1, "homepage"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "homepage"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    check-cast v0, Lcom/android/browser/BrowserHomepagePreference;

    .end local v0           #e:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentPage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHomepagePreference;->setCurrentPage(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 74
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 108
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "PageContentPreferencesFragment"

    const-string v1, "onPreferenceChange called from detached fragment!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 91
    .end local p2
    :goto_0
    return v0

    .line 86
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "homepage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .restart local p2
    :cond_1
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAccounts:[Landroid/accounts/Account;

    if-nez v1, :cond_0

    .line 227
    const-string v1, "PersonalPreferencesFragment"

    const-string v2, "NULL accounts!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 238
    :goto_0
    return v1

    .line 231
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 232
    new-instance v0, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;

    invoke-direct {v0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$AccountChooserDialog;-><init>()V

    .line 233
    .local v0, frag:Landroid/app/DialogFragment;
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v1, v3

    .line 238
    goto :goto_0

    .line 235
    .end local v0           #frag:Landroid/app/DialogFragment;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mAccounts:[Landroid/accounts/Account;

    invoke-static {v1}, Lcom/android/browser/preferences/ImportWizard;->newInstance([Landroid/accounts/Account;)Lcom/android/browser/preferences/ImportWizard;

    move-result-object v0

    .restart local v0       #frag:Landroid/app/DialogFragment;
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 99
    const-string v0, "sync_with_chrome"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChromeSync:Landroid/preference/Preference;

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->refreshUi()V

    .line 101
    return-void
.end method

.method refreshUi()V
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getSKUValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;

    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment$GetAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    :cond_0
    const-string v1, "autofill_profile"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 209
    .local v0, autoFillSettings:Landroid/preference/PreferenceScreen;
    const-string v1, "autofill_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 210
    return-void
.end method
