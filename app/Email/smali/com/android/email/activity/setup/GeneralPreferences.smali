.class public Lcom/android/email/activity/setup/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoAdvance:Landroid/preference/ListPreference;

.field private mPreferences:Lcom/android/email/Preferences;

.field mSizeSummaries:[Ljava/lang/CharSequence;

.field private mTextZoom:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    .line 71
    const-string v0, "auto_advance"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    const-string v0, "text_zoom"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    .line 76
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 77
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    .line 80
    return-void
.end method

.method private reloadDynamicSummaries()V
    .locals 4

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    .line 88
    .local v1, textZoomIndex:I
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, summary:Ljava/lang/CharSequence;
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v2, v1

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->addPreferencesFromResource(I)V

    .line 46
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, key:Ljava/lang/String;
    const-string v1, "auto_advance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/Preferences;->setAutoAdvanceDirection(I)V

    move v1, v3

    .line 66
    :goto_0
    return v1

    .line 61
    .restart local p2
    :cond_0
    const-string v1, "text_zoom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/Preferences;->setTextZoom(I)V

    .line 63
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    move v1, v3

    .line 64
    goto :goto_0

    .line 66
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->loadSettings()V

    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 52
    return-void
.end method
