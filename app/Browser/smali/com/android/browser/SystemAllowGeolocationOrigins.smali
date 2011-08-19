.class Lcom/android/browser/SystemAllowGeolocationOrigins;
.super Ljava/lang/Object;
.source "SystemAllowGeolocationOrigins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingObserver:Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;-><init>(Lcom/android/browser/SystemAllowGeolocationOrigins;)V

    iput-object v0, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mSettingObserver:Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SystemAllowGeolocationOrigins;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->maybeApplySetting()V

    return-void
.end method

.method private addOrigins(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, origins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, origin:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v1           #origin:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getSystemSetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "allowed_geolocation_origins"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private maybeApplySetting()V
    .locals 9

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->getSystemSetting()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, newSetting:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 95
    .local v5, preferences:Landroid/content/SharedPreferences;
    const-string v7, "last_read_allow_geolocation_origins"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, lastReadSetting:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_read_allow_geolocation_origins"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    invoke-static {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    .line 109
    .local v4, oldOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/android/browser/SystemAllowGeolocationOrigins;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    .line 110
    .local v2, newOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v2, v4}, Lcom/android/browser/SystemAllowGeolocationOrigins;->setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 111
    .local v0, addedOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v4, v2}, Lcom/android/browser/SystemAllowGeolocationOrigins;->setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 114
    .local v6, removedOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lcom/android/browser/SystemAllowGeolocationOrigins;->removeOrigins(Ljava/util/Set;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->addOrigins(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private static parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v4, origins:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    const-string v5, "\\s+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 130
    .local v3, origin:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #origin:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private removeOrigins(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, origins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, origin:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v2

    new-instance v3, Lcom/android/browser/SystemAllowGeolocationOrigins$2;

    invoke-direct {v3, p0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins$2;-><init>(Lcom/android/browser/SystemAllowGeolocationOrigins;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 187
    .end local v1           #origin:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TA;>;",
            "Ljava/util/Set",
            "<TA;>;)",
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, x:Ljava/util/Set;,"Ljava/util/Set<TA;>;"
    .local p2, y:Ljava/util/Set;,"Ljava/util/Set<TA;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 145
    .local v2, z:Ljava/util/HashSet;,"Ljava/util/HashSet<TA;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 146
    .local v0, a:Ljava/lang/Object;,"TA;"
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0           #a:Ljava/lang/Object;,"TA;"
    :cond_1
    return-object v2
.end method


# virtual methods
.method maybeApplySettingAsync()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SystemAllowGeolocationOrigins$1;-><init>(Lcom/android/browser/SystemAllowGeolocationOrigins;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 61
    const-string v1, "allowed_geolocation_origins"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mSettingObserver:Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->maybeApplySettingAsync()V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/SystemAllowGeolocationOrigins;->mSettingObserver:Lcom/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    return-void
.end method
