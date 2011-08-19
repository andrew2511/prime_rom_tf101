.class Lcom/android/browser/BrowserYesNoPreference;
.super Lcom/android/internal/preference/YesNoPreference;
.source "BrowserYesNoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->onDialogClosed(Z)V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    const-string v1, "privacy_clear_cache"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearCache(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearDatabases(Landroid/content/Context;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v1, "privacy_clear_cookies"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearCookies(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v1, "privacy_clear_history"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearHistory(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :cond_3
    const-string v1, "privacy_clear_form_data"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearFormData(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_4
    const-string v1, "privacy_clear_passwords"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearPasswords(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_5
    const-string v1, "reset_default_preferences"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->resetDefaultPreferences(Landroid/content/Context;)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "--restart--"

    const/4 v3, 0x0

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :cond_6
    const-string v1, "privacy_clear_geolocation_access"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearLocationAccess(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
