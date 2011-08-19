.class public Lcom/google/android/gm/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/Persistence$MailEnginePreferences;
    }
.end annotation


# static fields
.field private static final BACKUP_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/google/android/gm/Persistence;

.field private static mPersistenceActiveAccount:Ljava/lang/String;

.field private static sSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "enable-notifications"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vibrateWhen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unobtrusive"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "auto-advance"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "message-text"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "prefetch-attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "action-strip-action-reply-all"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "priority-inbox-key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_images"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allow-batch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "confirm-delete"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "archive"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "confirm-actions"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "signature-key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/Persistence;->BACKUP_KEYS:Ljava/util/Set;

    .line 87
    sput-object v3, Lcom/google/android/gm/Persistence;->mInstance:Lcom/google/android/gm/Persistence;

    .line 88
    sput-object v3, Lcom/google/android/gm/Persistence;->mPersistenceActiveAccount:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 217
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "def"
    .parameter "perAccount"

    .prologue
    .line 205
    if-eqz p4, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/android/gm/Persistence;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/gm/Persistence;->mInstance:Lcom/google/android/gm/Persistence;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/gm/Persistence;

    invoke-direct {v0}, Lcom/google/android/gm/Persistence;-><init>()V

    sput-object v0, Lcom/google/android/gm/Persistence;->mInstance:Lcom/google/android/gm/Persistence;

    .line 108
    :cond_0
    sget-object v0, Lcom/google/android/gm/Persistence;->mInstance:Lcom/google/android/gm/Persistence;

    return-object v0
.end method

