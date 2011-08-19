.class public Lcom/google/android/maps/driveabout/vector/aE;
.super Lcom/google/android/maps/driveabout/vector/cv;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/ca;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ca;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ca;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aE;->c:Lcom/google/android/maps/driveabout/vector/ca;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, LG/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;
    .locals 4

    const/16 v3, 0x10

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cv;->a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aE;->c:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->c()LG/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ca;->a(LG/Q;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aE;->c:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
