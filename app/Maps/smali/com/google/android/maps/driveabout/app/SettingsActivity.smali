.class public Lcom/google/android/maps/driveabout/app/SettingsActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/bc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bc;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bc;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bc;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bo;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "DriveAbout"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->addPreferencesFromResource(I)V

    const-string v0, "OneButtonRmi"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RmiPreference;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Lcom/google/android/maps/driveabout/app/bo;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->c()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->b()V

    return-void
.end method