.method public static getMailEnginePreferences(Landroid/content/Context;)Lcom/google/android/gm/Persistence$MailEnginePreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 601
    new-instance v0, Lcom/google/android/gm/Persistence$MailEnginePreferences;

    invoke-direct {v0, p0}, Lcom/google/android/gm/Persistence$MailEnginePreferences;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/gm/Persistence;->sSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/Persistence;->sSharedPrefs:Landroid/content/SharedPreferences;

    .line 150
    :cond_0
    sget-object v0, Lcom/google/android/gm/Persistence;->sSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 158
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "def"
    .parameter "perAccount"

    .prologue
    .line 162
    if-eqz p4, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPresent(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "perAccount"

    .prologue
    .line 174
    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 177
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRingtone(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 585
    const-string v0, "ringtone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "key"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private migrateVibrateValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    const/4 v0, 0x0

    .line 284
    .local v0, preFroyoVibrateSetting:Z
    const-string v1, "vibrate"

    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/gm/Persistence;->isPresent(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    const-string v1, "vibrate"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 293
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 287
    :cond_1
    const-string v1, "vibrate"

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/Persistence;->isPresent(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "vibrate"

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private migrateVibrateValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 273
    const-string v1, "vibrate"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    .local v0, preFroyoVibrateSetting:Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 194
    return-void
.end method

.method private setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method


# virtual methods
.method public cacheConfiguredGoogleAccounts(Landroid/content/Context;ZLjava/lang/Iterable;)V
    .locals 3
    .parameter "context"
    .parameter "synced"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p3, accounts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v2, "cache-google-accounts"

    move-object v1, v2

    .line 546
    .local v1, key:Ljava/lang/String;
    :goto_0
    const-string v2, " "

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, joinedAccountList:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 544
    .end local v0           #joinedAccountList:Ljava/lang/String;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "cache-google-accounts-synced"

    move-object v1, v2

    goto :goto_0
.end method

.method public getActionStripActionReplyAll(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 314
    const-string v0, "action-strip-action-reply-all"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    const-string v0, "active-account"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowBatch(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 456
    const-string v0, "auto-advance"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoAdvanceModeNewer(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 473
    const-string v0, "newer"

    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAutoAdvanceModeOlder(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 468
    const-string v0, "older"

    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBackupPreferences(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 555
    .local v1, backupPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 557
    .local v7, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 558
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 562
    .local v3, fullKey:Ljava/lang/String;
    const/16 v8, 0x40

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_1

    .line 563
    const/16 v8, 0x2d

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 564
    .local v6, p:I
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, account:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 571
    .end local v6           #p:I
    .local v5, key:Ljava/lang/String;
    :goto_1
    sget-object v8, Lcom/google/android/gm/Persistence;->BACKUP_KEYS:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 575
    new-instance v8, Lcom/google/android/gm/SharedPreference;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v8, v5, v0, v9}, Lcom/google/android/gm/SharedPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    .end local v0           #account:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 568
    .restart local v0       #account:Ljava/lang/String;
    move-object v5, v3

    .restart local v5       #key:Ljava/lang/String;
    goto :goto_1

    .line 578
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3           #fullKey:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "synced"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    if-eqz p2, :cond_0

    const-string v3, "cache-google-accounts"

    move-object v2, v3

    .line 529
    .local v2, key:Ljava/lang/String;
    :goto_0
    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, joinedAccountList:Ljava/lang/String;
    const-string v3, " "

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, accountList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3

    .line 527
    .end local v0           #accountList:[Ljava/lang/String;
    .end local v1           #joinedAccountList:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    const-string v3, "cache-google-accounts-synced"

    move-object v2, v3

    goto :goto_0
.end method

.method public getConfirmActions(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 495
    const-string v0, "confirm-actions"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmArchive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getConfirmDelete(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getConfirmSend(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "sender"

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEnableNotifications(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 257
    const-string v0, "enable-notifications"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 261
    const-string v0, "enable-notifications"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasShownWhatsNew(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "version"

    .prologue
    .line 380
    const-string v0, "last-version-promoed"

    .line 381
    .local v0, key:Ljava/lang/String;
    const-string v1, "last-version-promoed"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getHasUserSetAutoAdvanceSetting(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 390
    const-string v1, "auto-advance"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, autoAdvanceSetting:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 483
    const-string v0, "message-text"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/gm/Persistence;->mPersistenceActiveAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/Persistence;->mPersistenceActiveAccount:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrefetchAttachments(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 439
    const-string v0, "prefetch-attachments"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrefetchAttachments(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 443
    const-string v0, "prefetch-attachments"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPriorityInboxDefault(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/Persistence;->getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-static {p2}, Lcom/google/android/gm/Utils;->getPriorityInboxServerEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "priority-inbox-key"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getRingtone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/Persistence;->getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 353
    const-string v1, "ringtone"

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, ringtone:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 359
    const-string v1, "ringtone"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_0
    if-nez v0, :cond_1

    .line 364
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_1
    return-object v0
.end method

.method public getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 398
    .local v5, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "display_images"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, jsonStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 401
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, len:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 403
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #len:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 407
    .local v1, e:Lorg/json/JSONException;
    const/4 v6, 0x0

    const-string v7, "display_images"

    const-string v8, ""

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-object v5
.end method

.method public getSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 225
    const-string v1, "signature"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, signature:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 230
    const-string v1, "signature-key"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_0
    if-nez v0, :cond_1

    .line 235
    const-string v0, ""

    .line 238
    :cond_1
    return-object v0
.end method

.method public getUnobtrusive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 326
    const-string v0, "unobtrusive"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUnobtrusive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 322
    const-string v0, "unobtrusive"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateWhen(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/gm/Persistence;->migrateVibrateValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, defaultValue:Ljava/lang/String;
    const-string v1, "vibrateWhen"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVibrateWhen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/Persistence;->migrateVibrateValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, defaultValue:Ljava/lang/String;
    const-string v1, "vibrateWhen"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gm/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setActionStripActionReplyAll(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 318
    const-string v0, "action-strip-action-reply-all"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 319
    return-void
.end method

.method public setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "userName"

    .prologue
    .line 135
    const/4 v0, 0x0

    const-string v1, "active-account"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setAutoAdvanceMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 463
    const/4 v0, 0x0

    const-string v1, "auto-advance"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    const-string v1, "Shared preferences"

    invoke-static {v1}, Lcom/google/android/gm/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setConfirmActions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 513
    const/4 v0, 0x0

    const-string v1, "confirm-actions"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public setDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "sender"

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 428
    .local v0, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    const/4 v1, 0x0

    const-string v2, "display_images"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method public setEnableNotifications(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 265
    const-string v0, "enable-notifications"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 266
    return-void
.end method

.method public setMessageTextSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 491
    const/4 v0, 0x0

    const-string v1, "message-text"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public setPersistenceActiveAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 126
    sput-object p1, Lcom/google/android/gm/Persistence;->mPersistenceActiveAccount:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPrefetchAttachments(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 447
    const-string v0, "prefetch-attachments"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 448
    return-void
.end method

.method public setPriorityInboxDefault(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 343
    const-string v0, "priority-inbox-key"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 344
    return-void
.end method

.method public setRingtone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 372
    const-string v0, "ringtone"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setSignature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 242
    const-string v0, "signature"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 185
    invoke-static {p1}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    const-string v1, "Shared preferences"

    invoke-static {v1}, Lcom/google/android/gm/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setUnobtrusive(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 330
    const-string v0, "unobtrusive"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 331
    return-void
.end method

.method public setVibrateWhen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 309
    const-string v0, "vibrateWhen"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
