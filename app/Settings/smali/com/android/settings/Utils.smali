.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 296
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 298
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 299
    .local v3, prop:Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    move-object v4, v5

    .line 309
    .end local p0
    :goto_0
    return-object v4

    .line 300
    .restart local p0
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 302
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_0

    .line 304
    :cond_1
    const-string v0, ""

    .line 305
    .end local p0
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v4, v0

    .line 309
    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 2

    .prologue
    .line 274
    const-string v0, "debug.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 281
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 283
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly()Z
    .locals 2

    .prologue
    .line 287
    const-string v0, "wifi-only"

    const-string v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .parameter "context"
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 214
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 217
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 p0, 0x80

    invoke-virtual {v2, v0, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .end local p0
    move-result-object v0

    .line 218
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 219
    .local v1, listSize:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    if-ge p0, v1, :cond_1

    .line 220
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 221
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 223
    const/4 p0, 0x0

    .line 224
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 225
    .local v4, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, summary:Ljava/lang/String;
    :try_start_0
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local p1           #target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    .local v0, res:Landroid/content/res/Resources;
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 233
    .local p1, metaData:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 234
    const-string v5, "com.android.settings.icon"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 235
    const-string v5, "com.android.settings.title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    const-string v5, "com.android.settings.summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .end local p1           #metaData:Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .end local v1           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    move-object v0, v4

    .line 246
    .end local v4           #title:Ljava/lang/String;
    .local v0, title:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #icon:Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_3

    .line 247
    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    .end local v0           #title:Ljava/lang/String;
    .local p0, title:Ljava/lang/String;
    :goto_2
    iput-object p0, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 254
    iput-object p1, p2, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 256
    new-instance p0, Landroid/content/Intent;

    .end local p0           #title:Ljava/lang/String;
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local p1           #summary:Ljava/lang/String;
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iput-object p0, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 259
    const/4 p0, 0x1

    .line 267
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_3
    return p0

    .line 238
    .restart local v1       #summary:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v4       #title:Ljava/lang/String;
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception p1

    move-object p1, v4

    .end local v4           #title:Ljava/lang/String;
    .local p1, title:Ljava/lang/String;
    move-object v0, p1

    .end local p1           #title:Ljava/lang/String;
    .restart local v0       #title:Ljava/lang/String;
    move-object p1, v1

    .line 242
    .end local v1           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    goto :goto_1

    .line 240
    .end local v0           #title:Ljava/lang/String;
    .end local p1           #summary:Ljava/lang/String;
    .restart local v1       #summary:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    :catch_1
    move-exception p1

    move-object p1, v4

    .end local v4           #title:Ljava/lang/String;
    .local p1, title:Ljava/lang/String;
    move-object v0, p1

    .end local p1           #title:Ljava/lang/String;
    .restart local v0       #title:Ljava/lang/String;
    move-object p1, v1

    .end local v1           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    goto :goto_1

    .line 219
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, listSize:I
    .local p0, i:I
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 265
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #listSize:I
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local p0           #i:I
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    .local v0, title:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .local p1, summary:Ljava/lang/String;
    :cond_3
    move-object p0, v0

    .end local v0           #title:Ljava/lang/String;
    .local p0, title:Ljava/lang/String;
    goto :goto_2

    .local v0, res:Landroid/content/res/Resources;
    .local v1, summary:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    .local p1, metaData:Landroid/os/Bundle;
    :cond_4
    move-object p1, v1

    .end local v1           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    move-object v0, v4

    .end local v4           #title:Ljava/lang/String;
    .local v0, title:Ljava/lang/String;
    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 85
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 86
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 119
    :goto_0
    return v7

    .line 90
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 94
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 96
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 97
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 98
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 102
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 106
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    move v7, v10

    .line 111
    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v10

    .line 119
    goto :goto_0
.end method
