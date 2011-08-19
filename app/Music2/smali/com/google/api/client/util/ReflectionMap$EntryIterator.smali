.class final Lcom/google/api/client/util/ReflectionMap$EntryIterator;
.super Ljava/lang/Object;
.source "ReflectionMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ReflectionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final classInfo:Lcom/google/api/client/util/ClassInfo;

.field private fieldIndex:I

.field private final fieldNames:[Ljava/lang/String;

.field private final numFields:I

.field private final object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ClassInfo;Ljava/lang/Object;)V
    .locals 8
    .parameter "classInfo"
    .parameter "object"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldIndex:I

    .line 84
    iput-object p1, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 85
    iput-object p2, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->object:Ljava/lang/Object;

    .line 87
    iget-object v7, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v7}, Lcom/google/api/client/util/ClassInfo;->getKeyNames()Ljava/util/Collection;

    move-result-object v5

    .line 88
    .local v5, keyNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    iput v6, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->numFields:I

    .line 89
    .local v6, size:I
    if-nez v6, :cond_0

    .line 90
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldNames:[Ljava/lang/String;

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldNames:[Ljava/lang/String;

    .line 93
    .local v0, fieldNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, i:I
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, keyName:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 97
    .end local v4           #keyName:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldIndex:I

    iget v1, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->numFields:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldIndex:I

    .line 107
    .local v0, fieldIndex:I
    iget v2, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->numFields:I

    if-lt v0, v2, :cond_0

    .line 108
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldNames:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 111
    .local v1, fieldName:Ljava/lang/String;
    iget v2, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->fieldIndex:I

    .line 112
    new-instance v2, Lcom/google/api/client/util/ReflectionMap$Entry;

    iget-object v3, p0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->object:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lcom/google/api/client/util/ReflectionMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
