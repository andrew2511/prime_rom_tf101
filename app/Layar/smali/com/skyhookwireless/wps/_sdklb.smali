.class final Lcom/skyhookwireless/wps/_sdklb;
.super Ljava/lang/Object;


# static fields
.field static final _sdkb:Z


# instance fields
.field private final _sdka:Lcom/skyhookwireless/wps/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/Cache",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdklb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdklb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/skyhookwireless/wps/Cache;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/wps/Cache;-><init>(I)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdklb;->_sdka:Lcom/skyhookwireless/wps/Cache;

    return-void
.end method

.method private static _sdka(Ljava/util/Collection;F)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;F)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private static _sdka(Lcom/skyhookwireless/_sdkfd;)Lcom/skyhookwireless/_sdkfd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkfd",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/skyhookwireless/_sdkfd",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/_sdkfd;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkfd;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/skyhookwireless/_sdkfd;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Comparable;

    invoke-static {v0, p0}, Lcom/skyhookwireless/_sdkfd;->_sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/wps/_sdkpb;F)Lcom/skyhookwireless/_sdkfd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "F)",
            "Lcom/skyhookwireless/_sdkfd",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/skyhookwireless/wps/_sdklb;->_sdka(Ljava/util/Collection;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdklb;->_sdka(Ljava/util/Collection;F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkfd;->_sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdkfd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ")",
            "Lcom/skyhookwireless/_sdkfd",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/_sdkv;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2, v3}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkfd;->_sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/_sdkfd;Lcom/skyhookwireless/_sdkfd;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkfd",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/skyhookwireless/_sdkfd",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p1, Lcom/skyhookwireless/_sdkfd;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkfd;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_0

    iget-object v0, p1, Lcom/skyhookwireless/_sdkfd;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/skyhookwireless/_sdkfd;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkfd;)Lcom/skyhookwireless/_sdkfd;
    .locals 1

    invoke-static {p0}, Lcom/skyhookwireless/wps/_sdklb;->_sdka(Lcom/skyhookwireless/_sdkfd;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    return-object v0
.end method

.method static _sdkb(Lcom/skyhookwireless/wps/_sdkpb;F)Lcom/skyhookwireless/_sdkfd;
    .locals 1

    invoke-static {p0, p1}, Lcom/skyhookwireless/wps/_sdklb;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;F)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    return-object v0
.end method

.method static _sdkb(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdkfd;
    .locals 1

    invoke-static {p0, p1}, Lcom/skyhookwireless/wps/_sdklb;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    return-object v0
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkfd;Lcom/skyhookwireless/_sdkfd;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/skyhookwireless/wps/_sdklb;->_sdka(Lcom/skyhookwireless/_sdkfd;Lcom/skyhookwireless/_sdkfd;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 2

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdklb;->_sdka:Lcom/skyhookwireless/wps/Cache;

    invoke-virtual {v0, p1, p2}, Lcom/skyhookwireless/wps/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public get(Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/wps/_sdkdb;
    .locals 2

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdklb;->_sdka:Lcom/skyhookwireless/wps/Cache;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    return-object p0
.end method

.method public get(Lcom/skyhookwireless/wps/_sdkpb;F)Lcom/skyhookwireless/wps/_sdkdb;
    .locals 2

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdklb;->_sdkb:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdklb;->_sdka:Lcom/skyhookwireless/wps/Cache;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkmb;

    invoke-direct {v1, p0, p2, p1}, Lcom/skyhookwireless/wps/_sdkmb;-><init>(Lcom/skyhookwireless/wps/_sdklb;FLcom/skyhookwireless/wps/_sdkpb;)V

    invoke-virtual {v0, p1, v1}, Lcom/skyhookwireless/wps/Cache;->get(Ljava/lang/Object;Lcom/skyhookwireless/wps/Cache$Finder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    return-object p0
.end method
