.class Lcom/google/common/base/Functions$ConstantFunction;
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
    name = "ConstantFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, this:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    .line 267
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 272
    .local p0, this:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    instance-of v2, p1, Lcom/google/common/base/Functions$ConstantFunction;

    if-eqz v2, :cond_0

    .line 273
    move-object v0, p1

    check-cast v0, Lcom/google/common/base/Functions$ConstantFunction;

    move-object v1, v0

    .line 274
    .local v1, that:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<*>;"
    iget-object v2, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 276
    .end local v1           #that:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<*>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 279
    .local p0, this:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    .local p0, this:Lcom/google/common/base/Functions$ConstantFunction;,"Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constant("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
