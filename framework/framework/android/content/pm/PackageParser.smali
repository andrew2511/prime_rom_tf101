.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo; = null

.field public static final PARSE_CHATTY:I = 0x2

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_ON_SDCARD:I = 0x20

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAME:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final SDK_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sCompatibilityModeEnabled:Z


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 88
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_29
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 96
    sput-boolean v4, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void

    .line 88
    :cond_35
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto :goto_29
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "archiveSourcePath"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 168
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 169
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "clsSeq"
    .parameter "outError"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 1187
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_23

    .line 1188
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1206
    :goto_22
    return-object v3

    .line 1191
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, cls:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1193
    .local v1, c:C
    if-ne v1, v4, :cond_43

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1196
    :cond_43
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_5d

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1202
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_5d
    const/16 v3, 0x61

    if-lt v1, v3, :cond_6a

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_6a

    .line 1203
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1205
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1206
    goto :goto_22
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "pkg"
    .parameter "procSeq"
    .parameter "type"
    .parameter "outError"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1212
    .local v2, proc:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1213
    .local v0, c:C
    if-eqz p0, :cond_9e

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_9e

    .line 1214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_49

    .line 1215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": must be at least two characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1234
    :goto_48
    return-object v4

    .line 1219
    :cond_49
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, subName:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, nameError:Ljava/lang/String;
    if-eqz v1, :cond_88

    .line 1222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1224
    goto :goto_48

    .line 1226
    :cond_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_48

    .line 1228
    .end local v1           #nameError:Ljava/lang/String;
    .end local v3           #subName:Ljava/lang/String;
    :cond_9e
    invoke-static {v2, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1229
    .restart local v1       #nameError:Ljava/lang/String;
    if-eqz v1, :cond_e3

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e3

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1232
    goto/16 :goto_48

    .line 1234
    :cond_e3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_48
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "flags"
    .parameter "separateProcesses"
    .parameter "outError"

    .prologue
    .line 1240
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_13

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1241
    if-eqz p1, :cond_11

    move-object v2, p1

    .line 1254
    :goto_10
    return-object v2

    :cond_11
    move-object v2, p0

    .line 1241
    goto :goto_10

    .line 1243
    :cond_13
    if-eqz p4, :cond_34

    .line 1244
    array-length v2, p4

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_19
    if-ltz v0, :cond_34

    .line 1245
    aget-object v1, p4, v0

    .line 1246
    .local v1, sp:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    move-object v2, p0

    .line 1247
    goto :goto_10

    .line 1244
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1251
    .end local v0           #i:I
    .end local v1           #sp:Ljava/lang/String;
    :cond_34
    if-eqz p2, :cond_3c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_3e

    :cond_3c
    move-object v2, p1

    .line 1252
    goto :goto_10

    .line 1254
    :cond_3e
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "outError"

    .prologue
    .line 1259
    if-nez p2, :cond_4

    move-object v0, p1

    .line 1265
    :goto_3
    return-object v0

    .line 1262
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 1263
    const/4 v0, 0x0

    goto :goto_3

    .line 1265
    :cond_c
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "flags"
    .parameter "p"
    .parameter "metaData"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3062
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-eqz v1, :cond_15

    .line 3063
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-ne v1, v2, :cond_13

    move v0, v2

    .line 3064
    .local v0, enabled:Z
    :goto_b
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v1, v0, :cond_15

    move v1, v2

    .line 3076
    .end local v0           #enabled:Z
    :goto_12
    return v1

    :cond_13
    move v0, v3

    .line 3063
    goto :goto_b

    .line 3068
    :cond_15
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_21

    if-nez p2, :cond_1f

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_21

    :cond_1f
    move v1, v2

    .line 3070
    goto :goto_12

    .line 3072
    :cond_21
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_2b

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    move v1, v2

    .line 3074
    goto :goto_12

    :cond_2b
    move v1, v3

    .line 3076
    goto :goto_12
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .parameter "a"
    .parameter "flags"

    .prologue
    .line 3164
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3172
    :goto_3
    return-object v1

    .line 3165
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3166
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    .line 3169
    :cond_11
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 3170
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3171
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3172
    goto :goto_3
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x20

    const/4 v4, 0x1

    const v3, -0x200001

    .line 3080
    if-nez p0, :cond_a

    .line 3116
    :goto_9
    return-object v1

    .line 3081
    :cond_a
    invoke-static {p1, p0, v1}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3084
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_19

    .line 3085
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3087
    :cond_19
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    if-eqz v1, :cond_27

    .line 3088
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3092
    :goto_24
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_9

    .line 3090
    :cond_27
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_24

    .line 3096
    :cond_2f
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3097
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_3e

    .line 3098
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 3100
    :cond_3e
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_46

    .line 3101
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3103
    :cond_46
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_4d

    .line 3104
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3106
    :cond_4d
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    if-eqz v1, :cond_60

    .line 3107
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3111
    :goto_58
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-ne v1, v4, :cond_68

    .line 3112
    iput-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_5e
    :goto_5e
    move-object v1, v0

    .line 3116
    goto :goto_9

    .line 3109
    :cond_60
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_58

    .line 3113
    :cond_68
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 3114
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_5e
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .parameter "i"
    .parameter "flags"

    .prologue
    .line 3277
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3283
    :goto_3
    return-object v1

    .line 3278
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3279
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    goto :goto_3

    .line 3281
    :cond_b
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 3282
    .local v0, ii:Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3283
    goto :goto_3
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;
    .registers 9
    .parameter "p"
    .parameter "gids"
    .parameter "flags"
    .parameter "firstInstallTime"
    .parameter "lastUpdateTime"

    .prologue
    .line 188
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 189
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 190
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 191
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 193
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 194
    invoke-static {p0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 195
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 196
    iput-wide p3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 197
    iput-wide p5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 198
    and-int/lit16 p3, p2, 0x100

    if-eqz p3, :cond_2d

    .line 199
    .end local p3
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 201
    :cond_2d
    and-int/lit16 p1, p2, 0x4000

    if-eqz p1, :cond_5b

    .line 202
    .end local p1
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 203
    .local p1, N:I
    if-lez p1, :cond_44

    .line 204
    new-array p1, p1, [Landroid/content/pm/ConfigurationInfo;

    .end local p1           #N:I
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 205
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object p3, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    :cond_44
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p1, :cond_9e

    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 208
    .restart local p1       #N:I
    :goto_4e
    if-lez p1, :cond_5b

    .line 209
    new-array p1, p1, [Landroid/content/pm/FeatureInfo;

    .end local p1           #N:I
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 210
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object p3, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 213
    :cond_5b
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_bc

    .line 214
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 215
    .restart local p1       #N:I
    if-lez p1, :cond_bc

    .line 216
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_a0

    .line 217
    new-array p3, p1, [Landroid/content/pm/ActivityInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 225
    .end local p5
    :goto_6f
    const/4 p3, 0x0

    .local p3, i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .local p5, j:I
    move p4, p3

    .end local p3           #i:I
    .local p4, i:I
    :goto_73
    if-ge p4, p1, :cond_bc

    .line 226
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 227
    .local p3, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local p3           #activity:Landroid/content/pm/PackageParser$Activity;
    iget-boolean p3, p3, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez p3, :cond_87

    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_9a

    .line 229
    :cond_87
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 p3, p5, 0x1

    .end local p5           #j:I
    .local p3, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    aput-object p6, v1, p5

    move p5, p3

    .line 225
    .end local p3           #j:I
    .restart local p5       #j:I
    :cond_9a
    add-int/lit8 p3, p4, 0x1

    .end local p4           #i:I
    .local p3, i:I
    move p4, p3

    .end local p3           #i:I
    .restart local p4       #i:I
    goto :goto_73

    .line 207
    .end local p1           #N:I
    .end local p4           #i:I
    .local p5, lastUpdateTime:J
    :cond_9e
    const/4 p1, 0x0

    goto :goto_4e

    .line 219
    .restart local p1       #N:I
    :cond_a0
    const/4 p4, 0x0

    .line 220
    .local p4, num:I
    const/4 p3, 0x0

    .end local p5           #lastUpdateTime:J
    .restart local p3       #i:I
    :goto_a2
    if-ge p3, p1, :cond_b7

    .line 221
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Activity;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p5, p5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p5, :cond_b4

    add-int/lit8 p4, p4, 0x1

    .line 220
    :cond_b4
    add-int/lit8 p3, p3, 0x1

    goto :goto_a2

    .line 223
    :cond_b7
    new-array p3, p4, [Landroid/content/pm/ActivityInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_6f

    .line 234
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_bc
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_11b

    .line 235
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 236
    .restart local p1       #N:I
    if-lez p1, :cond_11b

    .line 237
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_ff

    .line 238
    new-array p3, p1, [Landroid/content/pm/ActivityInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 246
    :goto_d0
    const/4 p3, 0x0

    .restart local p3       #i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .local p5, j:I
    move p4, p3

    .end local p3           #i:I
    .local p4, i:I
    :goto_d4
    if-ge p4, p1, :cond_11b

    .line 247
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 248
    .local p3, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local p3           #activity:Landroid/content/pm/PackageParser$Activity;
    iget-boolean p3, p3, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez p3, :cond_e8

    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_fb

    .line 250
    :cond_e8
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 p3, p5, 0x1

    .end local p5           #j:I
    .local p3, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    aput-object p6, v1, p5

    move p5, p3

    .line 246
    .end local p3           #j:I
    .restart local p5       #j:I
    :cond_fb
    add-int/lit8 p3, p4, 0x1

    .end local p4           #i:I
    .local p3, i:I
    move p4, p3

    .end local p3           #i:I
    .restart local p4       #i:I
    goto :goto_d4

    .line 240
    .end local p4           #i:I
    .end local p5           #j:I
    :cond_ff
    const/4 p4, 0x0

    .line 241
    .local p4, num:I
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_101
    if-ge p3, p1, :cond_116

    .line 242
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Activity;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p5, p5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p5, :cond_113

    add-int/lit8 p4, p4, 0x1

    .line 241
    :cond_113
    add-int/lit8 p3, p3, 0x1

    goto :goto_101

    .line 244
    :cond_116
    new-array p3, p4, [Landroid/content/pm/ActivityInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_d0

    .line 255
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_11b
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_178

    .line 256
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 257
    .restart local p1       #N:I
    if-lez p1, :cond_178

    .line 258
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_15c

    .line 259
    new-array p3, p1, [Landroid/content/pm/ServiceInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 267
    :goto_12f
    const/4 p3, 0x0

    .restart local p3       #i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    :goto_132
    if-ge p3, p1, :cond_178

    .line 268
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Service;

    .line 269
    .local p4, service:Landroid/content/pm/PackageParser$Service;
    iget-object p4, p4, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .end local p4           #service:Landroid/content/pm/PackageParser$Service;
    iget-boolean p4, p4, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez p4, :cond_146

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_25f

    .line 271
    :cond_146
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 p4, p5, 0x1

    .end local p5           #j:I
    .local p4, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Service;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object p6

    aput-object p6, v1, p5

    .line 267
    :goto_158
    add-int/lit8 p3, p3, 0x1

    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    goto :goto_132

    .line 261
    .end local p3           #i:I
    .end local p5           #j:I
    :cond_15c
    const/4 p4, 0x0

    .line 262
    .local p4, num:I
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_15e
    if-ge p3, p1, :cond_173

    .line 263
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Service;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean p5, p5, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz p5, :cond_170

    add-int/lit8 p4, p4, 0x1

    .line 262
    :cond_170
    add-int/lit8 p3, p3, 0x1

    goto :goto_15e

    .line 265
    :cond_173
    new-array p3, p4, [Landroid/content/pm/ServiceInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_12f

    .line 276
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_178
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_1d5

    .line 277
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 278
    .restart local p1       #N:I
    if-lez p1, :cond_1d5

    .line 279
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_1b9

    .line 280
    new-array p3, p1, [Landroid/content/pm/ProviderInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 288
    :goto_18c
    const/4 p3, 0x0

    .restart local p3       #i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    :goto_18f
    if-ge p3, p1, :cond_1d5

    .line 289
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Provider;

    .line 290
    .local p4, provider:Landroid/content/pm/PackageParser$Provider;
    iget-object p4, p4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .end local p4           #provider:Landroid/content/pm/PackageParser$Provider;
    iget-boolean p4, p4, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez p4, :cond_1a3

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_25c

    .line 292
    :cond_1a3
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 p4, p5, 0x1

    .end local p5           #j:I
    .local p4, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Provider;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object p6

    aput-object p6, v1, p5

    .line 288
    :goto_1b5
    add-int/lit8 p3, p3, 0x1

    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    goto :goto_18f

    .line 282
    .end local p3           #i:I
    .end local p5           #j:I
    :cond_1b9
    const/4 p4, 0x0

    .line 283
    .local p4, num:I
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_1bb
    if-ge p3, p1, :cond_1d0

    .line 284
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Provider;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean p5, p5, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz p5, :cond_1cd

    add-int/lit8 p4, p4, 0x1

    .line 283
    :cond_1cd
    add-int/lit8 p3, p3, 0x1

    goto :goto_1bb

    .line 286
    :cond_1d0
    new-array p3, p4, [Landroid/content/pm/ProviderInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_18c

    .line 297
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_1d5
    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_1fb

    .line 298
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 299
    .restart local p1       #N:I
    if-lez p1, :cond_1fb

    .line 300
    new-array p3, p1, [Landroid/content/pm/InstrumentationInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 301
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_1e6
    if-ge p3, p1, :cond_1fb

    .line 302
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {p4, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p4

    aput-object p4, p5, p3

    .line 301
    add-int/lit8 p3, p3, 0x1

    goto :goto_1e6

    .line 307
    .end local p1           #N:I
    .end local p3           #i:I
    :cond_1fb
    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_23f

    .line 308
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 309
    .restart local p1       #N:I
    if-lez p1, :cond_221

    .line 310
    new-array p3, p1, [Landroid/content/pm/PermissionInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 311
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_20c
    if-ge p3, p1, :cond_221

    .line 312
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Permission;

    invoke-static {p4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p4

    aput-object p4, p5, p3

    .line 311
    add-int/lit8 p3, p3, 0x1

    goto :goto_20c

    .line 315
    .end local p3           #i:I
    :cond_221
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .end local p1           #N:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 316
    .restart local p1       #N:I
    if-lez p1, :cond_23f

    .line 317
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 318
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_22e
    if-ge p3, p1, :cond_23f

    .line 319
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    aput-object p4, p5, p3

    .line 318
    add-int/lit8 p3, p3, 0x1

    goto :goto_22e

    .line 323
    .end local p1           #N:I
    .end local p3           #i:I
    :cond_23f
    and-int/lit8 p1, p2, 0x40

    if-eqz p1, :cond_259

    .line 324
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_25a

    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length p1, p1

    .line 325
    .restart local p1       #N:I
    :goto_24a
    if-lez p1, :cond_259

    .line 326
    new-array p2, p1, [Landroid/content/pm/Signature;

    .end local p2
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 327
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .end local p0
    const/4 p2, 0x0

    iget-object p3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p4, 0x0

    invoke-static {p0, p2, p3, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    .end local p1           #N:I
    :cond_259
    return-object v0

    .line 324
    .restart local p0
    .restart local p2
    :cond_25a
    const/4 p1, 0x0

    goto :goto_24a

    .restart local p1       #N:I
    .restart local p3       #i:I
    .restart local p5       #j:I
    :cond_25c
    move p4, p5

    .end local p5           #j:I
    .local p4, j:I
    goto/16 :goto_1b5

    .end local p4           #j:I
    .restart local p5       #j:I
    :cond_25f
    move p4, p5

    .end local p5           #j:I
    .restart local p4       #j:I
    goto/16 :goto_158
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .parameter "pg"
    .parameter "flags"

    .prologue
    .line 3132
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3138
    :goto_3
    return-object v1

    .line 3133
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3134
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    goto :goto_3

    .line 3136
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 3137
    .local v0, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3138
    goto :goto_3
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 3121
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3127
    :goto_3
    return-object v1

    .line 3122
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3123
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_3

    .line 3125
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 3126
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3127
    goto :goto_3
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 3239
    if-nez p0, :cond_5

    move-object v1, v3

    .line 3252
    :goto_4
    return-object v1

    .line 3240
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1c

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_1c

    .line 3243
    :cond_19
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_4

    .line 3246
    :cond_1c
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3247
    .local v0, pi:Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 3248
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2d

    .line 3249
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 3251
    :cond_2d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3252
    goto :goto_4
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 3197
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3205
    :goto_3
    return-object v1

    .line 3198
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3199
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 3202
    :cond_11
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3203
    .local v0, si:Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 3204
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3205
    goto :goto_3
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 176
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v5, 0x0

    .line 338
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 339
    .local v1, is:Ljava/io/InputStream;
    :cond_a
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 342
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 343
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1b} :catch_4d

    move-result-object v2

    .line 351
    .end local v1           #is:Ljava/io/InputStream;
    :goto_1c
    return-object v2

    .restart local v1       #is:Ljava/io/InputStream;
    :cond_1d
    move-object v2, v5

    .line 343
    goto :goto_1c

    .line 344
    .end local v1           #is:Ljava/io/InputStream;
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 345
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/io/IOException;
    :goto_4b
    move-object v2, v5

    .line 351
    goto :goto_1c

    .line 347
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 348
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .registers 31
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .parameter "receiver"
    .parameter "hardwareAccelerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1818
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 1821
    .local v18, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-nez v4, :cond_2e

    .line 1822
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x7

    const/16 v13, 0x11

    const/4 v14, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-direct/range {v4 .. v14}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1833
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-eqz p7, :cond_6a

    const-string v5, "<receiver>"

    :goto_37
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1837
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1838
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_6d

    .line 1839
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1840
    const/4 v4, 0x0

    .line 2020
    :goto_69
    return-object v4

    .line 1833
    .end local v16           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_6a
    const-string v5, "<activity>"

    goto :goto_37

    .line 1843
    .restart local v16       #a:Landroid/content/pm/PackageParser$Activity;
    :cond_6d
    const/4 v4, 0x6

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    .line 1845
    .local v19, setExported:Z
    if-eqz v19, :cond_88

    .line 1846
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1850
    :cond_88
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1854
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1856
    .local v20, str:Ljava/lang/String;
    if-nez v20, :cond_26e

    .line 1857
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1862
    :goto_b3
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1864
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1867
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1868
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 1871
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1874
    :cond_fd
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 1877
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1880
    :cond_115
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 1883
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1886
    :cond_12d
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_145

    .line 1889
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1892
    :cond_145
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 1895
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1898
    :cond_15d
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 1901
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1904
    :cond_175
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 1907
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1910
    :cond_18d
    const/16 v4, 0x13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_287

    const/4 v5, 0x1

    :goto_19b
    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 1913
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1916
    :cond_1b0
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 1919
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1922
    :cond_1c8
    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 1925
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1928
    :cond_1e0
    if-nez p7, :cond_28a

    .line 1929
    const/16 v4, 0x19

    move-object/from16 v0, v18

    move v1, v4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1fa

    .line 1932
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1935
    :cond_1fa
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1938
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1941
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1944
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x14

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1952
    :goto_242
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1954
    if-eqz p7, :cond_266

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    if-eqz v4, :cond_266

    .line 1957
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    if-ne v4, v5, :cond_266

    .line 1958
    const/4 v4, 0x0

    const-string v5, "Heavy-weight applications can not have receivers in main process"

    aput-object v5, p6, v4

    .line 1962
    :cond_266
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_29b

    .line 1963
    const/4 v4, 0x0

    goto/16 :goto_69

    .line 1859
    :cond_26e
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_285

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_281
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_b3

    :cond_285
    const/4 v5, 0x0

    goto :goto_281

    .line 1910
    :cond_287
    const/4 v5, 0x0

    goto/16 :goto_19b

    .line 1948
    :cond_28a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1949
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_242

    .line 1966
    :cond_29b
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1969
    .local v17, outerDepth:I
    :cond_29f
    :goto_29f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_3f7

    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_2b8

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_3f7

    .line 1971
    :cond_2b8
    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_29f

    const/4 v4, 0x4

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_29f

    .line 1975
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_331

    .line 1976
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1977
    .local v9, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez p7, :cond_2f1

    const/4 v4, 0x1

    move v11, v4

    :goto_2dc
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2f4

    .line 1978
    const/4 v4, 0x0

    goto/16 :goto_69

    .line 1977
    :cond_2f1
    const/4 v4, 0x0

    move v11, v4

    goto :goto_2dc

    .line 1980
    :cond_2f4
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_327

    .line 1981
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29f

    .line 1985
    :cond_327
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29f

    .line 1987
    .end local v9           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_331
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35a

    .line 1988
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object v14, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_29f

    .line 1990
    const/4 v4, 0x0

    goto/16 :goto_69

    .line 1994
    :cond_35a
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    if-eqz p7, :cond_3bd

    .line 1996
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :goto_3b8
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_29f

    .line 2000
    :cond_3bd
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b8

    .line 2016
    :cond_3f7
    if-nez v19, :cond_40c

    .line 2017
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_410

    const/4 v5, 0x1

    :goto_40a
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_40c
    move-object/from16 v4, v16

    .line 2020
    goto/16 :goto_69

    .line 2017
    :cond_410
    const/4 v5, 0x0

    goto :goto_40a
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .registers 34
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2026
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2029
    .local v20, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 2031
    .local v25, targetActivity:Ljava/lang/String;
    if-nez v25, :cond_21

    .line 2032
    const/4 v3, 0x0

    const-string v4, "<activity-alias> does not specify android:targetActivity"

    aput-object v4, p6, v3

    .line 2033
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2034
    const/4 v3, 0x0

    .line 2164
    :goto_20
    return-object v3

    .line 2037
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2039
    if-nez v25, :cond_38

    .line 2040
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2041
    const/4 v3, 0x0

    goto :goto_20

    .line 2044
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_63

    .line 2045
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<activity-alias>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 2057
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2060
    const/16 v24, 0x0

    .line 2062
    .local v24, target:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2063
    .local v15, NA:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_84
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_a9

    .line 2064
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageParser$Activity;

    .line 2065
    .local v23, t:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 2066
    move-object/from16 v24, v23

    .line 2071
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_a9
    if-nez v24, :cond_d3

    .line 2072
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p6, v3

    .line 2074
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2075
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2063
    .restart local v23       #t:Landroid/content/pm/PackageParser$Activity;
    :cond_d0
    add-int/lit8 v17, v17, 0x1

    goto :goto_84

    .line 2078
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_d3
    new-instance v18, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2079
    .local v18, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 2080
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 2081
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2082
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->icon:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->icon:I

    .line 2083
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->logo:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->logo:I

    .line 2084
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 2085
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2086
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2087
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2088
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move v3, v0

    if-nez v3, :cond_151

    .line 2089
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 2091
    :cond_151
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2092
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 2093
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2095
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 2096
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_18f

    .line 2097
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2098
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2101
    :cond_18f
    const/4 v3, 0x5

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    .line 2103
    .local v21, setExported:Z
    if-eqz v21, :cond_1aa

    .line 2104
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2109
    :cond_1aa
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2111
    .local v22, str:Ljava/lang/String;
    if-eqz v22, :cond_1cb

    .line 2112
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1c9
    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2115
    :cond_1cb
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2117
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_1d8

    .line 2118
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2112
    :cond_1d6
    const/4 v4, 0x0

    goto :goto_1c9

    .line 2121
    :cond_1d8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 2124
    .local v19, outerDepth:I
    :cond_1dc
    :goto_1dc
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_2ce

    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_1f5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_2ce

    .line 2126
    :cond_1f5
    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_1dc

    const/4 v3, 0x4

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_1dc

    .line 2130
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_267

    .line 2131
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 2132
    .local v8, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_22b

    .line 2133
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2135
    :cond_22b
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_25d

    .line 2136
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No actions in intent filter at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dc

    .line 2140
    :cond_25d
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1dc

    .line 2142
    .end local v8           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_267
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_290

    .line 2143
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1dc

    .line 2145
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2149
    :cond_290
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1dc

    .line 2160
    :cond_2ce
    if-nez v21, :cond_2e3

    .line 2161
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2e7

    const/4 v4, 0x1

    :goto_2e1
    iput-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_2e3
    move-object/from16 v3, v16

    .line 2164
    goto/16 :goto_20

    .line 2161
    :cond_2e7
    const/4 v4, 0x0

    goto :goto_2e1
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "tag"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2540
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2543
    .local v6, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_7b

    const/4 v0, 0x3

    if-ne v7, v0, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_7b

    .line 2545
    :cond_14
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4

    const/4 v0, 0x4

    if-eq v7, v0, :cond_4

    .line 2549
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2550
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 2552
    const/4 v0, 0x0

    .line 2567
    :goto_36
    return v0

    .line 2556
    :cond_37
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2567
    :cond_7b
    const/4 v0, 0x1

    goto :goto_36
.end method

.method private parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .registers 49
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1467
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    .line 1468
    .local v26, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1470
    .local v34, pkgName:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v37

    .line 1473
    .local v37, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v32

    .line 1475
    .local v32, name:Ljava/lang/String;
    if-eqz v32, :cond_49

    .line 1476
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1477
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_49

    .line 1478
    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    .line 1479
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1480
    const/4 v4, 0x0

    .line 1775
    :goto_48
    return v4

    .line 1484
    :cond_49
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v31

    .line 1486
    .local v31, manageSpaceActivity:Ljava/lang/String;
    if-eqz v31, :cond_64

    .line 1487
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1491
    :cond_64
    const/16 v4, 0x11

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    .line 1493
    .local v27, allowBackup:Z
    if-eqz v27, :cond_cf

    .line 1494
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const v5, 0x8000

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1498
    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 1500
    .local v28, backupAgent:Ljava/lang/String;
    if-eqz v28, :cond_cf

    .line 1501
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1507
    const/16 v4, 0x12

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1510
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1512
    :cond_b5
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1515
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1520
    .end local v28           #backupAgent:Ljava/lang/String;
    :cond_cf
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v41

    .line 1522
    .local v41, v:Landroid/util/TypedValue;
    if-eqz v41, :cond_ee

    move-object/from16 v0, v41

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v4, :cond_ee

    .line 1523
    invoke-virtual/range {v41 .. v41}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1526
    :cond_ee
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1528
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 1530
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1532
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1535
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_149

    .line 1536
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 1539
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x8

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1543
    :cond_149
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_15a

    .line 1544
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x2000

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1547
    :cond_15a
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_16b

    .line 1548
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x4

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1551
    :cond_16b
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_184

    .line 1554
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x2

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1557
    :cond_184
    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 1560
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit16 v4, v4, 0x4000

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1563
    :cond_19d
    const/16 v4, 0x17

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 1567
    .local v15, hardwareAccelerated:Z
    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 1570
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x4

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1573
    :cond_1c0
    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 1576
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x20

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1579
    :cond_1d9
    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1f1

    .line 1582
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x40

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1585
    :cond_1f1
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 1588
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit16 v4, v4, 0x100

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1591
    :cond_20a
    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_224

    .line 1594
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1598
    :cond_224
    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v38

    .line 1600
    .local v38, str:Ljava/lang/String;
    if-eqz v38, :cond_2c3

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c3

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_23a
    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1602
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2c6

    .line 1603
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v38

    .line 1612
    :goto_255
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v38

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1615
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-nez v4, :cond_2b1

    .line 1617
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2d0

    .line 1618
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, pname:Ljava/lang/CharSequence;
    :goto_289
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v8, v0

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1630
    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1648
    .end local v6           #pname:Ljava/lang/CharSequence;
    :cond_2b1
    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    .line 1650
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_2da

    .line 1651
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1652
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1600
    :cond_2c3
    const/4 v4, 0x0

    goto/16 :goto_23a

    .line 1609
    :cond_2c6
    const/16 v4, 0xc

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v38

    goto :goto_255

    .line 1624
    :cond_2d0
    const/16 v4, 0xb

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #pname:Ljava/lang/CharSequence;
    goto :goto_289

    .line 1655
    .end local v6           #pname:Ljava/lang/CharSequence;
    :cond_2da
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v29

    .line 1659
    .local v29, innerDepth:I
    :cond_2de
    :goto_2de
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v40

    .local v40, type:I
    const/4 v4, 0x1

    move/from16 v0, v40

    move v1, v4

    if-eq v0, v1, :cond_4fc

    const/4 v4, 0x3

    move/from16 v0, v40

    move v1, v4

    if-ne v0, v1, :cond_2f7

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v29

    if-le v0, v1, :cond_4fc

    .line 1660
    :cond_2f7
    const/4 v4, 0x3

    move/from16 v0, v40

    move v1, v4

    if-eq v0, v1, :cond_2de

    const/4 v4, 0x4

    move/from16 v0, v40

    move v1, v4

    if-eq v0, v1, :cond_2de

    .line 1664
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v39

    .line 1665
    .local v39, tagName:Ljava/lang/String;
    const-string v4, "activity"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33d

    .line 1666
    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v25

    .line 1668
    .local v25, a:Landroid/content/pm/PackageParser$Activity;
    if-nez v25, :cond_331

    .line 1669
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1670
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1673
    :cond_331
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2de

    .line 1675
    .end local v25           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_33d
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_378

    .line 1676
    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, p5

    move-object/from16 v22, p6

    invoke-direct/range {v16 .. v24}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v25

    .line 1677
    .restart local v25       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v25, :cond_36b

    .line 1678
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1679
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1682
    :cond_36b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2de

    .line 1684
    .end local v25           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_378
    const-string/jumbo v4, "service"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a1

    .line 1685
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v36

    .line 1686
    .local v36, s:Landroid/content/pm/PackageParser$Service;
    if-nez v36, :cond_394

    .line 1687
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1688
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1691
    :cond_394
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2de

    .line 1693
    .end local v36           #s:Landroid/content/pm/PackageParser$Service;
    :cond_3a1
    const-string/jumbo v4, "provider"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ca

    .line 1694
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v33

    .line 1695
    .local v33, p:Landroid/content/pm/PackageParser$Provider;
    if-nez v33, :cond_3bd

    .line 1696
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1697
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1700
    :cond_3bd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2de

    .line 1702
    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_3ca
    const-string v4, "activity-alias"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f2

    .line 1703
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v25

    .line 1704
    .restart local v25       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v25, :cond_3e5

    .line 1705
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1706
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1709
    :cond_3e5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2de

    .line 1711
    .end local v25           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_3f2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_422

    .line 1715
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object v11, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_2de

    .line 1717
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1718
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1721
    :cond_422
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ae

    .line 1722
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v37

    .line 1727
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v30

    .line 1729
    .local v30, lname:Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    .line 1733
    .local v35, req:Z
    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    .line 1735
    if-eqz v30, :cond_47d

    .line 1736
    if-eqz v35, :cond_482

    .line 1737
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_463

    .line 1738
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 1740
    :cond_463
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47d

    .line 1741
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_47d
    :goto_47d
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2de

    .line 1744
    :cond_482
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_493

    .line 1745
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 1747
    :cond_493
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47d

    .line 1748
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47d

    .line 1755
    .end local v30           #lname:Ljava/lang/String;
    .end local v35           #req:Z
    :cond_4ae
    const-string/jumbo v4, "uses-package"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4bf

    .line 1758
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2de

    .line 1762
    :cond_4bf
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2de

    .line 1775
    .end local v39           #tagName:Ljava/lang/String;
    :cond_4fc
    const/4 v4, 0x1

    goto/16 :goto_48
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 15
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1408
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1411
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_1d

    .line 1412
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1417
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1420
    :cond_1d
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v7, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1422
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 1424
    .local v5, a:Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_3b

    .line 1425
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1426
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1427
    const/4 v0, 0x0

    .line 1461
    :goto_3a
    return-object v0

    .line 1433
    :cond_3b
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 1435
    .local v8, str:Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v8, :cond_72

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :goto_48
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 1437
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 1441
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 1445
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1447
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_74

    .line 1448
    const/4 v0, 0x0

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p5, v0

    .line 1449
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1450
    const/4 v0, 0x0

    goto :goto_3a

    .line 1435
    :cond_72
    const/4 v1, 0x0

    goto :goto_48

    .line 1453
    :cond_74
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 1455
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1456
    const/4 v0, 0x0

    goto :goto_3a

    .line 1459
    :cond_87
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1461
    goto :goto_3a
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z
    .registers 25
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "isActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2643
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2646
    .local v9, sa:Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2648
    .local v8, priority:I
    move-object/from16 v0, p5

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 2650
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 2652
    .local v12, v:Landroid/util/TypedValue;
    if-eqz v12, :cond_30

    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v14, :cond_30

    .line 2653
    invoke-virtual {v12}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2656
    :cond_30
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 2659
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 2662
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2664
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2667
    .local v6, outerDepth:I
    :cond_4d
    :goto_4d
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_186

    const/4 v14, 0x3

    if-ne v11, v14, :cond_5d

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_186

    .line 2668
    :cond_5d
    const/4 v14, 0x3

    if-eq v11, v14, :cond_4d

    const/4 v14, 0x4

    if-eq v11, v14, :cond_4d

    .line 2672
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2673
    .local v5, nodeName:Ljava/lang/String;
    const-string v14, "action"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_92

    .line 2674
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2676
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_81

    const-string v14, ""

    if-ne v13, v14, :cond_88

    .line 2677
    :cond_81
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2678
    const/4 v14, 0x0

    .line 2766
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :goto_87
    return v14

    .line 2680
    .restart local v5       #nodeName:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    :cond_88
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2682
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_4d

    .line 2683
    .end local v13           #value:Ljava/lang/String;
    :cond_92
    const-string v14, "category"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bd

    .line 2684
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2686
    .restart local v13       #value:Ljava/lang/String;
    if-eqz v13, :cond_ac

    const-string v14, ""

    if-ne v13, v14, :cond_b3

    .line 2687
    :cond_ac
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2688
    const/4 v14, 0x0

    goto :goto_87

    .line 2690
    :cond_b3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2692
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_4d

    .line 2694
    .end local v13           #value:Ljava/lang/String;
    :cond_bd
    const-string v14, "data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_147

    .line 2695
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2698
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2700
    .local v10, str:Ljava/lang/String;
    if-eqz v10, :cond_de

    .line 2702
    :try_start_d8
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_de
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_d8 .. :try_end_de} :catch_139

    .line 2710
    :cond_de
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2712
    if-eqz v10, :cond_ec

    .line 2713
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 2716
    :cond_ec
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 2718
    .local v4, host:Ljava/lang/String;
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 2720
    .local v7, port:Ljava/lang/String;
    if-eqz v4, :cond_101

    .line 2721
    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    :cond_101
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2726
    if-eqz v10, :cond_111

    .line 2727
    const/4 v14, 0x0

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2730
    :cond_111
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2732
    if-eqz v10, :cond_121

    .line 2733
    const/4 v14, 0x1

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2736
    :cond_121
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2738
    if-eqz v10, :cond_131

    .line 2739
    const/4 v14, 0x2

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2742
    :cond_131
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2743
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4d

    .line 2703
    .end local v4           #host:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :catch_139
    move-exception v3

    .line 2704
    .local v3, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p6, v14

    .line 2705
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2706
    const/4 v14, 0x0

    goto/16 :goto_87

    .line 2745
    .end local v3           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v10           #str:Ljava/lang/String;
    :cond_147
    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4d

    .line 2755
    .end local v5           #nodeName:Ljava/lang/String;
    :cond_186
    const-string v14, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 2766
    const/4 v14, 0x1

    goto/16 :goto_87
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "data"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2575
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2578
    .local v2, sa:Landroid/content/res/TypedArray;
    if-nez p4, :cond_10

    .line 2579
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 2582
    .restart local p4
    :cond_10
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2584
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 2585
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p5, v6

    .line 2586
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v8

    .line 2632
    :goto_1e
    return-object v4

    .line 2590
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 2592
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2594
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_3b

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3b

    .line 2596
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2628
    :goto_33
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2630
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    .line 2632
    goto :goto_1e

    .line 2598
    :cond_3b
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2601
    if-eqz v3, :cond_c2

    .line 2602
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5a

    .line 2603
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2604
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_54
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_58
    move-object v4, v8

    goto :goto_54

    .line 2605
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_5a
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6b

    .line 2606
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_69

    move v4, v7

    :goto_65
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_33

    :cond_69
    move v4, v6

    goto :goto_65

    .line 2607
    :cond_6b
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7d

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7d

    .line 2609
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_33

    .line 2610
    :cond_7d
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8a

    .line 2611
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_33

    .line 2614
    :cond_8a
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 2623
    :cond_c2
    const-string v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 2624
    const/4 p4, 0x0

    goto/16 :goto_33
.end method

.method private parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 43
    .parameter "res"
    .parameter "parser"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    move-object/from16 v8, p2

    .line 750
    .local v8, attrs:Landroid/util/AttributeSet;
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 751
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 752
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 753
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 755
    move-object/from16 v0, p2

    move-object v1, v8

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 756
    .local v25, pkgName:Ljava/lang/String;
    if-nez v25, :cond_30

    .line 757
    const/16 v4, -0x6a

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 758
    const/4 v4, 0x0

    .line 1182
    :goto_2f
    return-object v4

    .line 762
    :cond_30
    new-instance v5, Landroid/content/pm/PackageParser$Package;

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 763
    .local v5, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    .line 765
    .local v15, foundApp:Z
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 767
    .local v27, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 769
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 771
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v4, :cond_67

    .line 772
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 774
    :cond_67
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 776
    .local v28, str:Ljava/lang/String;
    if-eqz v28, :cond_d0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d0

    .line 777
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move v1, v4

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 778
    .local v21, nameError:Ljava/lang/String;
    if-eqz v21, :cond_be

    const-string v4, "android"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    .line 779
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 781
    const/16 v4, -0x6b

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 782
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 784
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_be
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 785
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 788
    .end local v21           #nameError:Ljava/lang/String;
    :cond_d0
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 790
    const/4 v4, 0x4

    const/4 v6, -0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 793
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 796
    const/16 v31, 0x1

    .line 797
    .local v31, supportsSmallScreens:I
    const/16 v30, 0x1

    .line 798
    .local v30, supportsNormalScreens:I
    const/16 v29, 0x1

    .line 799
    .local v29, supportsLargeScreens:I
    const/16 v32, 0x1

    .line 800
    .local v32, supportsXLargeScreens:I
    const/16 v26, 0x1

    .line 801
    .local v26, resizeable:I
    const/4 v12, 0x1

    .line 803
    .local v12, anyDensity:I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    .line 805
    .local v24, outerDepth:I
    :cond_f4
    :goto_f4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v36

    .local v36, type:I
    const/4 v4, 0x1

    move/from16 v0, v36

    move v1, v4

    if-eq v0, v1, :cond_631

    const/4 v4, 0x3

    move/from16 v0, v36

    move v1, v4

    if-ne v0, v1, :cond_10d

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v24

    if-le v0, v1, :cond_631

    .line 806
    :cond_10d
    const/4 v4, 0x3

    move/from16 v0, v36

    move v1, v4

    if-eq v0, v1, :cond_f4

    const/4 v4, 0x4

    move/from16 v0, v36

    move v1, v4

    if-eq v0, v1, :cond_f4

    .line 810
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    .line 811
    .local v33, tagName:Ljava/lang/String;
    const-string v4, "application"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 812
    if-eqz v15, :cond_135

    .line 818
    const-string v4, "PackageParser"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f4

    .line 824
    :cond_135
    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 825
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f4

    .line 826
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 828
    :cond_149
    const-string v4, "permission-group"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_165

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 829
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 830
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 832
    :cond_165
    const-string v4, "permission"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 833
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 834
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 836
    :cond_181
    const-string v4, "permission-tree"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19d

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 837
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 838
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 840
    :cond_19d
    const-string/jumbo v4, "uses-permission"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 841
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 846
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 849
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 851
    if-eqz v20, :cond_1d4

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d4

    .line 852
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_1d4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 857
    .end local v20           #name:Ljava/lang/String;
    :cond_1d9
    const-string/jumbo v4, "uses-configuration"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_249

    .line 858
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 859
    .local v13, cPref:Landroid/content/pm/ConfigurationInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 861
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 864
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 867
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 870
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 872
    :cond_21e
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 875
    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_23c

    .line 878
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 880
    :cond_23c
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 881
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 885
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_249
    const-string/jumbo v4, "uses-feature"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ba

    .line 886
    new-instance v14, Landroid/content/pm/FeatureInfo;

    invoke-direct {v14}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 887
    .local v14, fi:Landroid/content/pm/FeatureInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 891
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 893
    iget-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_27e

    .line 894
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 898
    :cond_27e
    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_290

    .line 901
    iget v4, v14, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v14, Landroid/content/pm/FeatureInfo;->flags:I

    .line 903
    :cond_290
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 904
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-nez v4, :cond_29e

    .line 905
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 907
    :cond_29e
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_2b5

    .line 910
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 911
    .restart local v13       #cPref:Landroid/content/pm/ConfigurationInfo;
    iget v4, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 912
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_2b5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 917
    .end local v14           #fi:Landroid/content/pm/FeatureInfo;
    :cond_2ba
    const-string/jumbo v4, "uses-sdk"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_452

    .line 918
    sget v4, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v4, :cond_445

    .line 919
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 922
    const/16 v19, 0x0

    .line 923
    .local v19, minVers:I
    const/16 v18, 0x0

    .line 924
    .local v18, minCode:Ljava/lang/String;
    const/16 v35, 0x0

    .line 925
    .local v35, targetVers:I
    const/16 v34, 0x0

    .line 927
    .local v34, targetCode:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v37

    .line 929
    .local v37, val:Landroid/util/TypedValue;
    if-eqz v37, :cond_300

    .line 930
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_36d

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_36d

    .line 931
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v34, v18

    .line 938
    :cond_300
    :goto_300
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v37

    .line 940
    if-eqz v37, :cond_324

    .line 941
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_376

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_376

    .line 942
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v34, v18

    .line 949
    :cond_324
    :goto_324
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 951
    if-eqz v18, :cond_39d

    .line 952
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d9

    .line 953
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v4, :cond_37d

    .line 954
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 960
    :goto_363
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 961
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 934
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_36d
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v35, v19

    goto :goto_300

    .line 945
    :cond_376
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v35, v0

    goto :goto_324

    .line 957
    :cond_37d
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_363

    .line 963
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_39d
    sget v4, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v19

    move v1, v4

    if-le v0, v1, :cond_3d9

    .line 964
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current version is #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 966
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 967
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 970
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_3d9
    if-eqz v34, :cond_44a

    .line 971
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43f

    .line 972
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v4, :cond_41f

    .line 973
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 979
    :goto_415
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 980
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 976
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_41f
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_415

    .line 983
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_43f
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x2710

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 990
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v34           #targetCode:Ljava/lang/String;
    .end local v35           #targetVers:I
    .end local v37           #val:Landroid/util/TypedValue;
    :cond_445
    :goto_445
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 986
    .restart local v18       #minCode:Ljava/lang/String;
    .restart local v19       #minVers:I
    .restart local v34       #targetCode:Ljava/lang/String;
    .restart local v35       #targetVers:I
    .restart local v37       #val:Landroid/util/TypedValue;
    :cond_44a
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v35

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_445

    .line 992
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v34           #targetCode:Ljava/lang/String;
    .end local v35           #targetVers:I
    .end local v37           #val:Landroid/util/TypedValue;
    :cond_452
    const-string/jumbo v4, "supports-screens"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d6

    .line 993
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 996
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 999
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1002
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1008
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v31

    .line 1011
    const/4 v4, 0x2

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v30

    .line 1014
    const/4 v4, 0x3

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    .line 1017
    const/4 v4, 0x5

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v32

    .line 1020
    const/4 v4, 0x4

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v26

    .line 1023
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 1027
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1029
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1031
    :cond_4d6
    const-string/jumbo v4, "protected-broadcast"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_521

    .line 1032
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1037
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1040
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1042
    if-eqz v20, :cond_51c

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_51c

    .line 1043
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v4, :cond_508

    .line 1044
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 1046
    :cond_508
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51c

    .line 1047
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_51c
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1053
    .end local v20           #name:Ljava/lang/String;
    :cond_521
    const-string v4, "instrumentation"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53d

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 1054
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 1055
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 1058
    :cond_53d
    const-string v4, "original-package"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_586

    .line 1059
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1062
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 1064
    .local v23, orig:Ljava/lang/String;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57e

    .line 1065
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v4, :cond_576

    .line 1066
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 1067
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 1069
    :cond_576
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_57e
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1074
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1076
    .end local v23           #orig:Ljava/lang/String;
    :cond_586
    const-string v4, "adopt-permissions"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c2

    .line 1077
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1080
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1083
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1085
    if-eqz v20, :cond_5bd

    .line 1086
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v4, :cond_5b5

    .line 1087
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 1089
    :cond_5b5
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_5bd
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1094
    .end local v20           #name:Ljava/lang/String;
    :cond_5c2
    const-string/jumbo v4, "uses-gl-texture"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d3

    .line 1096
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1099
    :cond_5d3
    const-string v4, "compatible-screens"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e3

    .line 1101
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1104
    :cond_5e3
    const-string v4, "eat-comment"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f3

    .line 1106
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1116
    :cond_5f3
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1124
    .end local v33           #tagName:Ljava/lang/String;
    :cond_631
    if-nez v15, :cond_647

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_647

    .line 1125
    const/4 v4, 0x0

    const-string v6, "<manifest> does not contain an <application> or <instrumentation>"

    aput-object v6, p4, v4

    .line 1126
    const/16 v4, -0x6d

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1129
    :cond_647
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v4

    .line 1130
    .local v11, NP:I
    const/16 v16, 0x0

    .line 1131
    .local v16, implicitPerms:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .local v17, ip:I
    :goto_64e
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_662

    .line 1132
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v22, v4, v17

    .line 1134
    .local v22, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move v6, v0

    if-lt v4, v6, :cond_6db

    .line 1149
    .end local v22           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_662
    if-eqz v16, :cond_66d

    .line 1150
    const-string v4, "PackageParser"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_66d
    if-ltz v31, :cond_678

    if-lez v31, :cond_680

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_680

    .line 1156
    :cond_678
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1158
    :cond_680
    if-eqz v30, :cond_68a

    .line 1159
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1161
    :cond_68a
    if-ltz v29, :cond_695

    if-lez v29, :cond_69d

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_69d

    .line 1164
    :cond_695
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1166
    :cond_69d
    if-ltz v32, :cond_6a9

    if-lez v32, :cond_6b2

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x9

    if-lt v4, v6, :cond_6b2

    .line 1169
    :cond_6a9
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1171
    :cond_6b2
    if-ltz v26, :cond_6bd

    if-lez v26, :cond_6c5

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_6c5

    .line 1174
    :cond_6bd
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1176
    :cond_6c5
    if-ltz v12, :cond_6d0

    if-lez v12, :cond_6d8

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_6d8

    .line 1179
    :cond_6d0
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_6d8
    move-object v4, v5

    .line 1182
    goto/16 :goto_2f

    .line 1137
    .restart local v22       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_6db
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_719

    .line 1138
    if-nez v16, :cond_71d

    .line 1139
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #implicitPerms:Ljava/lang/StringBuilder;
    const/16 v4, 0x80

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1140
    .restart local v16       #implicitPerms:Ljava/lang/StringBuilder;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v4, ": compat added "

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :goto_704
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_719
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_64e

    .line 1143
    :cond_71d
    const/16 v4, 0x20

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_704
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z
    .registers 20
    .parameter "owner"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "tag"
    .parameter "sa"
    .parameter "nameRes"
    .parameter "labelRes"
    .parameter "iconRes"
    .parameter "logoRes"

    .prologue
    .line 1781
    const/4 v7, 0x0

    move-object v0, p5

    move/from16 v1, p6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 1782
    .local v5, name:Ljava/lang/String;
    if-nez v5, :cond_23

    .line 1783
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p3, v7

    .line 1784
    const/4 v7, 0x0

    .line 1811
    :goto_22
    return v7

    .line 1787
    :cond_23
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v5, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1789
    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v7, :cond_33

    .line 1790
    const/4 v7, 0x0

    goto :goto_22

    .line 1793
    :cond_33
    const/4 v7, 0x0

    move-object v0, p5

    move/from16 v1, p8

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1794
    .local v3, iconVal:I
    if-eqz v3, :cond_43

    .line 1795
    iput v3, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1796
    const/4 v7, 0x0

    iput-object v7, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1799
    :cond_43
    const/4 v7, 0x0

    move-object v0, p5

    move/from16 v1, p9

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1800
    .local v4, logoVal:I
    if-eqz v4, :cond_50

    .line 1801
    iput v4, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 1804
    :cond_50
    move-object v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1805
    .local v6, v:Landroid/util/TypedValue;
    if-eqz v6, :cond_65

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    iput v7, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v7, :cond_65

    .line 1806
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1809
    :cond_65
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1811
    const/4 v7, 0x1

    goto :goto_22
.end method

.method public static parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 25
    .parameter "packageFilePath"
    .parameter "flags"

    .prologue
    .line 595
    const/16 v22, 0x0

    .line 596
    .local v22, parser:Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 598
    .local v5, assmgr:Landroid/content/res/AssetManager;
    :try_start_3
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_71

    .line 599
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .local v4, assmgr:Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1d
    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v4 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 601
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    .line 602
    .local v5, cookie:I
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_e1

    move-result-object v8

    .line 609
    .end local v22           #parser:Landroid/content/res/XmlResourceParser;
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    move-object v5, v8

    .line 610
    .local v5, attrs:Landroid/util/AttributeSet;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 611
    .local v6, errors:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 613
    .local v7, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :try_start_34
    move-object v0, v8

    move-object v1, v5

    move/from16 v2, p1

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_d0
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_3c} :catch_b7

    move-result-object p0

    .line 619
    .end local v7           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v8, :cond_42

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_42
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 622
    .end local v5           #attrs:Landroid/util/AttributeSet;
    .end local p1
    :cond_47
    :goto_47
    if-nez p0, :cond_dc

    .line 623
    const-string p0, "PackageParser"

    .end local p0           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePackageLite error: "

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v5, 0x0

    aget-object v5, v6, v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move-object/from16 p0, v8

    .line 626
    .end local v6           #errors:[Ljava/lang/String;
    .end local v8           #parser:Landroid/content/res/XmlResourceParser;
    .local p0, parser:Landroid/content/res/XmlResourceParser;
    :goto_70
    return-object p1

    .line 603
    .end local v4           #assmgr:Landroid/content/res/AssetManager;
    .local v5, assmgr:Landroid/content/res/AssetManager;
    .restart local v22       #parser:Landroid/content/res/XmlResourceParser;
    .local p0, packageFilePath:Ljava/lang/String;
    .restart local p1
    :catch_71
    move-exception p1

    move-object v4, v5

    .line 604
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .restart local v4       #assmgr:Landroid/content/res/AssetManager;
    .local p1, e:Ljava/lang/Exception;
    :goto_73
    if-eqz v4, :cond_78

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 605
    :cond_78
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #packageFilePath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move-object/from16 p0, v22

    .end local v22           #parser:Landroid/content/res/XmlResourceParser;
    .local p0, parser:Landroid/content/res/XmlResourceParser;
    goto :goto_70

    .line 614
    .local v5, attrs:Landroid/util/AttributeSet;
    .restart local v6       #errors:[Ljava/lang/String;
    .restart local v7       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v8       #parser:Landroid/content/res/XmlResourceParser;
    .local p0, packageFilePath:Ljava/lang/String;
    .local p1, flags:I
    :catch_9f
    move-exception p1

    .line 615
    .local p1, e:Ljava/io/IOException;
    :try_start_a0
    const-string v5, "PackageParser"

    .end local v5           #attrs:Landroid/util/AttributeSet;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_d0

    .line 619
    if-eqz v8, :cond_af

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_af
    if-eqz v4, :cond_e3

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    move-object/from16 p0, v7

    .end local v7           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_47

    .line 616
    .restart local v5       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageFilePath:Ljava/lang/String;
    .local p1, flags:I
    :catch_b7
    move-exception p1

    .line 617
    .local p1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b8
    const-string v5, "PackageParser"

    .end local v5           #attrs:Landroid/util/AttributeSet;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_d0

    .line 619
    if-eqz v8, :cond_c7

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_c7
    if-eqz v4, :cond_e3

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    move-object/from16 p0, v7

    .end local v7           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    goto/16 :goto_47

    .line 619
    .end local p1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageFilePath:Ljava/lang/String;
    :catchall_d0
    move-exception p0

    .end local p0           #packageFilePath:Ljava/lang/String;
    if-eqz v8, :cond_d6

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_d6
    if-eqz v4, :cond_db

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    :cond_db
    throw p0

    .end local v7           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :cond_dc
    move-object/from16 p1, p0

    move-object/from16 p0, v8

    .line 626
    .end local v8           #parser:Landroid/content/res/XmlResourceParser;
    .local p0, parser:Landroid/content/res/XmlResourceParser;
    goto :goto_70

    .line 603
    .end local v6           #errors:[Ljava/lang/String;
    .restart local v22       #parser:Landroid/content/res/XmlResourceParser;
    .local p0, packageFilePath:Ljava/lang/String;
    .local p1, flags:I
    :catch_e1
    move-exception p1

    goto :goto_73

    .end local v22           #parser:Landroid/content/res/XmlResourceParser;
    .end local p1           #flags:I
    .restart local v6       #errors:[Ljava/lang/String;
    .restart local v7       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v8       #parser:Landroid/content/res/XmlResourceParser;
    :cond_e3
    move-object/from16 p0, v7

    .end local v7           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .local p0, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    goto/16 :goto_47
.end method

.method private static parsePackageLite(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    .registers 15
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 696
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v6, :cond_c

    if-ne v5, v10, :cond_4

    .line 700
    :cond_c
    if-eq v5, v6, :cond_14

    .line 701
    const-string v6, "No start tag found"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 730
    :goto_13
    return-object v6

    .line 704
    :cond_14
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_18

    .line 706
    :cond_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "manifest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 707
    const-string v6, "No <manifest> tag"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 708
    goto :goto_13

    .line 710
    :cond_2a
    const-string v6, "package"

    invoke-interface {p1, v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3e

    .line 712
    :cond_38
    const-string v6, "<manifest> does not specify package"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 713
    goto :goto_13

    .line 715
    :cond_3e
    invoke-static {v4, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, nameError:Ljava/lang/String;
    if-eqz v3, :cond_6d

    const-string v6, "android"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<manifest> specifies bad package name \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v9

    move-object v6, v8

    .line 719
    goto :goto_13

    .line 721
    :cond_6d
    const/4 v2, -0x1

    .line 722
    .local v2, installLocation:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6f
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_86

    .line 723
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, attr:Ljava/lang/String;
    const-string v6, "installLocation"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 725
    const/4 v6, -0x1

    invoke-interface {p1, v1, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    .line 730
    .end local v0           #attr:Ljava/lang/String;
    :cond_86
    new-instance v6, Landroid/content/pm/PackageParser$PackageLite;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;I)V

    goto :goto_13

    .line 722
    .restart local v0       #attr:Ljava/lang/String;
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f
.end method

.method private static parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 661
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v3, :cond_c

    if-ne v2, v7, :cond_4

    .line 665
    :cond_c
    if-eq v2, v3, :cond_14

    .line 666
    const-string v3, "No start tag found"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 687
    :goto_13
    return-object v3

    .line 669
    :cond_14
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_18

    .line 671
    :cond_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "manifest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 672
    const-string v3, "No <manifest> tag"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 673
    goto :goto_13

    .line 675
    :cond_2a
    const-string v3, "package"

    invoke-interface {p1, v5, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3e

    .line 677
    :cond_38
    const-string v3, "<manifest> does not specify package"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 678
    goto :goto_13

    .line 680
    :cond_3e
    invoke-static {v1, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, nameError:Ljava/lang/String;
    if-eqz v0, :cond_6d

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad package name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v6

    move-object v3, v5

    .line 684
    goto :goto_13

    .line 687
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_13
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1307
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1309
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1312
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1318
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1319
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1320
    const/4 v3, 0x0

    .line 1355
    :goto_32
    return-object v3

    .line 1325
    :cond_33
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1327
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 1328
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1331
    :cond_4e
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1335
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1339
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1341
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7a

    .line 1342
    const/4 v3, 0x0

    const-string v4, "<permission> does not specify protectionLevel"

    aput-object v4, p5, v3

    .line 1343
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1344
    const/4 v3, 0x0

    goto :goto_32

    .line 1347
    :cond_7a
    const-string v13, "<permission>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 1349
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1350
    const/4 v3, 0x0

    goto :goto_32

    .line 1353
    :cond_95
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1355
    goto :goto_32
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1271
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1273
    .local v14, perm:Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1276
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v7, "<permission-group>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1282
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1283
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1284
    const/4 v3, 0x0

    .line 1301
    :goto_32
    return-object v3

    .line 1287
    :cond_33
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 1291
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1293
    const-string v13, "<permission-group>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1295
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1296
    const/4 v3, 0x0

    goto :goto_32

    .line 1299
    :cond_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1301
    goto :goto_32
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 23
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1361
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1363
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1366
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission-tree>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1372
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1373
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1374
    const/4 v3, 0x0

    .line 1402
    :goto_32
    return-object v3

    .line 1377
    :cond_33
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1379
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 1380
    .local v16, index:I
    if-lez v16, :cond_4e

    .line 1381
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1383
    :cond_4e
    if-gez v16, :cond_73

    .line 1384
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<permission-tree> name has less than three segments: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    .line 1386
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1387
    const/4 v3, 0x0

    goto :goto_32

    .line 1390
    :cond_73
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1391
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1392
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 1394
    const-string v13, "<permission-tree>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 1396
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1397
    const/4 v3, 0x0

    goto :goto_32

    .line 1400
    :cond_9b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1402
    goto :goto_32
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .registers 25
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2170
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 2173
    .local v16, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_38

    .line 2174
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/16 v11, 0x8

    const/16 v12, 0xe

    const/4 v13, 0x6

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<provider>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 2186
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2189
    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ProviderInfo;

    invoke-direct {v4}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v7, v3, v4}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 2190
    .local v7, p:Landroid/content/pm/PackageParser$Provider;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_65

    .line 2191
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2192
    const/4 v3, 0x0

    .line 2263
    :goto_64
    return-object v3

    .line 2195
    :cond_65
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 2198
    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 2201
    .local v14, cpname:Ljava/lang/String;
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 2205
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 2207
    .local v15, permission:Ljava/lang/String;
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2209
    .local v17, str:Ljava/lang/String;
    if-nez v17, :cond_a5

    .line 2210
    move-object/from16 v17, v15

    .line 2212
    :cond_a5
    if-nez v17, :cond_11c

    .line 2213
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 2218
    :goto_b2
    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2220
    if-nez v17, :cond_c0

    .line 2221
    move-object/from16 v17, v15

    .line 2223
    :cond_c0
    if-nez v17, :cond_131

    .line 2224
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 2230
    :goto_cd
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2234
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 2238
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 2242
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2244
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_146

    .line 2247
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v4, v0

    if-ne v3, v4, :cond_146

    .line 2248
    const/4 v3, 0x0

    const-string v4, "Heavy-weight applications can not have providers in main process"

    aput-object v4, p6, v3

    .line 2249
    const/4 v3, 0x0

    goto/16 :goto_64

    .line 2215
    :cond_11c
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_12c
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_b2

    :cond_12f
    const/4 v4, 0x0

    goto :goto_12c

    .line 2226
    :cond_131
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_144

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_141
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_cd

    :cond_144
    const/4 v4, 0x0

    goto :goto_141

    .line 2253
    :cond_146
    if-nez v14, :cond_150

    .line 2254
    const/4 v3, 0x0

    const-string v4, "<provider> does not incude authorities attribute"

    aput-object v4, p6, v3

    .line 2255
    const/4 v3, 0x0

    goto/16 :goto_64

    .line 2257
    :cond_150
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    .line 2259
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16b

    .line 2260
    const/4 v3, 0x0

    goto/16 :goto_64

    :cond_16b
    move-object v3, v7

    .line 2263
    goto/16 :goto_64
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 29
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2270
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 2273
    .local v14, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_2d7

    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_1a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_2d7

    .line 2275
    :cond_1a
    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_4

    const/4 v5, 0x4

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 2279
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "meta-data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2280
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_4

    .line 2282
    const/4 v5, 0x0

    .line 2437
    :goto_4d
    return v5

    .line 2285
    :cond_4e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "grant-uri-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 2286
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2289
    .local v19, sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 2291
    .local v15, pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2293
    .local v20, str:Ljava/lang/String;
    if-eqz v20, :cond_7c

    .line 2294
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2297
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_7c
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2299
    if-eqz v20, :cond_92

    .line 2300
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2303
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_92
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2305
    if-eqz v20, :cond_a8

    .line 2306
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2309
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_a8
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2311
    if-eqz v15, :cond_f9

    .line 2312
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_d7

    .line 2313
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 2314
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2322
    :goto_ca
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2334
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2316
    :cond_d7
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v5

    .line 2317
    .local v11, N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/os/PatternMatcher;

    .line 2318
    .local v13, newp:[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2319
    aput-object v15, v13, v11

    .line 2320
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_ca

    .line 2325
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/os/PatternMatcher;
    :cond_f9
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2336
    .end local v15           #pa:Landroid/os/PatternMatcher;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v20           #str:Ljava/lang/String;
    :cond_137
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "path-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_299

    .line 2337
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2340
    .restart local v19       #sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 2342
    .local v15, pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2344
    .local v17, permission:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2346
    .local v18, readPermission:Ljava/lang/String;
    if-nez v18, :cond_167

    .line 2347
    move-object/from16 v18, v17

    .line 2349
    :cond_167
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2351
    .local v22, writePermission:Ljava/lang/String;
    if-nez v22, :cond_175

    .line 2352
    move-object/from16 v22, v17

    .line 2355
    :cond_175
    const/4 v12, 0x0

    .line 2356
    .local v12, havePerm:Z
    if-eqz v18, :cond_17d

    .line 2357
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 2358
    const/4 v12, 0x1

    .line 2360
    :cond_17d
    if-eqz v22, :cond_184

    .line 2361
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    .line 2362
    const/4 v12, 0x1

    .line 2365
    :cond_184
    if-nez v12, :cond_1c4

    .line 2367
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2377
    :cond_1c4
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2379
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_1de

    .line 2380
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2384
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_1de
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2386
    if-eqz v16, :cond_1f8

    .line 2387
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2391
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_1f8
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2393
    if-eqz v16, :cond_212

    .line 2394
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2398
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_212
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2400
    if-eqz v15, :cond_25b

    .line 2401
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v5, :cond_239

    .line 2402
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/PathPermission;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 2403
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2422
    :goto_234
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2405
    :cond_239
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v5

    .line 2406
    .restart local v11       #N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/content/pm/PathPermission;

    .line 2407
    .local v13, newp:[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2408
    aput-object v15, v13, v11

    .line 2409
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_234

    .line 2413
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/content/pm/PathPermission;
    :cond_25b
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2426
    .end local v12           #havePerm:Z
    .end local v15           #pa:Landroid/content/pm/PathPermission;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #permission:Ljava/lang/String;
    .end local v18           #readPermission:Ljava/lang/String;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v22           #writePermission:Ljava/lang/String;
    :cond_299
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <provider>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2437
    :cond_2d7
    const/4 v5, 0x1

    goto/16 :goto_4d
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .registers 28
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2443
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 2446
    .local v17, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_36

    .line 2447
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/4 v13, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<service>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 2459
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2462
    new-instance v16, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 2463
    .local v16, s:Landroid/content/pm/PackageParser$Service;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_67

    .line 2464
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2465
    const/4 v3, 0x0

    .line 2533
    :goto_66
    return-object v3

    .line 2468
    :cond_67
    const/4 v3, 0x5

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    .line 2470
    .local v18, setExported:Z
    if-eqz v18, :cond_82

    .line 2471
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 2475
    :cond_82
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 2477
    .local v19, str:Ljava/lang/String;
    if-nez v19, :cond_c0

    .line 2478
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2483
    :goto_9c
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2485
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d8

    .line 2488
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v4, v0

    if-ne v3, v4, :cond_d8

    .line 2489
    const/4 v3, 0x0

    const-string v4, "Heavy-weight applications can not have services in main process"

    aput-object v4, p6, v3

    .line 2490
    const/4 v3, 0x0

    goto :goto_66

    .line 2480
    :cond_c0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_d3
    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_9c

    :cond_d6
    const/4 v4, 0x0

    goto :goto_d3

    .line 2494
    :cond_d8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 2497
    .local v15, outerDepth:I
    :cond_dc
    :goto_dc
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_198

    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_f2

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_198

    .line 2499
    :cond_f2
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_dc

    const/4 v3, 0x4

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_dc

    .line 2503
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 2504
    new-instance v8, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 2505
    .local v8, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_128

    .line 2506
    const/4 v3, 0x0

    goto/16 :goto_66

    .line 2509
    :cond_128
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    .line 2510
    .end local v8           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_131
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 2511
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_dc

    .line 2513
    const/4 v3, 0x0

    goto/16 :goto_66

    .line 2517
    :cond_15a
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <service>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_dc

    .line 2529
    :cond_198
    if-nez v18, :cond_1ad

    .line 2530
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b1

    const/4 v4, 0x1

    :goto_1ab
    iput-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    :cond_1ad
    move-object/from16 v3, v16

    .line 2533
    goto/16 :goto_66

    .line 2530
    :cond_1b1
    const/4 v4, 0x0

    goto :goto_1ab
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .registers 1
    .parameter "compatibilityModeEnabled"

    .prologue
    .line 3326
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 3327
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .registers 5
    .parameter "str"

    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 738
    .local v0, N:I
    new-array v2, v0, [B

    .line 739
    .local v2, sig:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 740
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 742
    :cond_13
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter "name"
    .parameter "requiresSeparator"

    .prologue
    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 631
    .local v0, N:I
    const/4 v3, 0x0

    .line 632
    .local v3, hasSep:Z
    const/4 v2, 0x1

    .line 633
    .local v2, front:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v0, :cond_50

    .line 634
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 635
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_15

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v1, v5, :cond_21

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_21

    .line 636
    :cond_1d
    const/4 v2, 0x0

    .line 633
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 639
    :cond_21
    if-nez v2, :cond_2f

    .line 640
    const/16 v5, 0x30

    if-lt v1, v5, :cond_2b

    const/16 v5, 0x39

    if-le v1, v5, :cond_1e

    :cond_2b
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1e

    .line 644
    :cond_2f
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_36

    .line 645
    const/4 v3, 0x1

    .line 646
    const/4 v2, 0x1

    .line 647
    goto :goto_1e

    .line 649
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 651
    .end local v1           #c:C
    :goto_4f
    return-object v5

    :cond_50
    if-nez v3, :cond_54

    if-nez p1, :cond_56

    :cond_54
    const/4 v5, 0x0

    goto :goto_4f

    :cond_56
    const-string v5, "must have at least one \'.\' separator"

    goto :goto_4f
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 23
    .parameter "pkg"
    .parameter "flags"

    .prologue
    .line 457
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 460
    const/4 v15, 0x0

    .line 461
    .local v15, readBuffer:[B
    sget-object v18, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v18

    .line 462
    :try_start_c
    sget-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 463
    .local v16, readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v16, :cond_1d

    .line 464
    const/16 v17, 0x0

    sput-object v17, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 465
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v15, v0

    .line 467
    :cond_1d
    if-nez v15, :cond_2e

    .line 468
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v15, v0

    .line 469
    new-instance v16, Ljava/lang/ref/WeakReference;

    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 471
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_2e
    monitor-exit v18
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_96

    .line 474
    :try_start_2f
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 476
    .local v12, jarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 478
    .local v5, certs:[Ljava/security/cert/Certificate;
    and-int/lit8 v17, p2, 0x1

    if-eqz v17, :cond_99

    .line 483
    const-string v17, "AndroidManifest.xml"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 484
    .local v11, jarEntry:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 485
    if-nez v5, :cond_185

    .line 486
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 490
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_93
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2f .. :try_end_93} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_93} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_93} :catch_257

    .line 491
    const/16 v17, 0x0

    .line 584
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v11           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :goto_95
    return v17

    .line 471
    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :catchall_96
    move-exception v17

    :try_start_97
    monitor-exit v18
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v17

    .line 507
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_99
    :try_start_99
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 508
    .local v7, entries:Ljava/util/Enumeration;
    :cond_9d
    :goto_9d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_185

    .line 509
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 510
    .local v13, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_9d

    .line 511
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "META-INF/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9d

    .line 512
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v14

    .line 519
    .local v14, localCerts:[Ljava/security/cert/Certificate;
    if-nez v14, :cond_106

    .line 520
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 524
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 525
    const/16 v17, 0x0

    goto :goto_95

    .line 526
    :cond_106
    if-nez v5, :cond_10a

    .line 527
    move-object v5, v14

    goto :goto_9d

    .line 530
    :cond_10a
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10b
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_9d

    .line 531
    const/4 v8, 0x0

    .line 532
    .local v8, found:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_116
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_12e

    .line 533
    aget-object v17, v5, v9

    if-eqz v17, :cond_17f

    aget-object v17, v5, v9

    aget-object v18, v14, v10

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17f

    .line 535
    const/4 v8, 0x1

    .line 539
    :cond_12e
    if-eqz v8, :cond_13e

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_182

    .line 540
    :cond_13e
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has mismatched certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 544
    const/16 v17, -0x68

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 545
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 532
    :cond_17f
    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    .line 530
    :cond_182
    add-int/lit8 v9, v9, 0x1

    goto :goto_10b

    .line 551
    .end local v7           #entries:Ljava/util/Enumeration;
    .end local v8           #found:Z
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #je:Ljava/util/jar/JarEntry;
    .end local v14           #localCerts:[Ljava/security/cert/Certificate;
    :cond_185
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 553
    sget-object v17, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v17
    :try_end_18b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_99 .. :try_end_18b} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_18b} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_18b} :catch_257

    .line 554
    :try_start_18b
    sput-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 555
    monitor-exit v17
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_1c0

    .line 557
    if-eqz v5, :cond_1f5

    :try_start_190
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_1f5

    .line 558
    array-length v4, v5

    .line 559
    .local v4, N:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 560
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1a8
    if-ge v9, v4, :cond_289

    .line 561
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/pm/Signature;

    aget-object v19, v5, v9

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v18, v17, v9
    :try_end_1bd
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_190 .. :try_end_1bd} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1bd} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_190 .. :try_end_1bd} :catch_257

    .line 560
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a8

    .line 555
    .end local v4           #N:I
    .end local v9           #i:I
    :catchall_1c0
    move-exception v18

    :try_start_1c1
    monitor-exit v17
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    :try_start_1c2
    throw v18
    :try_end_1c3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1c2 .. :try_end_1c3} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c3} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_1c2 .. :try_end_1c3} :catch_257

    .line 570
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_1c3
    move-exception v17

    move-object/from16 v6, v17

    .line 571
    .local v6, e:Ljava/security/cert/CertificateEncodingException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 573
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 565
    .end local v6           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_1f5
    :try_start_1f5
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_221
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1f5 .. :try_end_221} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_221} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_221} :catch_257

    .line 568
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 574
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_225
    move-exception v17

    move-object/from16 v6, v17

    .line 575
    .local v6, e:Ljava/io/IOException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 577
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 578
    .end local v6           #e:Ljava/io/IOException;
    :catch_257
    move-exception v17

    move-object/from16 v6, v17

    .line 579
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    const/16 v17, -0x66

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 581
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 584
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v4       #N:I
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v9       #i:I
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_289
    const/16 v17, 0x1

    goto/16 :goto_95
.end method

.method public getParseError()I
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .registers 38
    .parameter "sourceFile"
    .parameter "destCodePath"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 368
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 370
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 372
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping dir: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v6, -0x64

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 374
    const/4 v6, 0x0

    .line 453
    :goto_3a
    return-object v6

    .line 376
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/PackageParser;->isPackageFilename(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_73

    and-int/lit8 v6, p4, 0x4

    if-eqz v6, :cond_73

    .line 378
    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_6a

    .line 381
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping non-package file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_6a
    const/16 v6, -0x64

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 384
    const/4 v6, 0x0

    goto :goto_3a

    .line 387
    :cond_73
    and-int/lit8 v6, p4, 0x2

    if-eqz v6, :cond_94

    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scanning package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_94
    const/16 v29, 0x0

    .line 391
    .local v29, parser:Landroid/content/res/XmlResourceParser;
    const/16 v24, 0x0

    .line 392
    .local v24, assmgr:Landroid/content/res/AssetManager;
    const/16 v31, 0x0

    .line 393
    .local v31, res:Landroid/content/res/Resources;
    const/16 v23, 0x1

    .line 395
    .local v23, assetError:Z
    :try_start_9c
    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a1} :catch_1d5

    .line 396
    .end local v24           #assmgr:Landroid/content/res/AssetManager;
    .local v5, assmgr:Landroid/content/res/AssetManager;
    :try_start_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v25

    .line 397
    .local v25, cookie:I
    if-eqz v25, :cond_f2

    .line 398
    new-instance v32, Landroid/content/res/Resources;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b8} :catch_110

    .line 399
    .end local v31           #res:Landroid/content/res/Resources;
    .local v32, res:Landroid/content/res/Resources;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_ce
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 401
    const-string v6, "AndroidManifest.xml"

    move-object v0, v5

    move/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_dc} :catch_1dc

    move-result-object v29

    .line 402
    const/16 v23, 0x0

    move-object/from16 v31, v32

    .line 410
    .end local v25           #cookie:I
    .end local v32           #res:Landroid/content/res/Resources;
    .restart local v31       #res:Landroid/content/res/Resources;
    :goto_e1
    if-eqz v23, :cond_135

    .line 411
    if-eqz v5, :cond_e8

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 412
    :cond_e8
    const/16 v6, -0x65

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 413
    const/4 v6, 0x0

    goto/16 :goto_3a

    .line 404
    .restart local v25       #cookie:I
    :cond_f2
    :try_start_f2
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed adding asset path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_10f} :catch_110

    goto :goto_e1

    .line 406
    .end local v25           #cookie:I
    :catch_110
    move-exception v6

    move-object/from16 v26, v6

    .line 407
    .local v26, e:Ljava/lang/Exception;
    :goto_113
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e1

    .line 415
    .end local v26           #e:Ljava/lang/Exception;
    :cond_135
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 416
    .local v28, errorText:[Ljava/lang/String;
    const/16 v30, 0x0

    .line 417
    .local v30, pkg:Landroid/content/pm/PackageParser$Package;
    const/16 v27, 0x0

    .line 420
    .local v27, errorException:Ljava/lang/Exception;
    :try_start_13f
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move/from16 v3, p4

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_14c} :catch_177

    move-result-object v30

    .line 427
    :goto_14d
    if-nez v30, :cond_1b5

    .line 428
    if-eqz v27, :cond_182

    .line 429
    const-string v6, "PackageParser"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :goto_15f
    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->close()V

    .line 436
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mParseError:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_174

    .line 438
    const/16 v6, -0x6c

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 440
    :cond_174
    const/4 v6, 0x0

    goto/16 :goto_3a

    .line 421
    :catch_177
    move-exception v26

    .line 422
    .restart local v26       #e:Ljava/lang/Exception;
    move-object/from16 v27, v26

    .line 423
    const/16 v6, -0x66

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_14d

    .line 431
    .end local v26           #e:Ljava/lang/Exception;
    :cond_182
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v28, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15f

    .line 443
    :cond_1b5
    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->close()V

    .line 444
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 447
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 451
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v6, v30

    .line 453
    goto/16 :goto_3a

    .line 406
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v27           #errorException:Ljava/lang/Exception;
    .end local v28           #errorText:[Ljava/lang/String;
    .end local v30           #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v24       #assmgr:Landroid/content/res/AssetManager;
    :catch_1d5
    move-exception v6

    move-object/from16 v26, v6

    move-object/from16 v5, v24

    .end local v24           #assmgr:Landroid/content/res/AssetManager;
    .restart local v5       #assmgr:Landroid/content/res/AssetManager;
    goto/16 :goto_113

    .end local v31           #res:Landroid/content/res/Resources;
    .restart local v25       #cookie:I
    .restart local v32       #res:Landroid/content/res/Resources;
    :catch_1dc
    move-exception v6

    move-object/from16 v26, v6

    move-object/from16 v31, v32

    .end local v32           #res:Landroid/content/res/Resources;
    .restart local v31       #res:Landroid/content/res/Resources;
    goto/16 :goto_113
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .registers 2
    .parameter "procs"

    .prologue
    .line 172
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 173
    return-void
.end method
