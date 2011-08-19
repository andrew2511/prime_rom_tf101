.class public Lcom/layar/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mPrefAddFavoritesCount:Landroid/preference/EditTextPreference;

.field private mPrefCountry:Landroid/preference/ListPreference;

.field private mPrefLat:Landroid/preference/EditTextPreference;

.field private mPrefLon:Landroid/preference/EditTextPreference;

.field private mPrefUnit:Landroid/preference/ListPreference;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mUserManager:Lcom/layar/data/user/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getValueString(Landroid/preference/ListPreference;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 106
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 102
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initPreferencesScreen()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 51
    :cond_0
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lcom/layar/SettingsActivity;->addPreferencesFromResource(I)V

    .line 52
    iget-object v1, p0, Lcom/layar/SettingsActivity;->mUserManager:Lcom/layar/data/user/UserManager;

    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->isDeveloper()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 54
    const-string v2, "prefs.location.fixed"

    const/4 v3, 0x0

    .line 53
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    .local v0, useFixedLocation:Z
    if-eqz v0, :cond_2

    const v1, 0x7f050001

    :goto_0
    invoke-virtual {p0, v1}, Lcom/layar/SettingsActivity;->addPreferencesFromResource(I)V

    .line 60
    .end local v0           #useFixedLocation:Z
    :goto_1
    iget-object v1, p0, Lcom/layar/SettingsActivity;->mUserManager:Lcom/layar/data/user/UserManager;

    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->isStaff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/layar/SettingsActivity;->addPreferencesFromResource(I)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "prefs.location.countrycode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mPrefCountry:Landroid/preference/ListPreference;

    .line 64
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "prefs.distance.units"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mPrefUnit:Landroid/preference/ListPreference;

    .line 66
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "prefs.location.lat"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mPrefLat:Landroid/preference/EditTextPreference;

    .line 67
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "prefs.location.lon"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mPrefLon:Landroid/preference/EditTextPreference;

    .line 69
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "test.add.favorites"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mPrefAddFavoritesCount:Landroid/preference/EditTextPreference;

    .line 70
    return-void

    .line 56
    .restart local v0       #useFixedLocation:Z
    :cond_2
    const/high16 v1, 0x7f05

    goto :goto_0

    .line 58
    .end local v0           #useFixedLocation:Z
    :cond_3
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/layar/SettingsActivity;->addPreferencesFromResource(I)V

    goto :goto_1
.end method

.method private updateValues()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefUnit:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefUnit:Landroid/preference/ListPreference;

    .line 86
    iget-object v1, p0, Lcom/layar/SettingsActivity;->mPrefUnit:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "prefs.distance.units"

    const-string v4, "METRIC"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/layar/SettingsActivity;->getValueString(Landroid/preference/ListPreference;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefCountry:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefCountry:Landroid/preference/ListPreference;

    .line 88
    iget-object v1, p0, Lcom/layar/SettingsActivity;->mPrefCountry:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "prefs.location.countrycode"

    const-string v4, "AUTO"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/layar/SettingsActivity;->getValueString(Landroid/preference/ListPreference;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefLat:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefLat:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "prefs.location.lat"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefLon:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefLon:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "prefs.location.lon"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefAddFavoritesCount:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPrefAddFavoritesCount:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/layar/SettingsActivity;->mPrefAddFavoritesCount:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    :cond_4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 37
    .local v0, viewList:Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 40
    invoke-virtual {p0}, Lcom/layar/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 41
    new-instance v1, Lcom/layar/data/user/UserManager;

    invoke-direct {v1, p0}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/layar/SettingsActivity;->mUserManager:Lcom/layar/data/user/UserManager;

    .line 43
    invoke-direct {p0}, Lcom/layar/SettingsActivity;->initPreferencesScreen()V

    .line 45
    invoke-direct {p0}, Lcom/layar/SettingsActivity;->updateValues()V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/layar/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 76
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 112
    const-string v0, "prefs.location.fixed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/layar/SettingsActivity;->initPreferencesScreen()V

    .line 115
    :cond_0
    invoke-static {}, Lcom/layar/App;->initPreferences()V

    .line 116
    invoke-direct {p0}, Lcom/layar/SettingsActivity;->updateValues()V

    .line 117
    return-void
.end method
