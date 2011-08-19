.class public Lcom/google/android/maps/driveabout/vector/cs;
.super Ljava/lang/Object;


# static fields
.field private static final a:F

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field private static final p:[[I


# instance fields
.field private final b:LG/Q;

.field private final c:LG/Q;

.field private final d:LG/Q;

.field private final e:LG/Q;

.field private final f:LG/Q;

.field private final g:LG/Q;

.field private final h:LG/Q;

.field private final i:LG/Q;

.field private final j:LG/Q;

.field private final k:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->l:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->m:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->n:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->o:[I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->p:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->b:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->c:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->f:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->h:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->i:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->j:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->k:LG/Q;

    return-void
.end method

.method public static a(LG/m;)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method private a(LG/Q;LG/Q;FIZLcom/google/android/maps/driveabout/vector/br;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    invoke-static {p2, p1, v0}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v0, p3, v1}, LG/H;->a(LG/Q;FLG/Q;)V

    invoke-static {p1, v1, v0}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {p1, v1, v0}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {p2, v1, v0}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {p2, v1, v0}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    if-eqz p5, :cond_0

    invoke-virtual {p6, p2, p4}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    :cond_0
    return-void
.end method

.method private static a(I)[I
    .locals 7

    const v6, 0x8000

    const/high16 v5, 0x1

    const/4 v4, 0x0

    mul-int/lit8 v0, p0, 0x5

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    div-int v1, v6, p0

    move v2, v1

    move v1, v4

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aput v4, v0, v1

    add-int/lit8 v3, v1, 0x1

    aput v2, v0, v3

    add-int/lit8 v3, v1, 0x2

    aput v5, v0, v3

    add-int/lit8 v3, v1, 0x3

    aput v2, v0, v3

    add-int/lit8 v3, v1, 0x4

    aput v5, v0, v3

    add-int/lit8 v3, v1, 0x5

    aput v2, v0, v3

    add-int/lit8 v3, v1, 0x6

    aput v4, v0, v3

    add-int/lit8 v3, v1, 0x7

    aput v2, v0, v3

    add-int/lit8 v3, v1, 0x8

    aput v6, v0, v3

    add-int/lit8 v3, v1, 0x9

    aput v2, v0, v3

    div-int v3, v5, p0

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(LG/m;)I
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private b(LG/m;FLG/Q;ILcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/az;Lcom/google/android/maps/driveabout/vector/cq;)V
    .locals 14

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cs;->b:LG/Q;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cs;->c:LG/Q;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/cs;->f:LG/Q;

    iget-object v11, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:LG/Q;

    iget-object v12, p0, Lcom/google/android/maps/driveabout/vector/cs;->h:LG/Q;

    const/4 v13, 0x0

    move-object v0, p1

    move v1, v13

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, LG/m;->a(ILG/Q;LG/Q;)V

    const/4 v13, 0x1

    move-object v0, p1

    move v1, v13

    move-object/from16 v2, p3

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, LG/m;->a(ILG/Q;LG/Q;)V

    invoke-static {v7, v6, v8}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object v0, v8

    move/from16 v1, p2

    move-object v2, v9

    invoke-static {v0, v1, v2}, LG/H;->a(LG/Q;FLG/Q;)V

    invoke-static {v9, v10}, LG/H;->a(LG/Q;LG/Q;)V

    invoke-static {v6, v10, v6}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v7, v10, v7}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v6, v9, v12}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v6, v9, v12}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v6, v7, v11}, LG/H;->e(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v11, v9, v12}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v11, v9, v12}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v7, v9, v12}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v7, v9, v12}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    const/high16 v6, -0x4180

    invoke-virtual {v8}, LG/Q;->i()F

    move-result v7

    div-float v7, v7, p2

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x4780

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x1

    move-object/from16 v0, p6

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    const/high16 v7, 0x1

    const/high16 v8, 0x1

    move-object/from16 v0, p6

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    const/4 v7, 0x0

    move-object/from16 v0, p6

    move v1, v7

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    const/high16 v7, 0x1

    move-object/from16 v0, p6

    move v1, v7

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    const/4 v6, 0x0

    const/high16 v7, 0x1

    move-object/from16 v0, p6

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    const/high16 v6, 0x1

    const/high16 v7, 0x1

    move-object/from16 v0, p6

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v5, 0x3

    move-object/from16 v0, p7

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    add-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v5, 0x3

    add-int/lit8 v8, v5, 0x4

    add-int/lit8 v5, v5, 0x5

    move-object/from16 v0, p7

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    return-void
.end method

