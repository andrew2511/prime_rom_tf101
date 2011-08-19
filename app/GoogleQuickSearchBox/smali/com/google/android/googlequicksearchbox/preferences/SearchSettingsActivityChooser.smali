.class public Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivityChooser;
.super Landroid/app/Activity;
.source "SearchSettingsActivityChooser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHoneycombActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v0, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;

    return-object v0
.end method

.method protected getLegacyActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    const-class v0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, settingsIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivityChooser;->getHoneycombActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivityChooser;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivityChooser;->finish()V

    .line 51
    return-void

    .line 42
    .end local v0           #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivityChooser;->getLegacyActivityClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method
