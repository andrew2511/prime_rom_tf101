.class public Lcom/google/api/client/util/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, data:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p0

    .line 87
    :goto_0
    return-object v3

    .line 70
    :cond_0
    instance-of v3, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v3, :cond_1

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v2

    .line 74
    .local v2, copyTmp:Lcom/google/api/client/util/GenericData;,"TT;"
    move-object v1, v2

    .line 86
    .end local v2           #copyTmp:Lcom/google/api/client/util/GenericData;,"TT;"
    :goto_1
    invoke-static {p0, v1}, Lcom/google/api/client/util/DataUtil;->cloneInternal(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v1

    .line 87
    goto :goto_0

    .line 75
    :cond_1
    instance-of v3, p0, Lcom/google/api/client/util/ArrayMap;

    if-eqz v3, :cond_2

    .line 78
    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/ArrayMap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v2

    .line 79
    .local v2, copyTmp:Lcom/google/api/client/util/ArrayMap;,"TT;"
    move-object v1, v2

    .line 80
    .local v1, copy:Lcom/google/api/client/util/ArrayMap;,"TT;"
    goto :goto_1

    .line 83
    .end local v1           #copy:Lcom/google/api/client/util/ArrayMap;,"TT;"
    .end local v2           #copyTmp:Lcom/google/api/client/util/ArrayMap;,"TT;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, copyTmp:Ljava/lang/Object;,"TT;"
    move-object v1, v2

    .local v1, copy:Ljava/lang/Object;,"TT;"
    goto :goto_1
.end method

.method static cloneInternal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 96
    .local v2, srcCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const-class p0, Ljava/util/ArrayList;

    .end local p0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object p0, v0

    .line 99
    .local p0, destArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    .end local v1           #srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 102
    .end local p0           #destArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object p0, v0

    .line 103
    .local p0, destCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, srcValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #srcValue:Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v2           #srcCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .local v1, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p0, src:Ljava/lang/Object;
    .local p1, dest:Ljava/lang/Object;
    :cond_1
    const-class v2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    .line 108
    .local v4, isGenericData:Z
    if-nez v4, :cond_2

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 109
    :cond_2
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    .line 110
    .local v1, classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-virtual {v1}, Lcom/google/api/client/util/ClassInfo;->getKeyNames()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, fieldName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    .line 113
    .local v2, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    iget-boolean v5, v2, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    if-nez v5, :cond_3

    .line 115
    if-eqz v4, :cond_4

    iget-boolean v5, v2, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    if-nez v5, :cond_3

    .line 116
    :cond_4
    invoke-virtual {v2, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 117
    .local v5, srcValue:Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 118
    invoke-static {v5}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #srcValue:Ljava/lang/Object;
    invoke-virtual {v2, p1, v5}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    .end local v2           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .local v1, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    const-class v2, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .end local v1           #srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_7

    .line 125
    check-cast p1, Lcom/google/api/client/util/ArrayMap;

    .line 127
    .local p1, destMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/ArrayMap;

    move-object v2, v0

    .line 128
    .local v2, srcMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v1

    .line 129
    .local v1, size:I
    const/4 p0, 0x0

    .end local v4           #isGenericData:Z
    .local p0, i:I
    :goto_2
    if-ge p0, v1, :cond_8

    .line 130
    invoke-virtual {v2, p0}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, srcValue:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 132
    invoke-static {v3}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #srcValue:Ljava/lang/Object;
    invoke-virtual {p1, p0, v3}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 137
    .end local v1           #size:I
    .end local v2           #srcMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v4       #isGenericData:Z
    .local p0, src:Ljava/lang/Object;
    .local p1, dest:Ljava/lang/Object;
    :cond_7
    check-cast p1, Ljava/util/Map;

    .line 139
    .local p1, destMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p0, Ljava/util/Map;

    .line 140
    .local p0, srcMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .end local p0           #srcMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    .local v1, srcEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #srcEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 146
    .end local v4           #isGenericData:Z
    .end local p0           #i$:Ljava/util/Iterator;
    .end local p1           #destMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    return-void
.end method

.method public static mapOf(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 50
    :goto_0
    return-object v2

    .line 45
    :cond_0
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 47
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .local v1, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v1

    .line 48
    goto :goto_0

    .line 50
    .end local v1           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v2, Lcom/google/api/client/util/ReflectionMap;

    invoke-direct {v2, p0}, Lcom/google/api/client/util/ReflectionMap;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