.method private static b(I)[I
    .locals 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->p:[[I

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->p:[[I

    const/4 v1, 0x1

    shl-int/2addr v1, p0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cs;->a(I)[I

    move-result-object v1

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->p:[[I

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public a(IZI[ILcom/google/android/maps/driveabout/vector/az;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    sub-int v0, p1, v3

    if-eqz p2, :cond_1

    const/4 v1, 0x5

    :goto_0
    mul-int/2addr v0, v1

    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/vector/az;->c()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p5, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/cs;->b(I)[I

    move-result-object v0

    if-eqz p4, :cond_0

    array-length v2, p4

    if-ne v2, v3, :cond_3

    :cond_0
    if-nez p4, :cond_2

    move v2, v4

    :goto_1
    if-ge v3, p1, :cond_4

    mul-int/lit8 v4, v2, 0x5

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {p5, v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/az;->a([III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    aget v2, p4, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_2
    if-ge v2, p1, :cond_4

    aget v3, p4, v2

    mul-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p5, v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/az;->a([III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(LG/m;FLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;Lcom/google/android/maps/driveabout/vector/az;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, LG/m;->b()I

    move-result v4

    const/4 v5, 0x1

    sub-int v5, v4, v5

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v6

    mul-int/lit8 v7, v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->b:LG/Q;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->c:LG/Q;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->f:LG/Q;

    move-object v12, v0

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v13

    add-int/2addr v13, v7

    move-object/from16 v0, p6

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;->a(I)V

    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/az;->c()I

    move-result v13

    add-int/2addr v13, v7

    move-object/from16 v0, p8

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/az;->c()I

    move-result v13

    add-int/2addr v7, v13

    move-object/from16 v0, p9

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object v0, v8

    move-object/from16 v1, p3

    move-object v2, v8

    invoke-static {v0, v1, v2}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    const/4 v7, 0x0

    const/4 v13, 0x1

    move/from16 v17, v13

    move-object v13, v8

    move v8, v7

    move/from16 v7, v17

    :goto_0
    if-ge v7, v4, :cond_3

    move-object/from16 v0, p1

    move v1, v7

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object v0, v9

    move-object/from16 v1, p3

    move-object v2, v9

    invoke-static {v0, v1, v2}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v9, v13, v10}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move/from16 v0, p2

    neg-float v0, v0

    move v14, v0

    invoke-static {v10, v14, v11}, LG/H;->a(LG/Q;FLG/Q;)V

    move-object/from16 v0, p6

    move-object v1, v13

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v13, v11, v12}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p6

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v9, v11, v12}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p6

    move-object v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    move-object/from16 v0, p6

    move-object v1, v9

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    if-eqz p8, :cond_2

    invoke-virtual {v10}, LG/Q;->i()F

    move-result v14

    move/from16 v0, p4

    int-to-float v0, v0

    move v15, v0

    div-float/2addr v14, v15

    mul-float v14, v14, p5

    const/4 v15, 0x0

    move-object/from16 v0, p8

    move v1, v15

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    const/high16 v15, 0x3f80

    move-object/from16 v0, p8

    move v1, v15

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    if-eqz p9, :cond_1

    const/4 v15, 0x0

    sget v16, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    mul-float v16, v16, v8

    move-object/from16 v0, p9

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    sget v15, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    sget v16, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    mul-float v16, v16, v8

    move-object/from16 v0, p9

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    :cond_1
    add-float/2addr v8, v14

    const/high16 v14, 0x3f80

    move-object/from16 v0, p8

    move v1, v14

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    const/4 v14, 0x0

    move-object/from16 v0, p8

    move v1, v14

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    if-eqz p9, :cond_2

    sget v14, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    sget v15, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    mul-float/2addr v15, v8

    move-object/from16 v0, p9

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    const/4 v14, 0x0

    sget v15, Lcom/google/android/maps/driveabout/vector/cs;->a:F

    mul-float/2addr v15, v8

    move-object/from16 v0, p9

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v13

    move-object v13, v9

    move-object/from16 v9, v17

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v4, v5, 0x2

    const/4 v7, 0x1

    sub-int v7, v5, v7

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/cq;->c()I

    move-result v8

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v8

    move-object/from16 v0, p7

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->f:LG/Q;

    move-object v8, v0

    const/4 v10, 0x0

    :goto_1
    mul-int/lit8 v11, v10, 0x4

    add-int/2addr v11, v6

    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_4

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v14, v11, 0x2

    move-object/from16 v0, p7

    move v1, v11

    move v2, v12

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    add-int/lit8 v12, v11, 0x2

    add-int/lit8 v14, v11, 0x3

    move-object/from16 v0, p7

    move v1, v11

    move v2, v12

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    :goto_2
    const/4 v12, 0x1

    sub-int v12, v5, v12

    if-ne v10, v12, :cond_5

    return-void

    :cond_4
    add-int/lit8 v12, v11, 0x2

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p7

    move v1, v11

    move v2, v12

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v14, v11, 0x2

    move-object/from16 v0, p7

    move v1, v11

    move v2, v12

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    move v1, v10

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    invoke-static {v9, v13, v7}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v4, v9, v8}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v7, v8}, LG/H;->c(LG/Q;LG/Q;)J

    move-result-wide v14

    long-to-float v12, v14

    mul-float v12, v12, p2

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_6

    add-int/lit8 v12, v11, 0x4

    const/4 v14, 0x0

    cmpl-float v14, p2, v14

    if-lez v14, :cond_7

    add-int/lit8 v14, v11, 0x3

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p7

    move v1, v14

    move v2, v11

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    :cond_6
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v14, v11, 0x2

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p7

    move v1, v14

    move v2, v11

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    goto :goto_3
.end method

.method public a(LG/m;FLG/Q;ILcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/az;Lcom/google/android/maps/driveabout/vector/cq;)V
    .locals 25

    const/high16 v5, 0x3f80

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, LG/m;->b()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-direct/range {p0 .. p7}, Lcom/google/android/maps/driveabout/vector/cs;->b(LG/m;FLG/Q;ILcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/az;Lcom/google/android/maps/driveabout/vector/cq;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->b:LG/Q;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->c:LG/Q;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->f:LG/Q;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->g:LG/Q;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->h:LG/Q;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->i:LG/Q;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->j:LG/Q;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->k:LG/Q;

    move-object v15, v0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, LG/m;->a(ILG/Q;LG/Q;)V

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p3

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, LG/m;->a(ILG/Q;LG/Q;)V

    invoke-static {v7, v6, v9}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object v0, v9

    move/from16 v1, p2

    move-object v2, v11

    invoke-static {v0, v1, v2}, LG/H;->a(LG/Q;FLG/Q;)V

    invoke-static {v11, v13}, LG/H;->a(LG/Q;LG/Q;)V

    invoke-static {v6, v13, v6}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v6, v11, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v6, v11, v15}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v6, v13, v6}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v6, v11, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v6, v11, v15}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    sget-object v17, Lcom/google/android/maps/driveabout/vector/cs;->l:[I

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a([I)V

    add-int/lit8 v17, v16, 0x1

    add-int/lit8 v18, v16, 0x2

    add-int/lit8 v19, v16, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    add-int/lit8 v17, v16, 0x2

    add-int/lit8 v18, v16, 0x3

    add-int/lit8 v19, v16, 0x4

    add-int/lit8 v20, v16, 0x5

    move-object/from16 v0, p7

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    add-int/lit8 v16, v16, 0x4

    mul-float v17, p2, p2

    const/16 v18, 0x1

    move/from16 v24, v18

    move/from16 v18, v16

    move/from16 v16, v24

    :goto_1
    const/16 v19, 0x1

    sub-int v19, v5, v19

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    add-int/lit8 v19, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, p3

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, LG/m;->a(ILG/Q;LG/Q;)V

    invoke-static {v8, v7, v10}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object v0, v10

    move/from16 v1, p2

    move-object v2, v12

    invoke-static {v0, v1, v2}, LG/H;->a(LG/Q;FLG/Q;)V

    invoke-static {v9, v10}, LG/H;->c(LG/Q;LG/Q;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_3

    const/16 v19, 0x1

    :goto_2
    const/16 v20, 0x1

    invoke-static {v11, v12, v14}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v12, v14}, LG/Q;->b(LG/Q;LG/Q;)F

    move-result v21

    const/high16 v22, 0x3f80

    cmpl-float v22, v21, v22

    if-lez v22, :cond_8

    invoke-static {v9, v10}, LG/Q;->b(LG/Q;LG/Q;)F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_8

    div-float v21, v17, v21

    move-object v0, v14

    move/from16 v1, v21

    move-object v2, v14

    invoke-static {v0, v1, v2}, LG/Q;->a(LG/Q;FLG/Q;)V

    invoke-static {v7, v14, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v7, v14, v13}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    if-eqz v19, :cond_4

    move-object/from16 v21, v15

    :goto_3
    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v22

    const/high16 v23, 0x3f00

    cmpg-float v22, v22, v23

    if-gez v22, :cond_8

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v21

    const/high16 v22, 0x3f00

    cmpg-float v21, v21, v22

    if-gez v21, :cond_8

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    move-object/from16 v0, p5

    move-object v1, v13

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    sget-object v20, Lcom/google/android/maps/driveabout/vector/cs;->n:[I

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a([I)V

    add-int/lit8 v20, v18, 0x1

    add-int/lit8 v21, v18, 0x2

    add-int/lit8 v22, v18, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    add-int/lit8 v18, v18, 0x2

    const/16 v20, 0x0

    move/from16 v24, v20

    move/from16 v20, v18

    move/from16 v18, v24

    :goto_4
    if-eqz v18, :cond_7

    invoke-static {v7, v11, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v7, v11, v15}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    move-object/from16 v0, p5

    move-object v1, v7

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v7, v12, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v7, v12, v15}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    sget-object v18, Lcom/google/android/maps/driveabout/vector/cs;->o:[I

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a([I)V

    if-eqz v19, :cond_5

    add-int/lit8 v18, v20, 0x2

    add-int/lit8 v19, v20, 0x1

    add-int/lit8 v21, v20, 0x4

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    :goto_5
    add-int/lit8 v18, v20, 0x3

    add-int/lit8 v19, v20, 0x4

    add-int/lit8 v21, v20, 0x5

    add-int/lit8 v22, v20, 0x6

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    add-int/lit8 v18, v20, 0x5

    :goto_6
    invoke-virtual {v11, v12}, LG/Q;->b(LG/Q;)V

    invoke-virtual {v9, v10}, LG/Q;->b(LG/Q;)V

    invoke-virtual {v6, v7}, LG/Q;->b(LG/Q;)V

    invoke-virtual {v7, v8}, LG/Q;->b(LG/Q;)V

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v21, v13

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v18, v20, 0x0

    add-int/lit8 v19, v20, 0x2

    add-int/lit8 v21, v20, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    goto :goto_5

    :cond_6
    invoke-static {v8, v12, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v8, v12, v15}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v12, v13}, LG/H;->a(LG/Q;LG/Q;)V

    invoke-static {v8, v13, v8}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v8, v12, v15}, LG/H;->c(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    invoke-static {v8, v12, v15}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p5

    move-object v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    sget-object v5, Lcom/google/android/maps/driveabout/vector/cs;->m:[I

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a([I)V

    add-int/lit8 v5, v18, 0x1

    add-int/lit8 v6, v18, 0x2

    add-int/lit8 v7, v18, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v18

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    goto/16 :goto_0

    :cond_7
    move/from16 v18, v20

    goto :goto_6

    :cond_8
    move/from16 v24, v20

    move/from16 v20, v18

    move/from16 v18, v24

    goto/16 :goto_4
.end method

.method public a(LG/m;FZLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, LG/m;->b()I

    move-result v11

    const/4 v4, 0x1

    sub-int v12, v11, v4

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v13

    if-eqz p3, :cond_2

    const/4 v4, 0x5

    move v14, v4

    :goto_0
    mul-int v15, v14, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->b:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->c:LG/Q;

    move-object v5, v0

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v6

    add-int/2addr v6, v15

    move-object/from16 v0, p7

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;->a(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    move-object v6, v0

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/az;->c()I

    move-result v6

    add-int/2addr v6, v15

    move-object/from16 v0, p9

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object v0, v5

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-static {v0, v1, v2}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v17, v7

    move/from16 v18, v6

    move-object v6, v4

    :goto_1
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object v0, v6

    move-object/from16 v1, p4

    move-object v2, v6

    invoke-static {v0, v1, v2}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v4, p0

    move/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p3

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/Q;LG/Q;FIZLcom/google/android/maps/driveabout/vector/br;)V

    if-eqz p9, :cond_a

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual/range {v16 .. v16}, LG/Q;->i()F

    move-result v4

    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    div-float/2addr v4, v7

    mul-float v4, v4, p6

    const/4 v7, 0x0

    move-object/from16 v0, p9

    move v1, v7

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    const/high16 v7, 0x3f80

    move-object/from16 v0, p9

    move v1, v7

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    add-float v4, v4, v18

    const/high16 v7, 0x3f80

    move-object/from16 v0, p9

    move v1, v7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    const/4 v7, 0x0

    move-object/from16 v0, p9

    move v1, v7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    if-eqz p3, :cond_1

    const/high16 v7, 0x3f00

    move-object/from16 v0, p9

    move v1, v7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    :cond_1
    :goto_2
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v7

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object v6, v5

    move-object/from16 v5, v19

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    move v14, v4

    goto/16 :goto_0

    :cond_3
    if-eqz p8, :cond_9

    add-int v4, v13, v15

    const/16 v7, 0x7fff

    if-le v4, v7, :cond_4

    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " required, but we can only store "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x7fff

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->d:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->e:LG/Q;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cs;->f:LG/Q;

    move-object v8, v0

    mul-int/lit8 v9, v12, 0x2

    const/4 v10, 0x1

    sub-int v10, v12, v10

    if-eqz p3, :cond_5

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/cq;->c()I

    move-result v11

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v11

    move-object/from16 v0, p8

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(I)V

    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v12, :cond_6

    mul-int v10, v9, v14

    add-int/2addr v10, v13

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v15, v10, 0x2

    move-object/from16 v0, p8

    move v1, v10

    move v2, v11

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v15, v10, 0x3

    move-object/from16 v0, p8

    move v1, v10

    move v2, v11

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/cq;->c()I

    move-result v10

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v10

    move-object/from16 v0, p8

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(I)V

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_9

    const/4 v9, 0x0

    :goto_5
    const/4 v10, 0x1

    sub-int v10, v12, v10

    if-ge v9, v10, :cond_9

    move-object/from16 v0, p1

    move v1, v9

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p1

    move v1, v10

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v10, v9, 0x2

    move-object/from16 v0, p1

    move v1, v10

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    invoke-static {v6, v5, v7}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v4, v6, v8}, LG/H;->d(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v7, v8}, LG/H;->c(LG/Q;LG/Q;)J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v10, v10, v14

    if-lez v10, :cond_7

    const/4 v10, 0x1

    :goto_6
    mul-int/lit8 v11, v9, 0x5

    add-int/2addr v11, v13

    add-int/lit8 v14, v11, 0x5

    if-eqz v10, :cond_8

    add-int/lit8 v10, v11, 0x2

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x4

    move-object/from16 v0, p8

    move v1, v10

    move v2, v14

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v10, v11, 0x3

    add-int/lit8 v11, v11, 0x4

    move-object/from16 v0, p8

    move v1, v10

    move v2, v11

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(III)V

    goto :goto_7

    :cond_9
    return-void

    :cond_a
    move/from16 v4, v18

    goto/16 :goto_2
.end method
