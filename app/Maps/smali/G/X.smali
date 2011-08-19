.class public LG/X;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(F)I
    .locals 2

    const/high16 v0, 0x4100

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public static b(F)I
    .locals 2

    const/high16 v0, 0x42c8

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static c(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    return v0
.end method

.method public static c(F)I
    .locals 2

    const/high16 v0, 0x4080

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static d(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(F)I
    .locals 2

    const/high16 v0, 0x4120

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
