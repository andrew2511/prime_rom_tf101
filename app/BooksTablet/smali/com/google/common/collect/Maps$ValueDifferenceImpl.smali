.class Lcom/google/common/collect/Maps$ValueDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference$ValueDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapDifference$ValueDifference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, this:Lcom/google/common/collect/Maps$ValueDifferenceImpl;,"Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    .local p1, left:Ljava/lang/Object;,"TV;"
    .local p2, right:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    .line 405
    iput-object p2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    .line 406
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Maps$ValueDifferenceImpl;,"Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    const/4 v4, 0x0

    .line 417
    instance-of v2, p1, Lcom/google/common/collect/MapDifference$ValueDifference;

    if-eqz v2, :cond_1

    .line 418
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapDifference$ValueDifference;

    move-object v1, v0

    .line 420
    .local v1, that:Lcom/google/common/collect/MapDifference$ValueDifference;,"Lcom/google/common/collect/MapDifference$ValueDifference<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/MapDifference$ValueDifference;->leftValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/MapDifference$ValueDifference;->rightValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 423
    .end local v1           #that:Lcom/google/common/collect/MapDifference$ValueDifference;,"Lcom/google/common/collect/MapDifference$ValueDifference<*>;"
    :goto_0
    return v2

    .restart local v1       #that:Lcom/google/common/collect/MapDifference$ValueDifference;,"Lcom/google/common/collect/MapDifference$ValueDifference<*>;"
    :cond_0
    move v2, v4

    .line 420
    goto :goto_0

    .end local v1           #that:Lcom/google/common/collect/MapDifference$ValueDifference;,"Lcom/google/common/collect/MapDifference$ValueDifference<*>;"
    :cond_1
    move v2, v4

    .line 423
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 427
    .local p0, this:Lcom/google/common/collect/Maps$ValueDifferenceImpl;,"Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public leftValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/google/common/collect/Maps$ValueDifferenceImpl;,"Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public rightValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Lcom/google/common/collect/Maps$ValueDifferenceImpl;,"Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/Maps$ValueDifferenceImpl;,"Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
