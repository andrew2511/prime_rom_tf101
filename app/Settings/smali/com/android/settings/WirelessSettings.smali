.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 88
    :goto_0
    return v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 211
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 212
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 214
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 217
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v19, 0x7f050031

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 98
    .local v3, activity:Landroid/app/Activity;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 99
    .local v4, airplane:Landroid/preference/CheckBoxPreference;
    const-string v19, "toggle_wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 100
    .local v16, wifi:Landroid/preference/CheckBoxPreference;
    const-string v19, "toggle_bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 101
    .local v7, bt:Landroid/preference/CheckBoxPreference;
    const-string v19, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 103
    .local v11, nfc:Landroid/preference/CheckBoxPreference;
    new-instance v19, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 104
    const-string v19, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 105
    new-instance v19, Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v0, v19

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 106
    new-instance v19, Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 107
    new-instance v19, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 109
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, toggleable:Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v19, "wifi"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 114
    :cond_0
    const-string v19, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 115
    const-string v19, "wifi_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 116
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 120
    :cond_1
    if-eqz v13, :cond_2

    const-string v19, "bluetooth"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 121
    :cond_2
    const-string v19, "toggle_airplane"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 122
    const-string v19, "bt_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 126
    :cond_3
    const-string v19, "bluetooth"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    if-nez v19, :cond_4

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "bt_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    :cond_4
    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v19

    if-nez v19, :cond_5

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isWifiOnly()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    :cond_6
    const-string v19, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 143
    .local v10, mGlobalProxy:Landroid/preference/Preference;
    const-string v19, "device_policy"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 146
    .local v9, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v19

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :goto_0
    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    const-string v19, "connectivity"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 152
    .local v8, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v19

    if-nez v19, :cond_8

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :goto_1
    return-void

    .line 147
    .end local v8           #cm:Landroid/net/ConnectivityManager;
    :cond_7
    const/16 v19, 0x0

    goto :goto_0

    .line 155
    .restart local v8       #cm:Landroid/net/ConnectivityManager;
    :cond_8
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, usbRegexs:[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, bluetoothRegexs:[Ljava/lang/String;
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v14, v19

    .line 160
    .local v14, usbAvailable:Z
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v17, v19

    .line 161
    .local v17, wifiAvailable:Z
    :goto_3
    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    move/from16 v5, v19

    .line 163
    .local v5, bluetoothAvailable:Z
    :goto_4
    const-string v19, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 164
    .local v12, p:Landroid/preference/Preference;
    if-eqz v17, :cond_c

    if-eqz v14, :cond_c

    if-eqz v5, :cond_c

    .line 165
    const v19, 0x7f080302

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 166
    const v19, 0x7f080309

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 159
    .end local v5           #bluetoothAvailable:Z
    .end local v12           #p:Landroid/preference/Preference;
    .end local v14           #usbAvailable:Z
    .end local v17           #wifiAvailable:Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v14, v19

    goto :goto_2

    .line 160
    .restart local v14       #usbAvailable:Z
    :cond_a
    const/16 v19, 0x0

    move/from16 v17, v19

    goto :goto_3

    .line 161
    .restart local v17       #wifiAvailable:Z
    :cond_b
    const/16 v19, 0x0

    move/from16 v5, v19

    goto :goto_4

    .line 167
    .restart local v5       #bluetoothAvailable:Z
    .restart local v12       #p:Landroid/preference/Preference;
    :cond_c
    if-eqz v17, :cond_d

    if-eqz v14, :cond_d

    .line 168
    const v19, 0x7f080302

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 169
    const v19, 0x7f080306

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 170
    :cond_d
    if-eqz v17, :cond_e

    if-eqz v5, :cond_e

    .line 171
    const v19, 0x7f080302

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 172
    const v19, 0x7f080308

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 173
    :cond_e
    if-eqz v17, :cond_f

    .line 174
    const v19, 0x7f0802ff

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 175
    const v19, 0x7f080304

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 176
    :cond_f
    if-eqz v14, :cond_10

    if-eqz v5, :cond_10

    .line 177
    const v19, 0x7f080301

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 178
    const v19, 0x7f080307

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 179
    :cond_10
    if-eqz v14, :cond_11

    .line 180
    const v19, 0x7f0802fe

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 181
    const v19, 0x7f080303

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 183
    :cond_11
    const v19, 0x7f080300

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 184
    const v19, 0x7f080305

    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 207
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 69
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 197
    return-void
.end method
