.class public final enum Lcom/google/android/testing/mocking/SdkVersion;
.super Ljava/lang/Enum;
.source "SdkVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/testing/mocking/SdkVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/testing/mocking/SdkVersion;

.field public static final enum CUPCAKE:Lcom/google/android/testing/mocking/SdkVersion;

.field public static final enum DONUT:Lcom/google/android/testing/mocking/SdkVersion;

.field public static final enum ECLAIR_0_1:Lcom/google/android/testing/mocking/SdkVersion;

.field public static final enum ECLAIR_MR1:Lcom/google/android/testing/mocking/SdkVersion;

.field public static final enum FROYO:Lcom/google/android/testing/mocking/SdkVersion;

.field public static final enum GINGERBREAD:Lcom/google/android/testing/mocking/SdkVersion;

.field private static final SDK_VERSION:I

.field public static final enum UNKNOWN:Lcom/google/android/testing/mocking/SdkVersion;


# instance fields
.field private final apiLevel:I

.field private final prefix:Ljava/lang/String;

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 29
    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->UNKNOWN:Lcom/google/android/testing/mocking/SdkVersion;

    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "CUPCAKE"

    const/4 v2, 0x1

    const-string v3, "v15"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->CUPCAKE:Lcom/google/android/testing/mocking/SdkVersion;

    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "DONUT"

    const/4 v2, 0x2

    const-string v3, "v16"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->DONUT:Lcom/google/android/testing/mocking/SdkVersion;

    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "ECLAIR_0_1"

    const-string v2, "v201"

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->ECLAIR_0_1:Lcom/google/android/testing/mocking/SdkVersion;

    .line 30
    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "ECLAIR_MR1"

    const-string v2, "v21"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->ECLAIR_MR1:Lcom/google/android/testing/mocking/SdkVersion;

    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "FROYO"

    const/4 v2, 0x5

    const-string v3, "v22"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->FROYO:Lcom/google/android/testing/mocking/SdkVersion;

    new-instance v0, Lcom/google/android/testing/mocking/SdkVersion;

    const-string v1, "GINGERBREAD"

    const-string v2, "v231"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/testing/mocking/SdkVersion;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->GINGERBREAD:Lcom/google/android/testing/mocking/SdkVersion;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/testing/mocking/SdkVersion;

    sget-object v1, Lcom/google/android/testing/mocking/SdkVersion;->UNKNOWN:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v1, v0, v9

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/testing/mocking/SdkVersion;->CUPCAKE:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/testing/mocking/SdkVersion;->DONUT:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/testing/mocking/SdkVersion;->ECLAIR_0_1:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/testing/mocking/SdkVersion;->ECLAIR_MR1:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/testing/mocking/SdkVersion;->FROYO:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/testing/mocking/SdkVersion;->GINGERBREAD:Lcom/google/android/testing/mocking/SdkVersion;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/testing/mocking/SdkVersion;->$VALUES:[Lcom/google/android/testing/mocking/SdkVersion;

    .line 35
    const/4 v1, 0x0

    .line 38
    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-string v2, "SDK"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 51
    :goto_0
    sput v0, Lcom/google/android/testing/mocking/SdkVersion;->SDK_VERSION:I

    .line 52
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    :goto_1
    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v8

    .line 49
    goto :goto_0

    .line 42
    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/google/android/testing/mocking/SdkVersion;->versionName:Ljava/lang/String;

    .line 60
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/android/testing/mocking/SdkVersion;->prefix:Ljava/lang/String;

    .line 61
    iput p4, p0, Lcom/google/android/testing/mocking/SdkVersion;->apiLevel:I

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAllVersions()[Lcom/google/android/testing/mocking/SdkVersion;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-static {}, Lcom/google/android/testing/mocking/SdkVersion;->values()[Lcom/google/android/testing/mocking/SdkVersion;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 74
    sget-object v5, Lcom/google/android/testing/mocking/SdkVersion;->UNKNOWN:Lcom/google/android/testing/mocking/SdkVersion;

    invoke-virtual {v4, v5}, Lcom/google/android/testing/mocking/SdkVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/testing/mocking/SdkVersion;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/testing/mocking/SdkVersion;

    return-object v0
.end method

.method public static getCurrentVersion()Lcom/google/android/testing/mocking/SdkVersion;
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/google/android/testing/mocking/SdkVersion;->SDK_VERSION:I

    invoke-static {v0}, Lcom/google/android/testing/mocking/SdkVersion;->getVersionFor(I)Lcom/google/android/testing/mocking/SdkVersion;

    move-result-object v0

    return-object v0
.end method

.method static getVersionFor(I)Lcom/google/android/testing/mocking/SdkVersion;
    .locals 5
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/testing/mocking/SdkVersion;->values()[Lcom/google/android/testing/mocking/SdkVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 100
    iget v4, v3, Lcom/google/android/testing/mocking/SdkVersion;->apiLevel:I

    if-ne v4, p0, :cond_0

    move-object v0, v3

    .line 104
    :goto_1
    return-object v0

    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/google/android/testing/mocking/SdkVersion;->UNKNOWN:Lcom/google/android/testing/mocking/SdkVersion;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/testing/mocking/SdkVersion;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/google/android/testing/mocking/SdkVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/testing/mocking/SdkVersion;

    return-object p0
.end method

.method public static values()[Lcom/google/android/testing/mocking/SdkVersion;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/testing/mocking/SdkVersion;->$VALUES:[Lcom/google/android/testing/mocking/SdkVersion;

    invoke-virtual {v0}, [Lcom/google/android/testing/mocking/SdkVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/testing/mocking/SdkVersion;

    return-object v0
.end method


# virtual methods
.method public getPackagePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/testing/mocking/SdkVersion;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/testing/mocking/SdkVersion;->versionName:Ljava/lang/String;

    return-object v0
.end method
