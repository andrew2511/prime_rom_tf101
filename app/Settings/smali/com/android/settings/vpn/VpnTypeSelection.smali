.class public Lcom/android/settings/vpn/VpnTypeSelection;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnTypeSelection.java"


# instance fields
.field private mTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/vpn/VpnType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnTypeSelection;->mTypeMap:Ljava/util/Map;

    return-void
.end method

.method private getResultIntent(Landroid/net/vpn/VpnType;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "vpn_type"

    invoke-virtual {p1}, Landroid/net/vpn/VpnType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method private initTypeList()V
    .locals 12

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 58
    .local v7, root:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 59
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/net/vpn/VpnManager;->getSupportedVpnTypes()[Landroid/net/vpn/VpnType;

    move-result-object v1

    .local v1, arr$:[Landroid/net/vpn/VpnType;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v8, v1, v3

    .line 60
    .local v8, t:Landroid/net/vpn/VpnType;
    invoke-virtual {v8}, Landroid/net/vpn/VpnType;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, displayName:Ljava/lang/String;
    const v9, 0x7f0804d6

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/vpn/VpnTypeSelection;->mTypeMap:Ljava/util/Map;

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 66
    .local v6, pref:Landroid/preference/Preference;
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v8}, Landroid/net/vpn/VpnType;->getDescriptionId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 68
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v2           #displayName:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #pref:Landroid/preference/Preference;
    .end local v8           #t:Landroid/net/vpn/VpnType;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnTypeSelection;->addPreferencesFromResource(I)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->initTypeList()V

    .line 46
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "ps"
    .parameter "pref"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/settings/vpn/VpnTypeSelection;->mTypeMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnType;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnTypeSelection;->getResultIntent(Landroid/net/vpn/VpnType;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method
