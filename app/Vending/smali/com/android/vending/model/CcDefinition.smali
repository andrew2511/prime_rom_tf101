.class public final enum Lcom/android/vending/model/CcDefinition;
.super Ljava/lang/Enum;
.source "CcDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/CcDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/CcDefinition;

.field public static final enum AMEX:Lcom/android/vending/model/CcDefinition;

.field public static final enum DISCOVER:Lcom/android/vending/model/CcDefinition;

.field public static final enum JCB:Lcom/android/vending/model/CcDefinition;

.field public static final enum MC:Lcom/android/vending/model/CcDefinition;

.field public static final enum SOLO:Lcom/android/vending/model/CcDefinition;

.field public static final enum VISA:Lcom/android/vending/model/CcDefinition;

.field public static final enum VISA_ELECTRON:Lcom/android/vending/model/CcDefinition;


# instance fields
.field private final ccLength:[I

.field private final ccName:Ljava/lang/String;

.field private final cvcLength:I

.field private final hasExpDate:Z

.field private final hasIssueNumber:Z

.field private final hasStartDate:Z

.field private final prefixRanges:[Ljava/lang/String;

.field private final validCountries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 40
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "SOLO"

    const/4 v2, 0x0

    const-string v3, "SOLO"

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "633450-99"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "6767"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "GB"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->SOLO:Lcom/android/vending/model/CcDefinition;

    .line 42
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "DISCOVER"

    const/4 v2, 0x1

    const-string v3, "DISCOVER"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "6011"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "650"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "US"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->DISCOVER:Lcom/android/vending/model/CcDefinition;

    .line 44
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "AMEX"

    const/4 v2, 0x2

    const-string v3, "AMEX"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xf

    aput v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "34"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "37"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "US"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "GB"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->AMEX:Lcom/android/vending/model/CcDefinition;

    .line 46
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "MC"

    const/4 v2, 0x3

    const-string v3, "MASTER_CARD"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "51-55"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "US"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "GB"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->MC:Lcom/android/vending/model/CcDefinition;

    .line 48
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "VISA_ELECTRON"

    const/4 v2, 0x4

    const-string v3, "VISA"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x3

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "424519"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "424962-3"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "450875"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "484406-08"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "454411-55"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "491730-59"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "491880"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "US"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "GB"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->VISA_ELECTRON:Lcom/android/vending/model/CcDefinition;

    .line 51
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "VISA"

    const/4 v2, 0x5

    const-string v3, "VISA"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "4"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "US"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "GB"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->VISA:Lcom/android/vending/model/CcDefinition;

    .line 53
    new-instance v0, Lcom/android/vending/model/CcDefinition;

    const-string v1, "JCB"

    const/4 v2, 0x6

    const-string v3, "JCB"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "2131"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "1800"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "3"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "GB"

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/vending/model/CcDefinition;-><init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/CcDefinition;->JCB:Lcom/android/vending/model/CcDefinition;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/vending/model/CcDefinition;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/vending/model/CcDefinition;->SOLO:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/vending/model/CcDefinition;->DISCOVER:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/vending/model/CcDefinition;->AMEX:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/vending/model/CcDefinition;->MC:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/vending/model/CcDefinition;->VISA_ELECTRON:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/model/CcDefinition;->VISA:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/CcDefinition;->JCB:Lcom/android/vending/model/CcDefinition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/CcDefinition;->$VALUES:[Lcom/android/vending/model/CcDefinition;

    return-void

    .line 40
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_2
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_3
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_4
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[II[Ljava/lang/String;ZZZ[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "ccLength"
    .parameter "cvcLength"
    .parameter "prefixRanges"
    .parameter "hasExpDate"
    .parameter "hasStartDate"
    .parameter "hasIssueNumber"
    .parameter "validCountries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[II[",
            "Ljava/lang/String;",
            "ZZZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/android/vending/model/CcDefinition;->ccName:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/android/vending/model/CcDefinition;->ccLength:[I

    .line 71
    iput p5, p0, Lcom/android/vending/model/CcDefinition;->cvcLength:I

    .line 72
    iput-object p6, p0, Lcom/android/vending/model/CcDefinition;->prefixRanges:[Ljava/lang/String;

    .line 73
    iput-boolean p7, p0, Lcom/android/vending/model/CcDefinition;->hasExpDate:Z

    .line 74
    iput-boolean p8, p0, Lcom/android/vending/model/CcDefinition;->hasStartDate:Z

    .line 75
    iput-boolean p9, p0, Lcom/android/vending/model/CcDefinition;->hasIssueNumber:Z

    .line 76
    iput-object p10, p0, Lcom/android/vending/model/CcDefinition;->validCountries:[Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/CcDefinition;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/android/vending/model/CcDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/CcDefinition;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/CcDefinition;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/vending/model/CcDefinition;->$VALUES:[Lcom/android/vending/model/CcDefinition;

    invoke-virtual {v0}, [Lcom/android/vending/model/CcDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/CcDefinition;

    return-object v0
.end method


# virtual methods
.method public getCcLength()[I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vending/model/CcDefinition;->ccLength:[I

    return-object v0
.end method

.method public getCvcLength()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/vending/model/CcDefinition;->cvcLength:I

    return v0
.end method

.method public getPrefixRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vending/model/CcDefinition;->prefixRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public hasExpDate()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/vending/model/CcDefinition;->hasExpDate:Z

    return v0
.end method

.method public hasIssueNumber()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/vending/model/CcDefinition;->hasIssueNumber:Z

    return v0
.end method

.method public hasStartDate()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/vending/model/CcDefinition;->hasStartDate:Z

    return v0
.end method
