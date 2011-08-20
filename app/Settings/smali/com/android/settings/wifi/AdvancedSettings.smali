.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 4

    .prologue
    .line 66
    const-string v2, "frequency_band"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 68
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v1

    .line 71
    .local v1, value:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    .end local v1           #value:I
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v1       #value:I
    :cond_1
    const-string v2, "AdvancedSettings"

    const-string v3, "Failed to fetch frequency band"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v1           #value:I
    :cond_2
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private refreshWifiInfo()V
    .locals 7

    .prologue
    const v6, 0x7f0802a4

    .line 101
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 103
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v5, "mac_address"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 104
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_0

    const/4 v5, 0x0

    move-object v1, v5

    .line 105
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    const-string v5, "current_ip_address"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 109
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, ipAddress:Ljava/lang/String;
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    return-void

    .line 104
    .end local v0           #ipAddress:Ljava/lang/String;
    .end local v1           #macAddress:Ljava/lang/String;
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 105
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .restart local v0       #ipAddress:Ljava/lang/String;
    .restart local v3       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    move-object v5, v0

    .line 110
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f05002f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 49
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, v5

    .line 97
    .end local p2
    :goto_0
    return v2

    .line 87
    .restart local p2
    :cond_0
    const-string v2, "frequency_band"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v5

    .line 97
    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 91
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0801f5

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v6

    .line 93
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initPreferences()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshWifiInfo()V

    .line 62
    return-void
.end method
