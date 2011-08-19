.class public Lcom/android/calendar/AboutPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AboutPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lcom/android/calendar/AboutPreferences;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/AboutPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 37
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v3, "build_version"

    invoke-virtual {p0, v3}, Lcom/android/calendar/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 39
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "build_version"

    invoke-virtual {p0, v3}, Lcom/android/calendar/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
