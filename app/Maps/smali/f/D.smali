.class public Lf/D;
.super Ljava/lang/Object;


# static fields
.field static final a:[I

.field public static final b:[[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lf/D;->c:[I

    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lf/D;->d:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sput-object v1, Lf/D;->a:[I

    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    sput-object v1, Lf/D;->b:[[I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Lf/D;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v6

    move v4, v0

    move v5, v6

    invoke-static/range {v0 .. v5}, Lf/D;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v7

    move v4, v0

    move v5, v7

    invoke-static/range {v0 .. v5}, Lf/D;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v8

    move v4, v0

    move v5, v8

    invoke-static/range {v0 .. v5}, Lf/D;->a(IIIIII)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .locals 6

    const-wide/high16 v4, 0x4008

    const-wide/high16 v2, 0x3ff0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    mul-double v0, v4, p0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    mul-double v0, v4, p0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    goto :goto_0
.end method

.method private static a(DDD)I
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v0, v2

    if-lez v6, :cond_3

    cmpl-double p2, v0, v4

    if-lez p2, :cond_1

    const-wide/16 p2, 0x0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x3

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    cmpg-double p0, p4, p0

    if-gez p0, :cond_2

    const/4 p0, 0x5

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    cmpl-double p0, v2, v4

    if-lez p0, :cond_5

    const-wide/16 p0, 0x0

    cmpg-double p0, p2, p0

    if-gez p0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 p0, 0x0

    cmpg-double p0, p4, p0

    if-gez p0, :cond_6

    const/4 p0, 0x5

    goto :goto_0

    :cond_6
    const/4 p0, 0x2

    goto :goto_0
.end method

.method private static a([JIIII)I
    .locals 7

    mul-int/lit8 v0, p3, 0x4

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr v0, p4

    mul-int/lit8 v1, p3, 0x4

    shr-int v1, p2, v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget-object v1, Lf/D;->c:[I

    aget v0, v1, v0

    shr-int/lit8 v1, p3, 0x2

    aget-wide v2, p0, v1

    int-to-long v4, v0

    const/4 v6, 0x2

    shr-long/2addr v4, v6

    and-int/lit8 v6, p3, 0x3

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static a(J)J
    .locals 2

    const-wide/high16 v0, -0x8000

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static a(Lf/h;)J
    .locals 14

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lf/h;->d()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lf/D;->a(DDD)I

    move-result v6

    move-wide v7, v0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v6 .. v12}, Lf/D;->a(IDDD)[D

    move-result-object p0

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lf/D;->a(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lf/D;->b(D)I

    move-result v0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lf/D;->a(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lf/D;->b(D)I

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    shl-int/lit8 v3, v6, 0x1c

    int-to-long v3, v3

    aput-wide v3, v1, v2

    and-int/lit8 v2, v6, 0x1

    const/4 v3, 0x7

    move v13, v3

    move v3, v2

    move v2, v13

    :goto_0
    if-ltz v2, :cond_0

    invoke-static {v1, v0, p0, v2, v3}, Lf/D;->a([JIIII)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    aget-wide v2, v1, p0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    const/4 p0, 0x0

    aget-wide v0, v1, p0

    add-long/2addr v0, v2

    const/4 p0, 0x1

    shl-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(IIIIII)V
    .locals 11

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    shl-int/lit8 p0, p1, 0x4

    add-int/2addr p0, p2

    sget-object p1, Lf/D;->c:[I

    shl-int/lit8 p2, p0, 0x2

    add-int/2addr p2, p3

    shl-int/lit8 v0, p4, 0x2

    add-int v0, v0, p5

    aput v0, p1, p2

    sget-object p1, Lf/D;->d:[I

    shl-int/lit8 p2, p4, 0x2

    add-int/2addr p2, p3

    shl-int/lit8 p0, p0, 0x2

    add-int p0, p0, p5

    aput p0, p1, p2

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p0, 0x1

    shl-int/lit8 p0, p1, 0x1

    shl-int/lit8 p1, p2, 0x1

    shl-int/lit8 v4, p4, 0x2

    sget-object p2, Lf/D;->b:[[I

    aget-object p2, p2, p5

    const/4 p4, 0x0

    aget p4, p2, p4

    ushr-int/lit8 p4, p4, 0x1

    add-int v1, p0, p4

    const/4 p4, 0x0

    aget p4, p2, p4

    and-int/lit8 p4, p4, 0x1

    add-int v2, p1, p4

    sget-object p4, Lf/D;->a:[I

    const/4 v3, 0x0

    aget p4, p4, v3

    xor-int v5, p5, p4

    move v3, p3

    invoke-static/range {v0 .. v5}, Lf/D;->a(IIIIII)V

    const/4 p4, 0x1

    aget p4, p2, p4

    ushr-int/lit8 p4, p4, 0x1

    add-int v6, p0, p4

    const/4 p4, 0x1

    aget p4, p2, p4

    and-int/lit8 p4, p4, 0x1

    add-int v7, p1, p4

    add-int/lit8 v9, v4, 0x1

    sget-object p4, Lf/D;->a:[I

    const/4 v1, 0x1

    aget p4, p4, v1

    xor-int v10, p5, p4

    move v5, v0

    move v8, p3

    invoke-static/range {v5 .. v10}, Lf/D;->a(IIIIII)V

    const/4 p4, 0x2

    aget p4, p2, p4

    ushr-int/lit8 p4, p4, 0x1

    add-int v6, p0, p4

    const/4 p4, 0x2

    aget p4, p2, p4

    and-int/lit8 p4, p4, 0x1

    add-int v7, p1, p4

    add-int/lit8 v9, v4, 0x2

    sget-object p4, Lf/D;->a:[I

    const/4 v1, 0x2

    aget p4, p4, v1

    xor-int v10, p5, p4

    move v5, v0

    move v8, p3

    invoke-static/range {v5 .. v10}, Lf/D;->a(IIIIII)V

    const/4 p4, 0x3

    aget p4, p2, p4

    ushr-int/lit8 p4, p4, 0x1

    add-int v1, p0, p4

    const/4 p0, 0x3

    aget p0, p2, p0

    and-int/lit8 p0, p0, 0x1

    add-int v2, p1, p0

    add-int/lit8 v4, v4, 0x3

    sget-object p0, Lf/D;->a:[I

    const/4 p1, 0x3

    aget p0, p0, p1

    xor-int v5, p5, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lf/D;->a(IIIIII)V

    goto :goto_0
.end method

.method private static a(IDDD)[D
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [D

    packed-switch p0, :pswitch_data_0

    neg-double v1, p3

    div-double/2addr v1, p5

    aput-wide v1, v0, v3

    neg-double v1, p1

    div-double/2addr v1, p5

    aput-wide v1, v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    div-double v1, p3, p1

    aput-wide v1, v0, v3

    div-double v1, p5, p1

    aput-wide v1, v0, v4

    goto :goto_0

    :pswitch_1
    neg-double v1, p1

    div-double/2addr v1, p3

    aput-wide v1, v0, v3

    div-double v1, p5, p3

    aput-wide v1, v0, v4

    goto :goto_0

    :pswitch_2
    neg-double v1, p1

    div-double/2addr v1, p5

    aput-wide v1, v0, v3

    neg-double v1, p3

    div-double/2addr v1, p5

    aput-wide v1, v0, v4

    goto :goto_0

    :pswitch_3
    div-double v1, p5, p1

    aput-wide v1, v0, v3

    div-double v1, p3, p1

    aput-wide v1, v0, v4

    goto :goto_0

    :pswitch_4
    div-double v1, p5, p3

    aput-wide v1, v0, v3

    neg-double v1, p1

    div-double/2addr v1, p3

    aput-wide v1, v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(D)I
    .locals 6

    const/4 v0, 0x0

    const v1, 0x3fffffff

    const-wide/high16 v2, 0x41c0

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v4, p0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static b(J)J
    .locals 2

    const-wide/high16 v0, -0x8000

    sub-long v0, p0, v0

    return-wide v0
.end method
