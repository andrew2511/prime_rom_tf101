.class public Lorg/easymock/internal/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d9560aea7f0b3d0L


# instance fields
.field private maximum:I

.field private minimum:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p1}, Lorg/easymock/internal/Range;-><init>(II)V

    .line 19
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-le p1, p2, :cond_0

    .line 23
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minimum must be <= maximum"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 27
    :cond_0
    if-gez p1, :cond_1

    .line 28
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minimum must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 32
    :cond_1
    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 33
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maximum must be >= 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 36
    :cond_2
    iput p1, p0, Lorg/easymock/internal/Range;->minimum:I

    .line 37
    iput p2, p0, Lorg/easymock/internal/Range;->maximum:I

    .line 38
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lorg/easymock/internal/Range;->minimum:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/easymock/internal/Range;->maximum:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expectedAndActual(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/easymock/internal/Range;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/easymock/internal/Range;->maximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/easymock/internal/Range;->minimum:I

    return v0
.end method

.method public hasFixedCount()Z
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lorg/easymock/internal/Range;->minimum:I

    iget v1, p0, Lorg/easymock/internal/Range;->maximum:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenCount()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lorg/easymock/internal/Range;->maximum:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/easymock/internal/Range;->hasFixedCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/easymock/internal/Range;->minimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/easymock/internal/Range;->hasOpenCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/easymock/internal/Range;->minimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/easymock/internal/Range;->minimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/easymock/internal/Range;->maximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
