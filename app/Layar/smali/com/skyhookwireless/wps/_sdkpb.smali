.class public final Lcom/skyhookwireless/wps/_sdkpb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final _sdkd:Z


# instance fields
.field private final _sdka:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkd:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_1
    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka()V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private _sdka()V
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->hasBeacons()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka(Ljava/util/ArrayList;[Z)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;[Z)V

    goto :goto_0
.end method

.method private static _sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/skyhookwireless/_sdkw;",
            ">;[Z)V"
        }
    .end annotation

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/_sdkw;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v3

    invoke-interface {v0}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkub;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    const-wide/32 v3, 0x36ee80

    const/4 v0, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v3

    move v4, v0

    move v3, v5

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-interface {p1}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v5

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-nez v1, :cond_7

    if-gez v0, :cond_6

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-ltz v0, :cond_6

    move v0, v3

    move-wide v4, v9

    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-eqz v1, :cond_5

    :goto_3
    move v3, v0

    :goto_4
    const/4 v4, -0x1

    if-le v0, v4, :cond_2

    const/4 v0, 0x1

    aput-boolean v0, p2, v3

    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    return-void

    :cond_4
    move-object v0, p1

    goto :goto_0

    :cond_5
    move-wide v7, v4

    move v4, v0

    goto :goto_1

    :cond_6
    move v0, v4

    move-wide v4, v7

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_4

    :cond_8
    move v0, v4

    goto :goto_3
.end method

.method private static _sdka(Ljava/util/ArrayList;[Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/skyhookwireless/_sdkw;",
            ">;[Z)V"
        }
    .end annotation

    const/4 v6, -0x1

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v6

    move-object v4, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkw;

    if-nez v1, :cond_1

    if-eqz v4, :cond_0

    sget-object v5, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v5, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    :cond_0
    move-object v3, v0

    move v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_4

    :goto_2
    if-le v0, v6, :cond_1

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    :cond_1
    return-void

    :cond_2
    move v0, v3

    move-object v3, v4

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move-object v4, v3

    move v3, v0

    goto :goto_0
.end method

.method private static _sdka(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/skyhookwireless/_sdkw;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkw;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkqb;

    invoke-direct {v1, v0}, Lcom/skyhookwireless/wps/_sdkqb;-><init>(Lcom/skyhookwireless/_sdkw;)V

    invoke-static {p0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Lcom/skyhookwireless/_sdkgd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/skyhookwireless/wps/_sdkpb;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkpb;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->clone()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-nez p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/wps/_sdkpb;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkv;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkv;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkq;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_7

    move v0, v5

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v5

    goto/16 :goto_0

    :cond_7
    move v0, v5

    goto/16 :goto_0
.end method

.method public final getAPs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getCells()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getGpsLocations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatestBeacons()Lcom/skyhookwireless/wps/_sdkpb;
    .locals 2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->clone()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v0

    iget-object v1, v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka(Ljava/util/Collection;)V

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkpb;->_sdka()V

    return-object v0
.end method

.method public hasBeacons()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkyb;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkv;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkq;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->hasBeacons()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubsetOf(Lcom/skyhookwireless/wps/_sdkpb;)Z
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    sget-object v2, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    sget-object v2, Lcom/skyhookwireless/_sdkv;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkv;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkd:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkd:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkd:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkd:Z

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    return-void
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkpb;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
