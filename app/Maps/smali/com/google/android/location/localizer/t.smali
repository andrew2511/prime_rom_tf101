.class Lcom/google/android/location/localizer/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/localizer/b;


# static fields
.field static final a:[[I

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/util/Set;

.field private static final d:Lcom/google/android/location/localizer/b;

.field private static final g:Ljava/util/Comparator;

.field private static final h:Ljava/util/Comparator;


# instance fields
.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/location/localizer/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x78

    const-class v0, Lcom/google/android/location/localizer/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/t;->b:Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/t;->c:Ljava/util/Set;

    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/android/location/localizer/t;->a:[[I

    new-instance v0, Lcom/google/android/location/localizer/p;

    invoke-direct {v0}, Lcom/google/android/location/localizer/p;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/t;->d:Lcom/google/android/location/localizer/b;

    move v0, v5

    :goto_0
    if-ge v0, v4, :cond_1

    move v1, v5

    :goto_1
    if-ge v1, v4, :cond_0

    sget-object v2, Lcom/google/android/location/localizer/t;->a:[[I

    aget-object v2, v2, v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/t;->a(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/location/localizer/d;

    invoke-direct {v0}, Lcom/google/android/location/localizer/d;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/t;->g:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/location/localizer/c;

    invoke-direct {v0}, Lcom/google/android/location/localizer/c;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/t;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/location/localizer/o;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/localizer/t;->f:Lcom/google/android/location/localizer/o;

    iput-object p1, p0, Lcom/google/android/location/localizer/t;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(LW/r;)D
    .locals 2

    invoke-static {p0}, Lcom/google/android/location/localizer/t;->b(LW/r;)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(II)I
    .locals 6

    const-wide/high16 v4, 0x400e

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private a(Ljava/util/Map;)LW/o;
    .locals 7

    const-wide/16 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/r;

    iget v5, p0, LW/r;->a:I

    invoke-static {v5}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    iget v5, p0, LW/r;->b:I

    invoke-static {v5}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v5

    add-double/2addr v1, v5

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v5, v0

    div-double v0, v1, v5

    new-instance v2, LW/o;

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/k;->b(D)I

    move-result v3

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->b(D)I

    move-result v0

    const v1, 0x124f8

    invoke-direct {v2, v3, v0, v1}, LW/o;-><init>(III)V

    return-object v2
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;LW/o;Lcom/google/android/location/localizer/o;)LW/p;
    .locals 11

    const-wide/16 v9, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v3, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/r;

    iget-object v5, v0, LW/r;->i:LW/j;

    sget-object v8, LW/j;->d:LW/j;

    if-ne v5, v8, :cond_0

    new-instance v5, LW/p;

    invoke-direct {v5, v1, v0}, LW/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/location/localizer/t;->b(LW/r;)D

    move-result-wide v0

    add-double/2addr v0, v3

    :goto_1
    move-wide v3, v0

    goto :goto_0

    :cond_0
    sget-object v8, LW/j;->c:LW/j;

    if-ne v5, v8, :cond_1

    new-instance v5, LW/p;

    invoke-direct {v5, v1, v0}, LW/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-wide v0, v3

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/location/localizer/t;->b:Ljava/util/logging/Logger;

    const-string v1, "No lre nor minK results found. Returning matrixCenter"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-instance v0, LW/p;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p3, v1}, LW/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object v0

    :cond_3
    sget-object v0, Lcom/google/android/location/localizer/t;->h:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/p;

    iget-object v2, v0, LW/p;->b:Ljava/lang/Object;

    check-cast v2, LW/r;

    invoke-static {v2}, Lcom/google/android/location/localizer/t;->b(LW/r;)D

    move-result-wide v3

    add-double/2addr v9, v3

    iget-object v1, v0, LW/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/localizer/t;->a(Ljava/lang/Long;LW/r;ILW/o;Lcom/google/android/location/localizer/o;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    const-wide/high16 v1, 0x4020

    cmpg-double v1, v9, v1

    if-gez v1, :cond_5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/p;

    const/4 v8, 0x1

    iget-object v2, v0, LW/p;->b:Ljava/lang/Object;

    check-cast v2, LW/r;

    iget-object v1, v0, LW/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/localizer/t;->a(Ljava/lang/Long;LW/r;ILW/o;Lcom/google/android/location/localizer/o;)V

    move v0, v8

    goto :goto_4

    :cond_5
    move v7, v0

    const-wide v1, 0x3fd999999999999aL

    const-wide/high16 v4, 0x400e

    move-object v0, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/o;->a(DLW/o;D)LW/t;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/google/android/location/localizer/t;->a(LW/t;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v7, :cond_6

    iget v1, v0, LW/t;->c:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, LW/t;->c:I

    :cond_6
    invoke-virtual {v0}, LW/t;->a()LW/o;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/localizer/t;->a(LW/o;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/google/android/location/localizer/t;->b:Ljava/util/logging/Logger;

    const-string v1, "Not returning location as no APs within 75 meters of location."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_7
    const-wide v1, 0x3fd3333333333333L

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, LW/p;->a(Ljava/lang/Object;Ljava/lang/Object;)LW/p;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private a(I)Lcom/google/android/location/localizer/DistanceDist;
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/location/localizer/DistanceDist;

    invoke-direct {v0, p1, v1, v1, v3}, Lcom/google/android/location/localizer/DistanceDist;-><init>(III[F)V

    iget-object v1, p0, Lcom/google/android/location/localizer/t;->e:Ljava/util/List;

    sget-object v2, Lcom/google/android/location/localizer/t;->g:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/location/localizer/t;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/localizer/DistanceDist;

    iget v0, p0, Lcom/google/android/location/localizer/DistanceDist;->b:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Lcom/google/android/location/localizer/f;
    .locals 4

    new-instance v0, Lcom/google/android/location/localizer/f;

    invoke-direct {v0}, Lcom/google/android/location/localizer/f;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/localizer/f;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()Lcom/google/android/location/localizer/u;
    .locals 4

    new-instance v0, Lcom/google/android/location/localizer/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/location/localizer/t;->c:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/u;-><init>(LW/o;ILjava/util/Set;)V

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/Long;LW/r;ILW/o;Lcom/google/android/location/localizer/o;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->c(LW/o;LW/o;)D

    move-result-wide v5

    const-wide/high16 v7, 0x400e

    div-double/2addr v5, v7

    double-to-int v5, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->d(LW/o;LW/o;)D

    move-result-wide v6

    const-wide/high16 v8, 0x400e

    div-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/t;->a(I)Lcom/google/android/location/localizer/DistanceDist;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_a

    iget-object v11, v7, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    array-length v11, v11

    if-lez v11, :cond_a

    iget-object v8, v7, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    array-length v8, v8

    iget v9, v7, Lcom/google/android/location/localizer/DistanceDist;->c:I

    const/4 v10, 0x0

    move/from16 v18, v10

    move v10, v8

    move/from16 v8, v18

    :goto_0
    const/16 v11, -0x28

    :goto_1
    const/16 v12, 0x28

    if-gt v11, v12, :cond_9

    sub-int v12, v11, v5

    if-gez v12, :cond_0

    neg-int v12, v12

    :cond_0
    const/16 v13, -0x28

    :goto_2
    const/16 v14, 0x28

    if-gt v13, v14, :cond_8

    sub-int v14, v13, v6

    if-gez v14, :cond_1

    neg-int v14, v14

    :cond_1
    const/16 v15, 0x78

    if-ge v14, v15, :cond_2

    const/16 v15, 0x78

    if-lt v12, v15, :cond_3

    :cond_2
    invoke-static {v12, v14}, Lcom/google/android/location/localizer/t;->a(II)I

    move-result v14

    :goto_3
    if-eqz v8, :cond_5

    int-to-double v14, v14

    const-wide v16, 0x4052c00000000000L

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    const-wide/high16 v14, 0x3fe0

    :goto_4
    move-object/from16 v0, p5

    move v1, v11

    move v2, v13

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/location/localizer/o;->a(IID)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    sget-object v15, Lcom/google/android/location/localizer/t;->a:[[I

    aget-object v15, v15, v12

    aget v14, v15, v14

    goto :goto_3

    :cond_4
    const-wide v14, 0x3fa999999999999aL

    goto :goto_4

    :cond_5
    if-ge v14, v9, :cond_6

    iget-object v14, v7, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    float-to-double v14, v14

    goto :goto_4

    :cond_6
    add-int v15, v9, v10

    if-lt v14, v15, :cond_7

    iget-object v14, v7, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    const/4 v15, 0x1

    sub-int v15, v10, v15

    aget v14, v14, v15

    float-to-double v14, v14

    goto :goto_4

    :cond_7
    iget-object v15, v7, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    sub-int/2addr v14, v9

    aget v14, v15, v14

    float-to-double v14, v14

    goto :goto_4

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    move/from16 v18, v10

    move v10, v8

    move/from16 v8, v18

    goto :goto_0
.end method

.method private a(LW/o;Ljava/util/Map;)Z
    .locals 5

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/r;

    invoke-static {p1, p0}, Lcom/google/android/location/localizer/k;->b(LW/o;LW/o;)D

    move-result-wide v1

    const-wide v3, 0x4052c00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(LW/r;LW/r;)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/location/localizer/k;->a(LW/o;LW/o;)I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(LW/r;Lcom/google/android/location/localizer/f;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/p;

    iget-object v0, v0, LW/p;->b:Ljava/lang/Object;

    check-cast v0, LW/r;

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/localizer/t;->a(LW/r;LW/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(LW/t;Ljava/util/List;)Z
    .locals 5

    const-wide/16 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/p;

    iget-object p0, p0, LW/p;->b:Ljava/lang/Object;

    check-cast p0, LW/r;

    iget v3, p0, LW/r;->h:I

    const v4, 0x9c40

    if-ge v3, v4, :cond_0

    invoke-static {p1, p0}, Lcom/google/android/location/localizer/k;->b(LW/t;LW/o;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff3333333333333L

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p1, LW/t;->c:I

    if-le v0, v1, :cond_2

    iput v0, p1, LW/t;->c:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(LW/r;)D
    .locals 4

    iget v0, p0, LW/r;->h:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    div-double v0, v2, v0

    return-wide v0
.end method

.method private b(Ljava/util/Map;)Ljava/util/Set;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/t;->c(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/t;->d(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private c(Ljava/util/Map;)Ljava/util/Set;
    .locals 2

    sget-object v0, Lcom/google/android/location/localizer/t;->d:Lcom/google/android/location/localizer/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/location/localizer/b;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/u;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private d(Ljava/util/Map;)Ljava/util/Set;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    new-instance v2, Lcom/google/android/location/localizer/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, LW/p;->a(Ljava/lang/Object;Ljava/lang/Object;)LW/p;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/location/localizer/f;-><init>(LW/p;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW/r;

    invoke-direct {p0, v2, v1}, Lcom/google/android/location/localizer/t;->a(LW/r;Lcom/google/android/location/localizer/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lcom/google/android/location/localizer/t;->a(Ljava/util/List;)Lcom/google/android/location/localizer/f;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/location/localizer/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/localizer/j;-><init>(Lcom/google/android/location/localizer/t;Lcom/google/android/location/localizer/d;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/localizer/f;

    invoke-virtual {p0}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/localizer/f;

    invoke-virtual {p0}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/p;

    iget-object v5, p0, LW/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/t;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/location/localizer/t;->a()Lcom/google/android/location/localizer/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/location/localizer/t;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/localizer/t;->f:Lcom/google/android/location/localizer/o;

    invoke-virtual {v2}, Lcom/google/android/location/localizer/o;->a()V

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/t;->a(Ljava/util/Map;)LW/o;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/localizer/t;->f:Lcom/google/android/location/localizer/o;

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/google/android/location/localizer/t;->a(Ljava/util/Map;Ljava/util/Map;LW/o;Lcom/google/android/location/localizer/o;)LW/p;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/location/localizer/t;->a()Lcom/google/android/location/localizer/u;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v2, LW/p;->a:Ljava/lang/Object;

    check-cast v0, LW/o;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/location/localizer/t;->b:Ljava/util/logging/Logger;

    const-string v1, "No location found by lre localizer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/location/localizer/t;->a()Lcom/google/android/location/localizer/u;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p0, v2, LW/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/16 v4, 0x50

    const-wide v5, 0x3fd3333333333333L

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_3

    const/16 v2, 0x4e

    :goto_1
    new-instance v3, Lcom/google/android/location/localizer/u;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/location/localizer/u;-><init>(LW/o;ILjava/util/Set;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method
