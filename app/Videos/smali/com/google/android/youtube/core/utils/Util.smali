.class public final Lcom/google/android/youtube/core/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/utils/Util$StartupType;
    }
.end annotation


# static fields
.field public static final APP_VERSION_KEY:Ljava/lang/String; = "AnalyticsYouTubeApplicationVersion"

.field private static final NON_STANDARD_VEVO_CHANNELS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_THRESHOLD:J = 0x240c8400L

.field public static final ZERO_SECONDS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->ZERO_SECONDS:Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mariannefaithfull"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "sylver"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ingrooves"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "davidbisbal"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "barryip"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "avantgarde"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TAPBackFromTheDead"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "mirandaMurphy"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "scarsonbroadway"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "staracademy6"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Metalblade1982"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "portishead"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "EdubbOnline"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "fabiano"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Nordman"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "UniversalTest"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "taiji"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "NIKP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "oranjuicejones"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "universalmusicmexico"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "hayleywestenra"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ryanbingham"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SylviaMcNair"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "melissaetheridge"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "monacibuddisti"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "NolwennLeroy"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "paolobrera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TAPUNWIGGED"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "TheDissociatives"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "emimusic"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "parlophone"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "capitolmusic"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "capitolrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "virginrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "mutechannel"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "muteusa"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->NON_STANDARD_VEVO_CHANNELS:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static alt(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, orig:Ljava/lang/Object;,"TT;"
    .local p1, alt:Ljava/lang/Object;,"TT;"
    const-string v0, "alt can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    if-eqz p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 514
    if-eqz p0, :cond_0

    .line 515
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 517
    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static asString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 205
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static asUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "s"

    .prologue
    .line 196
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static canDisplayHd(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 311
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->deleteDirContents(Ljava/io/File;)V

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 313
    return-void
.end method

.method public static deleteDirContents(Ljava/io/File;)V
    .locals 6
    .parameter "dir"

    .prologue
    .line 321
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 324
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 325
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 326
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->deleteDir(Ljava/io/File;)V

    .line 325
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 333
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public static formatMetadataKeywords(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rawKeywords"
    .parameter "minKeywordLength"
    .parameter "maxKeywordLength"
    .parameter "maxTotalLength"
    .parameter "defaultKeyword"

    .prologue
    const-string v7, ","

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    const-string v6, ","

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 560
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ",;"

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 564
    .local v1, length:I
    if-gt p1, v1, :cond_0

    if-gt v1, p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v4, p3, :cond_0

    .line 566
    const-string v4, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 570
    .end local v1           #length:I
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, p4}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .parameter "maxLength"
    .parameter "defaultValue"

    .prologue
    const/4 v3, 0x0

    const-string v4, "&"

    .line 526
    const-string v1, "defaultValue may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    if-nez p0, :cond_0

    .line 529
    move-object p0, p2

    .line 533
    :cond_0
    const-string v1, "[<>]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 536
    const-string v1, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 540
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 541
    const-string v1, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 542
    .local v0, lastAmpIndex:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 543
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 547
    .end local v0           #lastAmpIndex:I
    :cond_1
    return-object p0
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getAndUpdateStartupType(Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/utils/Util$StartupType;
    .locals 4
    .parameter "applicationVersion"
    .parameter "preferences"

    .prologue
    const-string v3, "AnalyticsYouTubeApplicationVersion"

    .line 175
    const-string v2, "AnalyticsYouTubeApplicationVersion"

    const/4 v2, 0x0

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, storedKey:Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AnalyticsYouTubeApplicationVersion"

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    if-nez v1, :cond_0

    .line 182
    sget-object v2, Lcom/google/android/youtube/core/utils/Util$StartupType;->FIRST_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    .line 186
    :goto_0
    return-object v2

    .line 183
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    sget-object v2, Lcom/google/android/youtube/core/utils/Util$StartupType;->NORMAL_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    goto :goto_0

    .line 186
    :cond_1
    sget-object v2, Lcom/google/android/youtube/core/utils/Util$StartupType;->UPGRADE_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 454
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 455
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 456
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 457
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "could not retrieve application version name"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v5

    .line 458
    goto :goto_0
.end method

.method public static getDeviceFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 122
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_0
    const-string v3, "Disconnected"

    .line 131
    :goto_0
    return-object v3

    .line 126
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, subType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 131
    goto :goto_0
.end method

.method public static getRFC3339()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, RFC_3339:Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 252
    return-object v0
.end method

.method public static getRFC3339TZ()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 156
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 158
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isExtraLargeScreen(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 476
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 477
    .local v1, screenSize:I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFastNetwork(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 105
    .local v1, type:I
    if-eq v1, v4, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v4

    .line 113
    .end local v1           #type:I
    :goto_0
    return v2

    .line 108
    .restart local v1       #type:I
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    move v2, v4

    .line 110
    goto :goto_0

    .line 113
    .end local v1           #type:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 467
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 468
    .local v1, screenSize:I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 140
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRecent(Ljava/util/Date;)Z
    .locals 6
    .parameter "date"

    .prologue
    .line 522
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVevoChannel(Ljava/lang/String;)Z
    .locals 3
    .parameter "channelName"

    .prologue
    const/4 v2, 0x1

    .line 375
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vevo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 380
    :goto_0
    return v0

    .line 377
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/utils/Util;->NON_STANDARD_VEVO_CHANNELS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 378
    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 118
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "s"
    .parameter "defaultValue"

    .prologue
    .line 235
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_0
    return v1

    :cond_0
    move v1, p1

    .line 235
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p1

    .line 237
    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "s"
    .parameter "defaultValue"

    .prologue
    .line 213
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    :goto_0
    return v1

    :cond_0
    move v1, p1

    .line 213
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p1

    .line 215
    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "s"
    .parameter "defaultValue"

    .prologue
    .line 224
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 226
    :goto_0
    return-wide v1

    :cond_0
    move-wide v1, p1

    .line 224
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v1, p1

    .line 226
    goto :goto_0
.end method

.method private static removeTimeZoneColon(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int v0, v1, v2

    .line 289
    .local v0, colonIndex:I
    if-gez v0, :cond_0

    move-object v1, p0

    .line 295
    :goto_0
    return-object v1

    .line 292
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 295
    goto :goto_0
.end method

.method public static secondsToString(I)Ljava/lang/String;
    .locals 9
    .parameter "secs"

    .prologue
    const/4 v7, 0x1

    const-string v8, "0"

    const-string v6, ":"

    .line 66
    div-int/lit8 v1, p0, 0x3c

    .line 67
    .local v1, mins:I
    div-int/lit8 v0, v1, 0x3c

    .line 68
    .local v0, hours:I
    if-lez v0, :cond_0

    .line 69
    rem-int/lit8 v1, v1, 0x3c

    .line 71
    :cond_0
    rem-int/lit8 p0, p0, 0x3c

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, secsStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, minsStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    :cond_2
    if-lez v0, :cond_3

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    :goto_0
    return-object v4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static shrinkDirSize(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "dirPath"
    .parameter "filesSuffix"
    .parameter "limit"

    .prologue
    .line 396
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "limit may not be <= 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 397
    const-string v0, "dirPath may not be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    const-string v0, "suffix may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v2, " is not a directory"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 401
    new-instance p0, Lcom/google/android/youtube/core/utils/Util$1;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/utils/Util$1;-><init>(Ljava/lang/String;)V

    .line 407
    .local p0, filter:Ljava/io/FileFilter;
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 408
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_2

    .line 449
    .end local v0           #files:[Ljava/io/File;
    .end local p0           #filter:Ljava/io/FileFilter;
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 396
    .local p0, dirPath:Ljava/lang/String;
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .restart local v0       #files:[Ljava/io/File;
    .local p0, filter:Ljava/io/FileFilter;
    :cond_2
    const/4 v1, 0x0

    .line 413
    .local v1, size:I
    move-object p0, v0

    .local p0, arr$:[Ljava/io/File;
    array-length v2, p0

    .local v2, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v6, v1

    .end local v1           #size:I
    .local v6, size:I
    move v1, p1

    .end local p1           #i$:I
    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_3

    aget-object p1, p0, v1

    .line 414
    .local p1, file:Ljava/io/File;
    int-to-long v3, v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    .line 413
    .end local v6           #size:I
    .local v3, size:I
    add-int/lit8 p1, v1, 0x1

    .end local v1           #i$:I
    .local p1, i$:I
    move v1, p1

    .end local p1           #i$:I
    .restart local v1       #i$:I
    move v6, v3

    .end local v3           #size:I
    .restart local v6       #size:I
    goto :goto_2

    .line 416
    :cond_3
    int-to-long p0, v6

    cmp-long p0, p0, p2

    if-gez p0, :cond_4

    .line 417
    .end local p0           #arr$:[Ljava/io/File;
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dir is below limit, no need to shrink: [size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", limit="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_4
    new-instance p0, Lcom/google/android/youtube/core/utils/Util$2;

    invoke-direct {p0}, Lcom/google/android/youtube/core/utils/Util$2;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 434
    move v1, v6

    .line 435
    .local v1, newSize:I
    const/4 p1, 0x0

    .line 436
    .local p1, deletedFilesCount:I
    move-object p0, v0

    .restart local p0       #arr$:[Ljava/io/File;
    array-length v4, p0

    .end local v2           #len$:I
    .local v4, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v3, v0

    .end local v0           #i$:I
    .local v3, i$:I
    move v5, v1

    .end local v1           #newSize:I
    .local v5, newSize:I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 437
    .local v0, file:Ljava/io/File;
    int-to-long v1, v5

    cmp-long v1, v1, p2

    if-ltz v1, :cond_5

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 439
    .local v1, fileSize:J
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v0           #file:Ljava/io/File;
    if-eqz v0, :cond_6

    .line 440
    int-to-long v7, v5

    sub-long v0, v7, v1

    long-to-int v0, v0

    .line 441
    .end local v5           #newSize:I
    .local v0, newSize:I
    add-int/lit8 p1, p1, 0x1

    move v1, v0

    .line 436
    .end local v0           #newSize:I
    .local v1, newSize:I
    :goto_4
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i$:I
    .local v0, i$:I
    move v3, v0

    .end local v0           #i$:I
    .restart local v3       #i$:I
    move v5, v1

    .end local v1           #newSize:I
    .restart local v5       #newSize:I
    goto :goto_3

    .line 444
    .local v0, file:Ljava/io/File;
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #arr$:[Ljava/io/File;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dir shrunk: [deleted="

    .end local v0           #file:Ljava/io/File;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", newSize="

    .end local p1           #deletedFilesCount:I
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", previousSize="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", limit="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .local v1, fileSize:J
    .restart local p0       #arr$:[Ljava/io/File;
    .restart local p1       #deletedFilesCount:I
    :cond_6
    move v1, v5

    .end local v5           #newSize:I
    .local v1, newSize:I
    goto :goto_4
.end method

.method public static splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "s"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 510
    :goto_0
    return-object v5

    .line 506
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 507
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 508
    .local v2, integer:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #integer:Ljava/lang/String;
    :cond_1
    move-object v5, v4

    .line 510
    goto :goto_0
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "value"

    .prologue
    .line 260
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :try_start_0
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getRFC3339()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v1

    .line 269
    :try_start_1
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->removeTimeZoneColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getRFC3339TZ()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 271
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 272
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFC3339 date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 577
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 584
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uriEncode(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "string"

    .prologue
    .line 302
    const-string v0, ":/?=&"

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static useTabletUi(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 499
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
