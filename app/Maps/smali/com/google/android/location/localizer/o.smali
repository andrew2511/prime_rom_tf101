.class Lcom/google/android/location/localizer/o;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/Comparator;

.field private static final e:Ljava/util/Comparator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/location/localizer/m;

    invoke-direct {v0}, Lcom/google/android/location/localizer/m;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/o;->d:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/location/localizer/l;

    invoke-direct {v0}, Lcom/google/android/location/localizer/l;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/o;->e:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/location/localizer/o;->b:I

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/o;->a:I

    iget v0, p0, Lcom/google/android/location/localizer/o;->a:I

    iget v1, p0, Lcom/google/android/location/localizer/o;->a:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/google/android/location/localizer/o;->c:[[D

    invoke-virtual {p0}, Lcom/google/android/location/localizer/o;->a()V

    return-void
.end method

.method private a(II)Z
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/o;->b:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/o;->b:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/o;->b:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/o;->b:I

    neg-int v0, v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 10

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    move-wide v8, v0

    move-wide v1, v8

    move v0, v7

    :goto_0
    iget v3, p0, Lcom/google/android/location/localizer/o;->a:I

    if-ge v0, v3, :cond_1

    move-wide v8, v1

    move-wide v2, v8

    move v1, v7

    :goto_1
    iget v4, p0, Lcom/google/android/location/localizer/o;->a:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/location/localizer/o;->c:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-wide v1, v2

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_2
    iget v3, p0, Lcom/google/android/location/localizer/o;->a:I

    if-ge v0, v3, :cond_3

    move v3, v7

    :goto_3
    iget v4, p0, Lcom/google/android/location/localizer/o;->a:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/location/localizer/o;->c:[[D

    aget-object v4, v4, v0

    aget-wide v5, v4, v3

    div-double/2addr v5, v1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public a(DLW/o;D)LW/t;
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/localizer/o;->b()V

    new-instance v4, Ljava/util/PriorityQueue;

    const/16 v3, 0x64

    sget-object v5, Lcom/google/android/location/localizer/o;->e:Ljava/util/Comparator;

    invoke-direct {v4, v3, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/o;->a:I

    move v3, v0

    if-ge v5, v3, :cond_3

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/o;->a:I

    move v3, v0

    if-ge v6, v3, :cond_2

    new-instance v7, Lcom/google/android/location/localizer/r;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/localizer/o;->c:[[D

    move-object v3, v0

    aget-object v3, v3, v5

    aget-wide v8, v3, v6

    invoke-direct {v7, v5, v6, v8, v9}, Lcom/google/android/location/localizer/r;-><init>(IID)V

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    const/16 v8, 0x64

    if-ge v3, v8, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/localizer/r;

    invoke-static {v3}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v8

    invoke-static {v7}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v10

    cmpg-double v3, v8, v10

    if-gez v3, :cond_0

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_3
    const/16 v3, 0x64

    new-array v3, v3, [Lcom/google/android/location/localizer/r;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/location/localizer/r;

    sget-object v4, Lcom/google/android/location/localizer/o;->d:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v14, v6

    move-wide v15, v4

    move-wide v5, v15

    move v4, v14

    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_4

    cmpg-double v7, v5, p1

    if-gez v7, :cond_4

    aget-object v7, v3, v4

    invoke-static {v7}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    const/4 v5, 0x1

    sub-int v5, v4, v5

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v5

    const/4 v7, 0x2

    sub-int v7, v4, v7

    aget-object v7, v3, v7

    invoke-static {v7}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    sub-int v5, v4, v5

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v5

    const/4 v7, 0x1

    sub-int v7, v4, v7

    :goto_4
    if-ltz v7, :cond_5

    aget-object v8, v3, v7

    invoke-static {v8}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-eqz v8, :cond_7

    :cond_5
    if-ltz v7, :cond_6

    move v4, v7

    :cond_6
    new-array v5, v4, [D

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v4, :cond_8

    aget-object v8, v3, v7

    invoke-virtual {v8}, Lcom/google/android/location/localizer/r;->b()I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/o;->b:I

    move v11, v0

    int-to-double v11, v11

    mul-double v11, v11, p4

    sub-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v8}, Lcom/google/android/location/localizer/r;->a()I

    move-result v10

    int-to-double v10, v10

    mul-double v10, v10, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/o;->b:I

    move v12, v0

    int-to-double v12, v12

    mul-double v12, v12, p4

    sub-double/2addr v10, v12

    double-to-int v10, v10

    move v0, v9

    move v1, v10

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/google/android/location/localizer/k;->a(IILW/o;)LW/u;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v8

    aput-wide v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_8
    new-instance v7, Lcom/google/android/location/localizer/n;

    invoke-direct {v7}, Lcom/google/android/location/localizer/n;-><init>()V

    invoke-virtual {v7, v6, v5}, Lcom/google/android/location/localizer/n;->a(Ljava/util/List;[D)LW/u;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(LW/u;LW/o;)D

    move-result-wide v6

    const-wide/high16 v8, 0x400e

    div-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/o;->b:I

    move v8, v0

    int-to-double v8, v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->b(LW/u;LW/o;)D

    move-result-wide v7

    const-wide/high16 v9, 0x400e

    div-double/2addr v7, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/o;->b:I

    move v9, v0

    int-to-double v9, v9

    add-double/2addr v7, v9

    double-to-int v7, v7

    const/high16 v8, -0x8000

    const/4 v9, 0x0

    move v14, v9

    move v9, v8

    move v8, v14

    :goto_6
    if-ge v8, v4, :cond_c

    aget-object v10, v3, v8

    invoke-static {v10}, Lcom/google/android/location/localizer/r;->b(Lcom/google/android/location/localizer/r;)I

    move-result v11

    sub-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10}, Lcom/google/android/location/localizer/r;->c(Lcom/google/android/location/localizer/r;)I

    move-result v10

    sub-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v12, 0x78

    if-ge v11, v12, :cond_9

    const/16 v12, 0x78

    if-lt v10, v12, :cond_b

    :cond_9
    invoke-static {v10, v11}, Lcom/google/android/location/localizer/t;->a(II)I

    move-result v10

    :goto_7
    if-le v10, v9, :cond_a

    move v9, v10

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    sget-object v12, Lcom/google/android/location/localizer/t;->a:[[I

    aget-object v10, v12, v10

    aget v10, v10, v11

    goto :goto_7

    :cond_c
    const/16 v3, 0x14

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v4, LW/t;

    invoke-direct {v4}, LW/t;-><init>()V

    invoke-virtual {v4, v5}, LW/t;->a(LW/u;)LW/t;

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v4, LW/t;->c:I

    return-object v4
.end method

.method a()V
    .locals 6

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    iget v1, p0, Lcom/google/android/location/localizer/o;->a:I

    if-ge v0, v1, :cond_1

    move v1, v5

    :goto_1
    iget v2, p0, Lcom/google/android/location/localizer/o;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/localizer/o;->c:[[D

    aget-object v2, v2, v0

    const-wide/high16 v3, 0x3ff0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IID)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/localizer/o;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/location/localizer/o;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/location/localizer/o;->b:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/location/localizer/o;->c:[[D

    aget-object v0, v2, v0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059

    mul-double/2addr v4, p3

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method
