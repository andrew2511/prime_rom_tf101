.class public Lcom/android/browser/preferences/AdvancedPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "AdvancedPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "enumName"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 164
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f080061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 165
    .local v4, visualNames:[Ljava/lang/CharSequence;
    const v5, 0x7f080062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_0

    .line 169
    const-string v5, ""

    .line 179
    :goto_0
    return-object v5

    .line 172
    :cond_0
    array-length v2, v0

    .line 173
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 174
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    aget-object v5, v4, v1

    goto :goto_0

    .line 173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    :cond_2
    const-string v5, ""

    goto :goto_0
.end method

.method private getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "enumName"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 144
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f08005f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 145
    .local v4, visualNames:[Ljava/lang/CharSequence;
    const v5, 0x7f080060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_0

    .line 149
    const-string v5, ""

    .line 159
    :goto_0
    return-object v5

    .line 152
    :cond_0
    array-length v2, v0

    .line 153
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 154
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    aget-object v5, v4, v1

    goto :goto_0

    .line 153
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_2
    const-string v5, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->addPreferencesFromResource(I)V

    .line 48
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 50
    const-class v1, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 52
    const-string v0, "text_size"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "text_size"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    const-string v0, "default_zoom"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "default_zoom"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    const-string v0, "default_text_encoding"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v0, "reset_default_preferences"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    const-string v0, "plugin_state"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updatePluginSummary(Landroid/preference/ListPreference;)V

    .line 73
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "PageContentPreferencesFragment"

    const-string v1, "onPreferenceChange called from detached fragment!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 139
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_zoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_text_encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset_default_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    check-cast p2, Ljava/lang/Boolean;

    .line 128
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_5

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "--restart--"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 131
    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plugin_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    check-cast p1, Landroid/preference/ListPreference;

    .line 135
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updatePluginSummary(Landroid/preference/ListPreference;)V

    move v0, v2

    .line 137
    goto :goto_0

    :cond_5
    move v0, v2

    .line 139
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 87
    const-string v1, "website_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 89
    .local v0, websiteSettings:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 90
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    new-instance v2, Lcom/android/browser/preferences/AdvancedPreferencesFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment$1;-><init>(Lcom/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 98
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    new-instance v2, Lcom/android/browser/preferences/AdvancedPreferencesFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment$2;-><init>(Lcom/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 106
    return-void
.end method

.method updatePluginSummary(Landroid/preference/ListPreference;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
