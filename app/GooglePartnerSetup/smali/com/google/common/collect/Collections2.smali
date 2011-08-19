.class public final Lcom/google/common/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# static fields
.field static final standardJoiner:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Collections2;->standardJoiner:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setEquals(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, thisSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 297
    :goto_0
    return v2

    .line 292
    :cond_0
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 293
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    .line 294
    .local v1, thatSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .end local v1           #thatSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_2
    move v2, v4

    .line 297
    goto :goto_0
.end method
