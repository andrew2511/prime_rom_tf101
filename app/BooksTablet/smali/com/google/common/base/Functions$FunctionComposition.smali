.class Lcom/google/common/base/Functions$FunctionComposition;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionComposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TA;TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final f:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<TB;TC;>;",
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    .local p1, g:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TB;TC;>;"
    .local p2, f:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    .line 193
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    .line 194
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    .local p1, a:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    const/4 v4, 0x0

    .line 199
    instance-of v2, p1, Lcom/google/common/base/Functions$FunctionComposition;

    if-eqz v2, :cond_1

    .line 200
    move-object v0, p1

    check-cast v0, Lcom/google/common/base/Functions$FunctionComposition;

    move-object v1, v0

    .line 201
    .local v1, that:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<***>;"
    iget-object v2, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    iget-object v3, v1, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    iget-object v3, v1, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 203
    .end local v1           #that:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<***>;"
    :goto_0
    return v2

    .restart local v1       #that:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<***>;"
    :cond_0
    move v2, v4

    .line 201
    goto :goto_0

    .end local v1           #that:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<***>;"
    :cond_1
    move v2, v4

    .line 203
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 207
    .local p0, this:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    .local p0, this:Lcom/google/common/base/Functions$FunctionComposition;,"Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
