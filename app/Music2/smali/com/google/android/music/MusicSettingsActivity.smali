.class public Lcom/google/android/music/MusicSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_MUSIC_VERSION:Ljava/lang/String; = "music_version_key"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "MusicSettings"


# instance fields
.field private mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mCachedStreamed:Landroid/preference/CheckBoxPreference;

.field private mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

.field private mHelpScreen:Landroid/preference/PreferenceScreen;

.field private mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

.field private mIsWifiOnly:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

.field private mRefreshScreen:Landroid/preference/PreferenceScreen;

.field private mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

.field private mVersion:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "MusicSettings"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicSettingsActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method private refreshUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 152
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 157
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 163
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 166
    iget-boolean v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getHideWhenNotConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineDLOnlyOnWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002d

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 178
    iget-boolean v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 180
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVersion()V
    .locals 5

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 132
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mVersion:Landroid/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 134
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MusicSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found (to retrieve version number)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v4, 0x7f060002

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->addPreferencesFromResource(I)V

    .line 67
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 68
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 69
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const v5, 0x7f0c0010

    invoke-virtual {v4, p0, v5}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Landroid/content/Context;I)V

    .line 70
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v4, v6}, Lcom/google/android/music/activitymanagement/AppState;->setUseSystemBackground(Z)V

    .line 71
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v4, v6}, Lcom/google/android/music/activitymanagement/AppState;->setBottomBarEnabled(Z)V

    .line 72
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->hideNoMusicView()V

    .line 73
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 74
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 75
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->hideAllButTitle()V

    .line 76
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mHelpScreen:Landroid/preference/PreferenceScreen;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    if-nez v4, :cond_1

    .line 101
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not find the preference screens"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_1
    const-string v4, "music_version_key"

    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mVersion:Landroid/preference/PreferenceScreen;

    .line 106
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->updateVersion()V

    .line 110
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 111
    .local v3, systemProperties:Ljava/lang/Class;
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    .local v1, getMethod:Ljava/lang/reflect/Method;
    const-string v4, "wifi-only"

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.carrier"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1           #getMethod:Ljava/lang/reflect/Method;
    .end local v3           #systemProperties:Ljava/lang/Class;
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 120
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 122
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not remove the streaming over wifi preferences"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    .end local v2           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MusicSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to access SystemProperties to check if wifi-only: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->refreshUI()V

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 193
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.music.ACCOUNT_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    :goto_0
    move v2, v5

    .line 213
    :goto_1
    return v2

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setHideWhenNotConnected(Z)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setCachedStreamingMusicEnabled(Z)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamOnlyOnWifi(Z)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setOffineDLOnlyOnWifi(Z)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_5

    .line 204
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v2, v5}, Lcom/google/android/music/MusicUtils;->requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V

    goto :goto_0

    .line 205
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mHelpScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_6

    .line 206
    const v2, 0x7f0c0041

    invoke-virtual {p0, v2}, Lcom/google/android/music/MusicSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 142
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->refreshUI()V

    .line 143
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
