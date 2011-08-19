.class Ljava/util/EnumMap$Entry;
.super Ljava/util/MapEntry;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TKT;TVT;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field private final ordinal:I


# direct methods
.method constructor <init>(Ljava/lang/Enum;Ljava/lang/Object;Ljava/util/EnumMap;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKT;TVT;",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    .local p1, theKey:Ljava/lang/Enum;,"TKT;"
    .local p2, theValue:Ljava/lang/Object;,"TVT;"
    .local p3, em:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iput-object p3, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    .line 61
    return-void
.end method

.method private checkEntryStatus()V
    .registers 3

    .prologue
    .line 125
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->hasMapping:[Z

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_10

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 128
    :cond_10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    const/4 v7, 0x0

    .line 66
    iget-object v5, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v5, v5, Ljava/util/EnumMap;->hasMapping:[Z

    iget v6, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_d

    move v5, v7

    .line 82
    :goto_c
    return v5

    .line 69
    :cond_d
    const/4 v3, 0x0

    .line 70
    .local v3, isEqual:Z
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_36

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 72
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TKT;TVT;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, enumKey:Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/EnumMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 75
    .local v4, theValue:Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v5, v5, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v5, v5, v6

    if-nez v5, :cond_3a

    .line 76
    if-nez v4, :cond_38

    const/4 v5, 0x1

    move v3, v5

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TKT;TVT;>;"
    .end local v2           #enumKey:Ljava/lang/Object;
    .end local v4           #theValue:Ljava/lang/Object;
    :cond_36
    :goto_36
    move v5, v3

    .line 82
    goto :goto_c

    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TKT;TVT;>;"
    .restart local v2       #enumKey:Ljava/lang/Object;
    .restart local v4       #theValue:Ljava/lang/Object;
    :cond_38
    move v3, v7

    .line 76
    goto :goto_36

    .line 78
    :cond_3a
    iget-object v5, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v5, v5, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_36
.end method

.method public getKey()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TKT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    .line 97
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap$Entry;->getKey()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    .line 104
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v1

    if-nez v0, :cond_19

    move v0, v3

    :goto_c
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    if-nez v1, :cond_26

    move v1, v3

    :goto_17
    xor-int/2addr v0, v1

    return v0

    :cond_19
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_26
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_17
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVT;)TVT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    .local p1, value:Ljava/lang/Object;,"TVT;"
    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    .line 111
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 116
    .local p0, this:Ljava/util/EnumMap$Entry;,"Ljava/util/EnumMap$Entry<TKT;TVT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2a

    const-string v1, "null"

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    :cond_2a
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method
