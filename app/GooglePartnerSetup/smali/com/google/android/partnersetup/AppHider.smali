.class public final Lcom/google/android/partnersetup/AppHider;
.super Ljava/lang/Object;
.source "AppHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/AppHider$1;,
        Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static extractEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "enabledString"
    .parameter "clause"
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    .line 235
    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    .line 237
    :cond_0
    const-string v0, "disabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad enabled/disabled in clause \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v0
.end method

.method private static extractMinVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "minVersionString"
    .parameter "clause"
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-numeric minVersion in clause \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v1
.end method

.method private static gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "gserviceKey"
    .parameter "gserviceValue"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gservice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 9
    .parameter "resolver"
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "defaultEnabled"

    .prologue
    const/4 v7, 0x3

    .line 126
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 136
    .local v5, info:Landroid/content/pm/PackageInfo;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gms_disable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, gserviceKey:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, gserviceValue:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 139
    const-string v6, "PartnerSetupAppHider"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    const-string v6, "PartnerSetupAppHider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No Gservices value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", using default enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/google/android/partnersetup/AppHider$BadGservicesValue; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .end local v2           #gserviceKey:Ljava/lang/String;
    .end local v3           #gserviceValue:Ljava/lang/String;
    .end local v5           #info:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v4

    .line 128
    .local v4, ignored:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PartnerSetupAppHider"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    const-string v6, "PartnerSetupAppHider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not installed, can\'t change its visibility"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v4           #ignored:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #gserviceKey:Ljava/lang/String;
    .restart local v3       #gserviceValue:Ljava/lang/String;
    .restart local v5       #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_2
    iget v6, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2, v3, v6}, Lcom/google/android/partnersetup/AppHider;->shouldBeEnabled(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 152
    .local v1, explicitEnabled:Z
    const-string v6, "PartnerSetupAppHider"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const-string v6, "PartnerSetupAppHider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " based on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3
    invoke-static {p1, p2, v1}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    :try_end_2
    .catch Lcom/google/android/partnersetup/AppHider$BadGservicesValue; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 158
    .end local v1           #explicitEnabled:Z
    .end local v2           #gserviceKey:Ljava/lang/String;
    .end local v3           #gserviceValue:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 159
    .local v0, e:Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    const-string v6, "PartnerSetupAppHider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing over to default enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-static {p1, p2, p3}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public static setAppVisibilities(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x3

    .line 84
    sget-object v7, Lcom/google/android/partnersetup/GooglePartnerSetup;->sPackageToEnabled:Ljava/util/Map;

    .line 86
    .local v7, packageToEnabled:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v10, "PartnerSetupAppHider"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 87
    const-string v10, "PartnerSetupAppHider"

    const-string v11, "See which apps we should hide"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 90
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 91
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getPreferences(Landroid/content/Context;)Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    move-result-object v8

    .line 93
    .local v8, prefs:Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    invoke-virtual {v8}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingRunCount()I

    move-result v0

    .line 95
    .local v0, count:I
    const-string v10, "gms_disable:lock_count"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 97
    .local v4, lockCount:I
    if-ge v0, v4, :cond_1

    .line 98
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, packageName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 101
    .local v1, defaultEnabled:Z
    invoke-static {v9, v5, v6, v1}, Lcom/google/android/partnersetup/AppHider;->setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 104
    .end local v1           #defaultEnabled:Z
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #packageName:Ljava/lang/String;
    .restart local p0
    :cond_1
    const-string v10, "PartnerSetupAppHider"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 105
    const-string v10, "PartnerSetupAppHider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > limit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", only updating visibility of market app"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    const-string v6, "com.android.vending"

    .line 109
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 110
    .restart local v1       #defaultEnabled:Z
    invoke-static {v9, v5, v6, v1}, Lcom/google/android/partnersetup/AppHider;->setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 113
    .end local v1           #defaultEnabled:Z
    .end local v6           #packageName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->incrementHidingRunCount()V

    .line 114
    return-void
.end method

.method private static setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "enabled"

    .prologue
    .line 257
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 259
    .local v0, newState:I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 260
    return-void

    .line 257
    .end local v0           #newState:I
    :cond_0
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0
.end method

.method private static shouldBeEnabled(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .parameter "installedVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 174
    const/high16 v5, -0x8000

    .line 175
    .local v5, maxVersion:I
    const/4 v6, 0x0

    .line 177
    .local v6, maxVersionEnabled:Ljava/lang/Boolean;
    if-nez p1, :cond_0

    .line 178
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rule for version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 182
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v1, p1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v1, clauseTokenizer:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 186
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, clause:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v4, v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v4, innerTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 189
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad token count in clause \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 192
    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, minVersionString:Ljava/lang/String;
    invoke-static {v8, v0, p0, p1}, Lcom/google/android/partnersetup/AppHider;->extractMinVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 196
    .local v7, minVersion:I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, enabledString:Ljava/lang/String;
    invoke-static {v2, v0, p0, p1}, Lcom/google/android/partnersetup/AppHider;->extractEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 201
    .local v3, explicitEnabled:Z
    if-lt v7, v5, :cond_1

    if-gt v7, p2, :cond_1

    .line 202
    if-ne v7, v5, :cond_3

    .line 204
    const-string v9, "PartnerSetupAppHider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Multiple entries for minVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    move v5, v7

    .line 208
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 212
    .end local v0           #clause:Ljava/lang/String;
    .end local v2           #enabledString:Ljava/lang/String;
    .end local v3           #explicitEnabled:Z
    .end local v4           #innerTokenizer:Ljava/util/StringTokenizer;
    .end local v7           #minVersion:I
    .end local v8           #minVersionString:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    .line 213
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rule for version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 216
    :cond_5
    const-string v9, "PartnerSetupAppHider"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 217
    const-string v9, "PartnerSetupAppHider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found visibility "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for minVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    return v9
.end method
