.class Lcom/google/common/base/Predicates$InPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final target:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<TT;>;"
    .local p1, target:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lcom/google/common/base/Predicates$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    .local p0, this:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    const/4 v2, 0x0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/google/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 444
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NullPointerException;
    move v1, v2

    .line 442
    goto :goto_0

    .line 443
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, v2

    .line 444
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 449
    .local p0, this:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<TT;>;"
    instance-of v2, p1, Lcom/google/common/base/Predicates$InPredicate;

    if-eqz v2, :cond_0

    .line 450
    move-object v0, p1

    check-cast v0, Lcom/google/common/base/Predicates$InPredicate;

    move-object v1, v0

    .line 451
    .local v1, that:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<*>;"
    iget-object v2, p0, Lcom/google/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    iget-object v3, v1, Lcom/google/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 453
    .end local v1           #that:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<*>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 457
    .local p0, this:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    .local p0, this:Lcom/google/common/base/Predicates$InPredicate;,"Lcom/google/common/base/Predicates$InPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
