.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .locals 4

    const/16 v3, 0xe0

    const/16 v2, 0x81

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_1

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_1

    sub-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0xbc

    :goto_0
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x40

    sub-int v2, v1, v2

    add-int/2addr v0, v2

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-lt v0, v3, :cond_2

    const/16 v1, 0xef

    if-gt v0, v1, :cond_2

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit16 v0, v0, 0xbc

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method
