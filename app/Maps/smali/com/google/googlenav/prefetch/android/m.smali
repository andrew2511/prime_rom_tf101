.class public Lcom/google/googlenav/prefetch/android/m;
.super Ljava/lang/Object;

# interfaces
.implements LG/a;


# static fields
.field private static c:[I

.field private static d:[I


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/prefetch/android/m;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/googlenav/prefetch/android/m;->d:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/m;->b:I

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    sget-object v3, Lcom/google/googlenav/prefetch/android/m;->d:[I

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/m;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v5, Lcom/google/googlenav/prefetch/android/m;->c:[I

    invoke-static {v0, v3, v4, v1, v5}, Lcom/google/googlenav/prefetch/android/m;->a(LG/w;[ILjava/util/Queue;Ljava/util/Set;[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(I)I
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    sget-object v1, Lcom/google/googlenav/prefetch/android/m;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/googlenav/prefetch/android/m;->c:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/google/googlenav/prefetch/android/m;->d:[I

    aget v0, v1, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static a(II)I
    .locals 1

    if-ltz p0, :cond_0

    rem-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    rem-int v0, p0, p1

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private static a(LG/w;[ILjava/util/Queue;Ljava/util/Set;[I)V
    .locals 17

    invoke-static {}, Laj/a;->h()Laj/a;

    move-result-object v2

    invoke-virtual {v2}, Laj/a;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_0
    move-object/from16 v0, p4

    array-length v0, v0

    move v5, v0

    if-ge v3, v5, :cond_3

    aget v5, p4, v3

    aget v6, p1, v3

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, LG/w;->b()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual/range {p0 .. p0}, LG/w;->c()I

    move-result v9

    invoke-static {v9, v8}, Lcom/google/googlenav/prefetch/android/m;->b(II)I

    move-result v9

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    invoke-virtual/range {p0 .. p0}, LG/w;->c()I

    move-result v10

    invoke-static {v10, v8}, Lcom/google/googlenav/prefetch/android/m;->b(II)I

    move-result v10

    add-int/2addr v10, v6

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, LG/w;->d()I

    move-result v11

    invoke-static {v11, v8}, Lcom/google/googlenav/prefetch/android/m;->b(II)I

    move-result v11

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, 0x1

    invoke-virtual/range {p0 .. p0}, LG/w;->d()I

    move-result v12

    invoke-static {v12, v8}, Lcom/google/googlenav/prefetch/android/m;->b(II)I

    move-result v8

    add-int/2addr v6, v8

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v8, 0x1

    shl-int/2addr v8, v5

    move/from16 v16, v9

    move v9, v4

    move/from16 v4, v16

    :goto_1
    if-gt v4, v10, :cond_2

    move v12, v9

    move v9, v7

    move v7, v11

    :goto_2
    if-gt v7, v6, :cond_1

    invoke-static {v4, v8}, Lcom/google/googlenav/prefetch/android/m;->a(II)I

    move-result v13

    invoke-static {v7, v8}, Lcom/google/googlenav/prefetch/android/m;->a(II)I

    move-result v14

    new-instance v15, LG/w;

    invoke-direct {v15, v5, v13, v14}, LG/w;-><init>(III)V

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v13

    if-ge v13, v2, :cond_0

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v7, v9

    move v9, v12

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private static b(II)I
    .locals 6

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()LG/w;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/w;

    return-object p0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/prefetch/android/m;->b:I

    return v0
.end method
