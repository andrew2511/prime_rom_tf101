.class public Lcom/android/inputmethod/latin/DebugSettings;
.super Landroid/preference/PreferenceActivity;
.source "DebugSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mDebugMode:Landroid/preference/CheckBoxPreference;

.field private mServiceNeedsRestart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    return-void
.end method

.method private updateDebugMode()V
    .locals 7

    .prologue
    .line 67
    iget-object v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_0

    .line 85
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 71
    .local v2, isDebugMode:Z
    const-string v3, ""

    .line 73
    .local v3, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 74
    .local v1, info:Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 78
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v2, :cond_1

    .line 79
    iget-object v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DebugSettings"

    const-string v5, "Could not find version info."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f05001d

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DebugSettings;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    .line 45
    const-string v1, "debug_mode"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    .line 46
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DebugSettings;->updateDebugMode()V

    .line 47
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 57
    const-string v0, "debug_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug_mode"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DebugSettings;->updateDebugMode()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    .line 64
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 52
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 53
    :cond_0
    return-void
.end method
