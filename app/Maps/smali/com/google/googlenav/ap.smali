.class public Lcom/google/googlenav/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 24

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Law/e;->c(I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    div-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_0

    new-array v4, v3, [J

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ap;->a:[J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    :goto_0
    if-ge v4, v3, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v7, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v9, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v11, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v15, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v6, 0x38

    shl-long v21, v21, v6

    const/16 v6, 0x30

    shl-long v19, v19, v6

    or-long v19, v19, v21

    const/16 v6, 0x28

    shl-long v17, v17, v6

    or-long v17, v17, v19

    const/16 v6, 0x20

    shl-long/2addr v15, v6

    or-long v15, v15, v17

    const/16 v6, 0x18

    shl-long/2addr v13, v6

    or-long/2addr v13, v15

    const/16 v6, 0x10

    shl-long/2addr v11, v6

    or-long/2addr v11, v13

    const/16 v6, 0x8

    shl-long/2addr v9, v6

    or-long/2addr v9, v11

    or-long v6, v9, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ap;->a:[J

    move-object v8, v0

    const-wide/high16 v9, -0x8000

    add-long/2addr v6, v9

    aput-wide v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(JI[B)V
    .locals 10

    const/16 v7, 0x8

    const/4 v0, 0x0

    move v1, p3

    move-wide v2, p1

    :goto_0
    if-ge v0, v7, :cond_0

    add-int/lit8 v4, v1, 0x1

    const-wide/16 v5, 0xff

    and-long/2addr v5, v2

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    shr-long v1, v2, v7

    add-int/lit8 v0, v0, 0x1

    move-wide v8, v1

    move-wide v2, v8

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Law/e;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/j;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/ap;->a:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ap;->a:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/googlenav/ap;->a:[J

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/google/googlenav/ap;->a:[J

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Lf/D;->b(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3, v1}, Lcom/google/googlenav/ap;->a(JI[B)V

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->b(I[B)V

    :cond_1
    return-object v0
.end method

.method public b()[J
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ap;->a:[J

    return-object v0
.end method
