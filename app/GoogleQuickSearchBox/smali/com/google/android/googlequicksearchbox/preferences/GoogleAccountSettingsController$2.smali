.class Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;
.super Ljava/lang/Object;
.source "GoogleAccountSettingsController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->consume(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 191
    if-eqz p1, :cond_1

    move v0, v2

    .line 192
    .local v0, created:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->access$100(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setGoogleAccountToUse(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->access$200(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    .line 197
    :cond_0
    return v2

    .line 191
    .end local v0           #created:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
