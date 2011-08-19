.class public Ljava/util/AbstractMap$SimpleEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75f5135a03a97fe1L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    .local p2, theValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 122
    iput-object p2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    .local p1, copyFrom:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 158
    :goto_5
    return v2

    .line 151
    :cond_6
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3f

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 153
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_24

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    :cond_18
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_32

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    :goto_22
    move v2, v5

    goto :goto_5

    :cond_24
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_30
    move v2, v4

    goto :goto_5

    :cond_32
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_22

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_3f
    move v2, v4

    .line 158
    goto :goto_5
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_d

    move v0, v2

    :goto_6
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_14
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    .local p1, object:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 143
    .local v0, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 144
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    .local p0, this:Ljava/util/AbstractMap$SimpleEntry;,"Ljava/util/AbstractMap$SimpleEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
