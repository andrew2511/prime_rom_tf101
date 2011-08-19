.class public final Lcom/skyhookwireless/_sdktc;
.super Ljava/lang/Object;


# static fields
.field private static final _sdka:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final _sdkb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/_sdktc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    new-instance v0, Lcom/skyhookwireless/_sdkuc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkuc;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _sdka(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;)I"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static _sdka(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_0

    invoke-static {p0, p2}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_1

    invoke-static {p1, p2}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_0
    if-eqz v1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v0, :cond_8

    if-nez v5, :cond_4

    add-int/lit8 v3, v3, -0x2

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v0, :cond_3

    :cond_5
    move v1, v3

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_7

    move v1, v0

    move-object v0, p0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    move v0, v1

    :cond_7
    return v0

    :cond_8
    move v1, v5

    goto :goto_0

    :cond_9
    move-object v0, p1

    move v1, v3

    goto :goto_2

    :cond_a
    move v0, v3

    goto :goto_1
.end method

.method public static _sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    return-object p0
.end method

.method public static _sdka(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static _sdka(Ljava/lang/Iterable;Lcom/skyhookwireless/_sdkgd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/skyhookwireless/_sdkgd",
            "<-TT;>;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/skyhookwireless/_sdkgd;->eval(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public static _sdka(Ljava/util/List;Ljava/util/List;Lcom/skyhookwireless/_sdkwc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;",
            "Lcom/skyhookwireless/_sdkwc;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, p1, p2, v0}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;Ljava/util/List;Lcom/skyhookwireless/_sdkwc;Ljava/util/Comparator;)V

    return-void
.end method

.method public static _sdka(Ljava/util/List;Ljava/util/List;Lcom/skyhookwireless/_sdkwc;Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;",
            "Lcom/skyhookwireless/_sdkwc;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_0

    invoke-static {p0, p3}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_1

    invoke-static {p1, p3}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_2

    invoke-static {p0, p3}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_3

    invoke-static {p1, p3}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move v1, v5

    move v2, v5

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v0, :cond_10

    if-ge v1, v3, :cond_7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p2, v2, v1}, Lcom/skyhookwireless/_sdkwc;->inFirstOnly(II)V

    if-eqz v0, :cond_f

    move v2, v4

    :cond_5
    if-lez v3, :cond_6

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v2, v1}, Lcom/skyhookwireless/_sdkwc;->inSecondOnly(II)V

    if-eqz v0, :cond_e

    move v1, v3

    :cond_6
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p2, v2, v1}, Lcom/skyhookwireless/_sdkwc;->inBoth(II)V

    move v1, v4

    move v2, v3

    :goto_0
    if-eqz v0, :cond_4

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    move v6, v1

    move v1, v3

    move v3, v6

    :goto_2
    if-ge v2, v1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/skyhookwireless/_sdkwc;->inFirstOnly(II)V

    add-int/lit8 v1, v4, 0x1

    if-nez v0, :cond_a

    if-eqz v0, :cond_d

    :cond_8
    move v1, v3

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v2, v1}, Lcom/skyhookwireless/_sdkwc;->inSecondOnly(II)V

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_9

    :cond_a
    sget v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v1, :cond_b

    if-eqz v0, :cond_c

    move v0, v5

    :goto_3
    sput-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_e
    move v1, v3

    goto :goto_0

    :cond_f
    move v2, v4

    goto :goto_0

    :cond_10
    move v4, v2

    move v2, v1

    move v6, v1

    move v1, v3

    move v3, v6

    goto :goto_2
.end method

.method public static _sdka(Ljava/util/List;[Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;[Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    aget-boolean v3, p1, v2

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public static _sdka(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static _sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    invoke-static {}, Lcom/skyhookwireless/_sdkxc;->_sdkb()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v0, :cond_4

    if-lez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public static _sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Comparator;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v0, :cond_8

    if-nez v5, :cond_3

    if-eqz v0, :cond_7

    move v4, v7

    :cond_3
    if-eqz v0, :cond_2

    :cond_4
    move v2, v4

    :goto_1
    if-nez v2, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_1

    :cond_6
    move v0, v7

    goto :goto_0

    :cond_7
    move v2, v7

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_1

    :cond_9
    move v0, v6

    goto :goto_0
.end method

.method public static _sdkb(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;)I"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static _sdkb(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, p1, p2}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return v0
.end method

.method public static _sdkb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    return-object p0
.end method

.method public static _sdkb(Ljava/lang/Iterable;Lcom/skyhookwireless/_sdkgd;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/skyhookwireless/_sdkgd",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkbd;

    invoke-direct {v0, p0, p1}, Lcom/skyhookwireless/_sdkbd;-><init>(Ljava/lang/Iterable;Lcom/skyhookwireless/_sdkgd;)V

    return-object v0
.end method

.method public static _sdkb(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static _sdkb(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static _sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    invoke-static {}, Lcom/skyhookwireless/_sdkxc;->_sdkb()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_7

    if-eqz v0, :cond_0

    :cond_1
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v4

    :goto_1
    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v0, :cond_6

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method public static _sdkc(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)I"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkvc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkvc;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;Ljava/util/List;Lcom/skyhookwireless/_sdkwc;Ljava/util/Comparator;)V

    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/skyhookwireless/_sdkvc;->count:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, v0, Lcom/skyhookwireless/_sdkvc;->count:I

    return v0
.end method

.method public static _sdkc(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdktc;->_sdka:Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-void
.end method

.method public static _sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    sget-boolean v1, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v0, :cond_6

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    sget-boolean v0, Lcom/skyhookwireless/_sdktc;->_sdkb:Z

    :goto_1
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move-object v2, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
