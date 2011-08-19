.class Lcom/google/android/location/localizer/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/localizer/b;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/location/localizer/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/p;->a:Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/p;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IILW/o;LW/o;ILW/p;)D
    .locals 12

    mul-int v9, p5, p5

    mul-int v10, p1, p1

    mul-int v11, p2, p2

    invoke-static {p3}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v1

    invoke-static {p3}, Lcom/google/android/location/localizer/k;->b(LW/o;)D

    move-result-wide v3

    move-object/from16 v0, p6

    iget-object v0, v0, LW/p;->a:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p6

    iget-object v0, v0, LW/p;->b:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/localizer/k;->b(DDDD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int v2, v1, v1

    add-int v3, v9, v10

    sub-int/2addr v3, v11

    int-to-double v3, v3

    mul-int/lit8 v5, p1, 0x2

    mul-int v5, v5, p5

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-int/2addr v2, v10

    int-to-double v5, v2

    mul-int/lit8 v2, p1, 0x2

    mul-int/2addr v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, v3

    sub-double v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private a(LW/o;LW/o;)LW/o;
    .locals 12

    invoke-static {p1, p2}, Lcom/google/android/location/localizer/k;->a(LW/o;LW/o;)I

    move-result v6

    iget v0, p1, LW/o;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v7

    iget v0, p2, LW/o;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v8

    sub-int v0, v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v6, v0, :cond_1

    if-ge v7, v8, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/localizer/p;->b(LW/o;LW/o;)D

    move-result-wide v4

    add-int v0, v6, v8

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v1, p1, LW/o;->a:I

    iget v9, p2, LW/o;->a:I

    iget v2, p1, LW/o;->b:I

    iget v10, p2, LW/o;->b:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/p;->a(IIID)LW/p;

    move-result-object v11

    const-wide v0, 0x400921fb54442d18L

    add-double/2addr v4, v0

    add-int v0, v6, v7

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/p;->a(IIID)LW/p;

    move-result-object v9

    invoke-direct {p0, v11, v9}, Lcom/google/android/location/localizer/p;->a(LW/p;LW/p;)LW/p;

    move-result-object v10

    add-int v0, v7, v8

    if-le v6, v0, :cond_2

    iget-object p0, v11, LW/p;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p0, v11, LW/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p0, v9, LW/p;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object p0, v9, LW/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->b(DDDD)D

    move-result-wide v0

    :goto_1
    new-instance v2, LW/o;

    iget-object p0, v10, LW/p;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/k;->e(D)I

    move-result v3

    iget-object p0, v10, LW/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/location/localizer/k;->e(D)I

    move-result v4

    double-to-int v0, v0

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->c(I)I

    move-result v0

    invoke-direct {v2, v3, v4, v0}, LW/o;-><init>(III)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, v7

    move v2, v8

    move-object v3, p1

    move-object v4, p2

    move v5, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/localizer/p;->a(IILW/o;LW/o;ILW/p;)D

    move-result-wide v0

    goto :goto_1
.end method

.method private a(LW/p;LW/p;)LW/p;
    .locals 15

    move-object/from16 v0, p1

    iget-object v0, v0, LW/p;->a:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-object/from16 v0, p2

    iget-object v0, v0, LW/p;->a:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-object/from16 v0, p1

    iget-object v0, v0, LW/p;->b:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p2

    iget-object v0, v0, LW/p;->b:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sub-double/2addr v7, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    add-double/2addr v11, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    add-double/2addr v13, v9

    mul-double/2addr v11, v13

    mul-double v13, v7, v7

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    add-double/2addr v1, v9

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    add-double/2addr v1, v5

    new-instance v5, LW/p;

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/k;->c(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/google/android/location/localizer/k;->d(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v5, v3, v1}, LW/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private a()Lcom/google/android/location/localizer/u;
    .locals 4

    new-instance v0, Lcom/google/android/location/localizer/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/location/localizer/p;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/u;-><init>(LW/o;ILjava/util/Set;)V

    return-object v0
.end method

.method private a(Ljava/util/Set;Lcom/google/android/location/localizer/q;)Ljava/util/List;
    .locals 3

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/q;

    invoke-direct {p0, v1, p2}, Lcom/google/android/location/localizer/p;->a(Lcom/google/android/location/localizer/q;Lcom/google/android/location/localizer/q;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(LW/o;Ljava/util/Map;)Ljava/util/Set;
    .locals 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/o;

    invoke-static {v0, p1}, Lcom/google/android/location/localizer/k;->a(LW/o;LW/o;)I

    move-result v0

    const/16 v3, 0xfa

    if-le v0, v3, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/q;

    invoke-virtual {v0, v2}, Lcom/google/android/location/localizer/q;->a(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/q;

    add-int/lit8 v1, v2, 0x1

    move v3, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/q;

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/localizer/p;->a(Lcom/google/android/location/localizer/q;Lcom/google/android/location/localizer/q;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/location/localizer/q;->a()V

    invoke-virtual {v1}, Lcom/google/android/location/localizer/q;->a()V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/localizer/q;

    invoke-virtual {p0}, Lcom/google/android/location/localizer/q;->b()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/location/localizer/q;Lcom/google/android/location/localizer/q;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/location/localizer/q;->c()LW/o;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/location/localizer/q;->c()LW/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(LW/o;LW/o;)I

    move-result v2

    iget v0, v0, LW/o;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v0

    iget v1, v1, LW/o;->c:I

    invoke-static {v1}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    if-gt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(LW/o;LW/o;)D
    .locals 12

    const-wide v8, 0x416312d000000000L

    iget v0, p1, LW/o;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->d(I)D

    move-result-wide v0

    iget v2, p2, LW/o;->a:I

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->d(I)D

    move-result-wide v2

    iget v4, p2, LW/o;->b:I

    int-to-double v4, v4

    div-double/2addr v4, v8

    iget v6, p1, LW/o;->b:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/util/List;)LW/p;
    .locals 5

    const v0, 0x7fffffff

    const/high16 v1, -0x8000

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/localizer/q;

    invoke-virtual {p0}, Lcom/google/android/location/localizer/q;->b()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/location/localizer/q;->b()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    new-instance v2, LW/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, LW/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private c(Ljava/util/List;)LW/o;
    .locals 5

    const v4, 0x249f0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/q;

    invoke-direct {p0, v1, v0}, Lcom/google/android/location/localizer/p;->a(Ljava/util/Set;Lcom/google/android/location/localizer/q;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/p;->e(Ljava/util/List;)LW/o;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/o;

    move-object v0, p0

    :goto_2
    iget v1, v0, LW/o;->c:I

    if-ge v1, v4, :cond_3

    new-instance v1, LW/t;

    invoke-direct {v1, v0}, LW/t;-><init>(LW/o;)V

    iput v4, v1, LW/t;->c:I

    invoke-virtual {v1}, LW/t;->a()LW/o;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/location/localizer/p;->d(Ljava/util/List;)LW/o;

    move-result-object v0

    goto :goto_2
.end method

.method private d(Ljava/util/List;)LW/o;
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, v2

    move-object v9, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v8, v1, :cond_1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/o;

    add-int/lit8 v2, v8, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, LW/o;

    move-object v7, v0

    invoke-direct {p0, v1, v7}, Lcom/google/android/location/localizer/p;->b(LW/o;LW/o;)D

    move-result-wide v5

    iget v2, v1, LW/o;->a:I

    iget v3, v1, LW/o;->b:I

    iget v1, v1, LW/o;->c:I

    invoke-static {v1}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/localizer/p;->a(IIID)LW/p;

    move-result-object v10

    iget v2, v7, LW/o;->a:I

    iget v3, v7, LW/o;->b:I

    iget v1, v7, LW/o;->c:I

    invoke-static {v1}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v4

    const-wide v11, 0x400921fb54442d18L

    add-double/2addr v5, v11

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/localizer/p;->a(IIID)LW/p;

    move-result-object v1

    invoke-direct {p0, v10, v1}, Lcom/google/android/location/localizer/p;->a(LW/p;LW/p;)LW/p;

    move-result-object v1

    if-nez v9, :cond_0

    :goto_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-object v9, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v9, v1}, Lcom/google/android/location/localizer/p;->a(LW/p;LW/p;)LW/p;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, LW/t;

    invoke-direct {v1}, LW/t;-><init>()V

    iget-object p0, v9, LW/p;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/localizer/k;->e(D)I

    move-result v2

    iget-object p0, v9, LW/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/k;->e(D)I

    move-result v3

    invoke-virtual {v1, v2, v3}, LW/t;->a(II)LW/t;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/o;

    invoke-static {v1, p0}, Lcom/google/android/location/localizer/k;->a(LW/t;LW/o;)I

    move-result v4

    if-ge v4, v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/google/android/location/localizer/k;->c(I)I

    move-result v2

    iput v2, v1, LW/t;->c:I

    invoke-virtual {v1}, LW/t;->a()LW/o;

    move-result-object v1

    return-object v1
.end method

.method private e(Ljava/util/List;)LW/o;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/q;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/q;->c()LW/o;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/q;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/q;->c()LW/o;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/android/location/localizer/p;->a(LW/o;LW/o;)LW/o;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method a(IIID)LW/p;
    .locals 12

    int-to-double v0, p3

    const-wide v2, 0x4158554c00000000L

    div-double/2addr v0, v2

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->d(I)D

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/location/localizer/k;->d(I)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    sub-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    const-wide v2, 0x400921fb54442d18L

    add-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L

    rem-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    sub-double/2addr v0, v2

    new-instance v2, LW/p;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0}, LW/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/localizer/p;->a()Lcom/google/android/location/localizer/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/r;

    iget-object v2, v0, LW/r;->i:LW/j;

    sget-object v3, LW/j;->c:LW/j;

    if-eq v2, v3, :cond_3

    iget-object v0, v0, LW/r;->i:LW/j;

    sget-object v2, LW/j;->d:LW/j;

    if-ne v0, v2, :cond_2

    :cond_3
    move v2, v7

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/r;

    if-nez v2, :cond_5

    iget-object v5, v1, LW/r;->i:LW/j;

    sget-object v6, LW/j;->c:LW/j;

    if-eq v5, v6, :cond_5

    iget-object v1, v1, LW/r;->i:LW/j;

    sget-object v5, LW/j;->d:LW/j;

    if-ne v1, v5, :cond_4

    :cond_5
    new-instance v5, Lcom/google/android/location/localizer/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/o;

    invoke-direct {v5, v1, v0}, Lcom/google/android/location/localizer/q;-><init>(Ljava/lang/Long;LW/o;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/location/localizer/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/localizer/s;-><init>(Lcom/google/android/location/localizer/p;Lcom/google/android/location/localizer/e;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/location/localizer/p;->a(Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/google/android/location/localizer/p;->b(Ljava/util/List;)LW/p;

    move-result-object v0

    iget-object v1, v0, LW/p;->a:Ljava/lang/Object;

    iget-object v2, v0, LW/p;->b:Ljava/lang/Object;

    if-eq v1, v2, :cond_9

    move v1, v8

    :goto_3
    if-eqz v1, :cond_8

    iget-object v0, v0, LW/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/location/localizer/p;->a(Ljava/util/List;I)V

    :cond_8
    if-nez v1, :cond_7

    invoke-direct {p0, v3}, Lcom/google/android/location/localizer/p;->c(Ljava/util/List;)LW/o;

    move-result-object v0

    iget v1, v0, LW/o;->c:I

    const v2, 0x16e360

    if-le v1, v2, :cond_a

    sget-object v1, Lcom/google/android/location/localizer/p;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring computed location since accuracy too high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, LW/o;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mm."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/location/localizer/p;->a()Lcom/google/android/location/localizer/u;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v1, v7

    goto :goto_3

    :cond_a
    const/16 v1, 0x50

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/localizer/p;->a(LW/o;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_b

    sget-object v3, Lcom/google/android/location/localizer/p;->a:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not returning location for the following outliers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_b
    new-instance v3, Lcom/google/android/location/localizer/u;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/location/localizer/u;-><init>(LW/o;ILjava/util/Set;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_c
    move v2, v8

    goto/16 :goto_1
.end method
