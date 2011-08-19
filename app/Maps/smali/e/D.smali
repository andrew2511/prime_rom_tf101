.class public Le/D;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LS/c;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LS/c;->e()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LS/c;->c(I)LG/Q;

    move-result-object v0

    invoke-virtual {p0}, LS/c;->d()LG/Q;

    move-result-object v1

    invoke-static {v0, v1}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v0

    goto :goto_0
.end method

.method public static a(LS/c;LS/c;)I
    .locals 2

    invoke-static {p0}, Le/D;->a(LS/c;)F

    move-result v0

    invoke-static {p1}, Le/D;->b(LS/c;)F

    move-result v1

    sub-float v0, v1, v0

    float-to-int v0, v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    :cond_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    const/16 v1, 0x168

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static b(LS/c;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LS/c;->c(I)LG/Q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LS/c;->c(I)LG/Q;

    move-result-object v1

    invoke-static {v0, v1}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v0

    goto :goto_0
.end method

.method public static c(LS/c;)I
    .locals 5

    invoke-static {p0}, Le/D;->b(LS/c;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x4075180000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    float-to-double v1, v0

    const-wide v3, 0x4036800000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x4050e00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    float-to-double v1, v0

    const-wide v3, 0x405c200000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    float-to-double v1, v0

    const-wide v3, 0x4063b00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    float-to-double v1, v0

    const-wide v3, 0x4069500000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    float-to-double v1, v0

    const-wide v3, 0x406ef00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    float-to-double v0, v0

    const-wide v2, 0x4072480000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_0
.end method
