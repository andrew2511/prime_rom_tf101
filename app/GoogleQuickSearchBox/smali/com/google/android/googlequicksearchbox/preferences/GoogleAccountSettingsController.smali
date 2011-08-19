.class public Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "GoogleAccountSettingsController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mAccountObserver:Landroid/database/DataSetObserver;

.field private final mActivity:Landroid/app/Activity;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

.field private mManageSearchHistoryPreference:Landroid/preference/Preference;

.field private final mPsuggestAvailable:Z

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

.field private mSelectAccountPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/Activity;)V
    .locals 1
    .parameter "settings"
    .parameter "loginHelper"
    .parameter "config"
    .parameter "activity"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 56
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;-><init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mAccountObserver:Landroid/database/DataSetObserver;

    .line 66
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 67
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccounts()V

    return-void
.end method

.method private getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    return-object v0
.end method

.method private hasAccount()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setManageSearchHistoryPreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "manageSearchHistory"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    .line 146
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    return-void
.end method

.method private setSearchHistoryPreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "searchHistory"

    .prologue
    .line 140
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    .line 141
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    return-void
.end method

.method private setSelectAccountPreference(Landroid/preference/Preference;)V
    .locals 3
    .parameter "selectAccount"

    .prologue
    const/4 v2, 0x0

    .line 150
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    .line 151
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    return-void
.end method

.method private updateAccount()V
    .locals 8

    .prologue
    const v7, 0x7f0a0027

    const v3, 0x7f0a0024

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 229
    const-string v1, "QSB.GoogleAccountSettingsController"

    const-string v2, "No account configured. Disabling search history."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 235
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 238
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 239
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 241
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 258
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, account:Ljava/lang/String;
    const-string v1, "QSB.GoogleAccountSettingsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0025

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0026

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 254
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAccounts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAllAccounts()[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, accounts:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 161
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :goto_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccount()V

    .line 175
    return-void

    .line 164
    :cond_0
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 166
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, key:Ljava/lang/String;
    const-string v1, "search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->setSearchHistoryPreference(Landroid/preference/Preference;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v1, "manage_search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->setManageSearchHistoryPreference(Landroid/preference/Preference;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v1, "google_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->setSelectAccountPreference(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onCreateComplete()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onCreateComplete()V

    .line 76
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mAccountObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mAccountObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onDestroy()V

    .line 111
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setAccountToUse(Ljava/lang/String;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    .restart local p2
    :cond_0
    move v0, v1

    .line 217
    goto :goto_0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;-><init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requestAccount(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 207
    :cond_0
    :goto_0
    return v4

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 203
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    .line 205
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->start()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onResume()V

    .line 91
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccounts()V

    .line 94
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->cancel()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onStop()V

    .line 103
    return-void
.end method

.method public setScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    .line 124
    return-void
.end method
