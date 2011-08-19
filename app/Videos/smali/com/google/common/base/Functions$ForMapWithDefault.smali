.class Lcom/google/common/base/Functions$ForMapWithDefault;
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
    name = "ForMapWithDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TK;+TV;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    .line 146
    iput-object p2, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->defaultValue:Ljava/lang/Object;

    .line 147
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->defaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<TK;TV;>;"
    const/4 v4, 0x0

    .line 152
    instance-of v2, p1, Lcom/google/common/base/Functions$ForMapWithDefault;

    if-eqz v2, :cond_1

    .line 153
    move-object v0, p1

    check-cast v0, Lcom/google/common/base/Functions$ForMapWithDefault;

    move-object v1, v0

    .line 154
    .local v1, that:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<**>;"
    iget-object v2, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->defaultValue:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/common/base/Functions$ForMapWithDefault;->defaultValue:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 157
    .end local v1           #that:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<**>;"
    :goto_0
    return v2

    .restart local v1       #that:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<**>;"
    :cond_0
    move v2, v4

    .line 154
    goto :goto_0

    .end local v1           #that:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<**>;"
    :cond_1
    move v2, v4

    .line 157
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 160
    .local p0, this:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<TK;TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->defaultValue:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    .local p0, this:Lcom/google/common/base/Functions$ForMapWithDefault;,"Lcom/google/common/base/Functions$ForMapWithDefault<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$ForMapWithDefault;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
