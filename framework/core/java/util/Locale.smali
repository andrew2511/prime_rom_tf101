.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANADA:Ljava/util/Locale; = null

.field public static final CANADA_FRENCH:Ljava/util/Locale; = null

.field public static final CHINA:Ljava/util/Locale; = null

.field public static final CHINESE:Ljava/util/Locale; = null

.field public static final ENGLISH:Ljava/util/Locale; = null

.field public static final FRANCE:Ljava/util/Locale; = null

.field public static final FRENCH:Ljava/util/Locale; = null

.field public static final GERMAN:Ljava/util/Locale; = null

.field public static final GERMANY:Ljava/util/Locale; = null

.field public static final ITALIAN:Ljava/util/Locale; = null

.field public static final ITALY:Ljava/util/Locale; = null

.field public static final JAPAN:Ljava/util/Locale; = null

.field public static final JAPANESE:Ljava/util/Locale; = null

.field public static final KOREA:Ljava/util/Locale; = null

.field public static final KOREAN:Ljava/util/Locale; = null

.field public static final PRC:Ljava/util/Locale; = null

.field public static final ROOT:Ljava/util/Locale; = null

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale; = null

.field public static final TAIWAN:Ljava/util/Locale; = null

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale; = null

.field public static final UK:Ljava/util/Locale; = null

.field public static final US:Ljava/util/Locale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x7ef811609c30f9ecL

.field private static final setLocalePermission:Ljava/util/PropertyPermission;


# instance fields
.field private transient cachedToStringResult:Ljava/lang/String;

.field private transient countryCode:Ljava/lang/String;

.field private transient languageCode:Ljava/lang/String;

.field private transient variantCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 112
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3}, Ljava/util/Locale;-><init>()V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 117
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "CA"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 122
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "CA"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 127
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 132
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 137
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 142
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "FR"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 147
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 152
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 157
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, "DE"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 162
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 167
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, "IT"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 172
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, "JP"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 177
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 182
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, "KR"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 187
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 192
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 200
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 205
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 210
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 215
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 220
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "GB"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 225
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 227
    new-instance v3, Ljava/util/PropertyPermission;

    const-string v4, "user.language"

    const-string v5, "write"

    invoke-direct {v3, v4, v5}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->setLocalePermission:Ljava/util/PropertyPermission;

    .line 231
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.language"

    const-string v5, "en"

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, language:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.region"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, region:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.variant"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    .local v2, variant:Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 611
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "country"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "hashcode"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "language"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "variant"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    sput-object v3, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const-string v0, "en"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 248
    const-string v0, "US"

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "language"

    .prologue
    .line 256
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 263
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_f

    .line 272
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 274
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 275
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 276
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 277
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 303
    :goto_25
    return-void

    .line 283
    :cond_26
    invoke-static {p1}, Lorg/apache/harmony/luni/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 288
    const-string v0, "iw"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 298
    :cond_3a
    :goto_3a
    invoke-static {p2}, Lorg/apache/harmony/luni/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_25

    .line 289
    :cond_43
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 290
    const-string v0, "in"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_3a

    .line 291
    :cond_52
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "yi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 292
    const-string v0, "ji"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_3a
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 345
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Ljava/util/Locale;
    .registers 1

    .prologue
    .line 364
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 518
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 526
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 628
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "country"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 629
    const-string v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 630
    const-string v1, "variant"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 560
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    if-nez p0, :cond_e

    .line 561
    :try_start_5
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 560
    :catchall_b
    move-exception v2

    monitor-exit v1

    throw v2

    .line 564
    :cond_e
    :try_start_e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 565
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_19

    .line 566
    sget-object v2, Ljava/util/Locale;->setLocalePermission:Ljava/util/PropertyPermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 569
    :cond_19
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_b

    .line 570
    monitor-exit v1

    return-void
.end method

.method private toNewString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x5f

    .line 591
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 592
    const-string v1, ""

    .line 608
    :goto_14
    return-object v1

    .line 598
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 599
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_31

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 601
    :cond_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    :cond_34
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 605
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    :cond_44
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 619
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    const-string v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 621
    const-string v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    const-string v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 624
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 307
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 308
    :catch_5
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 327
    :goto_5
    return v2

    .line 321
    :cond_6
    instance-of v2, p1, Ljava/util/Locale;

    if-eqz v2, :cond_30

    .line 322
    move-object v0, p1

    check-cast v0, Ljava/util/Locale;

    move-object v1, v0

    .line 323
    .local v1, o:Ljava/util/Locale;
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v5

    goto :goto_5

    :cond_2e
    move v2, v4

    goto :goto_5

    .end local v1           #o:Ljava/util/Locale;
    :cond_30
    move v2, v4

    .line 327
    goto :goto_5
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "locale"

    .prologue
    .line 380
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 381
    const-string v1, ""

    .line 387
    :goto_a
    return-object v1

    .line 383
    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_29

    .line 385
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    move-object v1, v0

    .line 387
    goto :goto_a
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "locale"

    .prologue
    .line 402
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 403
    const-string v1, ""

    .line 409
    :goto_a
    return-object v1

    .line 405
    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_29

    .line 407
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    move-object v1, v0

    .line 409
    goto :goto_a
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 9
    .parameter "locale"

    .prologue
    const/4 v6, 0x1

    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, buffer:Ljava/lang/StringBuilder;
    iget-object v5, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 438
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, displayLanguage:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v5, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v1, v1, 0x1

    .line 442
    .end local v3           #displayLanguage:Ljava/lang/String;
    :cond_20
    iget-object v5, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    .line 443
    if-ne v1, v6, :cond_2f

    .line 444
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_2f
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, displayCountry:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    :goto_3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    add-int/lit8 v1, v1, 0x1

    .line 450
    .end local v2           #displayCountry:Ljava/lang/String;
    :cond_40
    iget-object v5, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    .line 451
    if-ne v1, v6, :cond_70

    .line 452
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_4f
    :goto_4f
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, displayVariant:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_79

    iget-object v5, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    :goto_5b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v1, v1, 0x1

    .line 460
    .end local v4           #displayVariant:Ljava/lang/String;
    :cond_60
    if-le v1, v6, :cond_67

    .line 461
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v3       #displayLanguage:Ljava/lang/String;
    :cond_6c
    move-object v5, v3

    .line 439
    goto :goto_1b

    .end local v3           #displayLanguage:Ljava/lang/String;
    .restart local v2       #displayCountry:Ljava/lang/String;
    :cond_6e
    move-object v5, v2

    .line 447
    goto :goto_3b

    .line 453
    .end local v2           #displayCountry:Ljava/lang/String;
    :cond_70
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4f

    .line 454
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .restart local v4       #displayVariant:Ljava/lang/String;
    :cond_79
    move-object v5, v4

    .line 457
    goto :goto_5b
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 472
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "locale"

    .prologue
    .line 481
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 482
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 488
    :goto_a
    return-object v1

    .line 484
    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_29

    .line 486
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    move-object v1, v0

    .line 488
    goto :goto_a
.end method

.method public getISO3Country()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 497
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 499
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getISO3Language()Ljava/lang/String;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 508
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 510
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 3

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    .line 586
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_b

    invoke-direct {p0}, Ljava/util/Locale;->toNewString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    :goto_a
    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_a
.end method
