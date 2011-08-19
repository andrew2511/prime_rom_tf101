.class public Lcom/google/api/client/googleapis/xml/atom/GData;
.super Ljava/lang/Object;
.source "GData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method private static appendFeedFields(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .parameter "fieldsBuf"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-array v0, v4, [I

    .line 106
    .local v0, numFields:[I
    invoke-static {p0, p1, v0}, Lcom/google/api/client/googleapis/xml/atom/GData;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 107
    aget v2, v0, v3

    if-eqz v2, :cond_0

    .line 108
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    const-string v2, "entry("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v1, v2, v4

    .line 112
    .local v1, openParenIndex:I
    aput v3, v0, v3

    .line 113
    invoke-static {p0, p2, v0}, Lcom/google/api/client/googleapis/xml/atom/GData;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 114
    aget v2, v0, v3

    invoke-static {p0, v1, v2}, Lcom/google/api/client/googleapis/xml/atom/GData;->updateFieldsBasedOnNumFields(Ljava/lang/StringBuilder;II)V

    .line 115
    return-void
.end method

.method private static appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V
    .locals 11
    .parameter "fieldsBuf"
    .parameter
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;[I)V"
        }
    .end annotation

    .prologue
    .local p1, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot specify field mask for a Map or Collection class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    .line 68
    .local v0, classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-virtual {v0}, Lcom/google/api/client/util/ClassInfo;->getKeyNames()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    .line 70
    .local v2, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    iget-boolean v7, v2, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    if-nez v7, :cond_2

    .line 73
    aget v7, p2, v9

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v9

    if-eq v7, v10, :cond_3

    .line 74
    const/16 v7, 0x2c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, v2, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    .line 79
    .local v1, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 81
    iget-object v7, v2, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v7}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    :cond_4
    if-eqz v1, :cond_2

    .line 85
    iget-boolean v7, v2, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    if-eqz v7, :cond_5

    .line 86
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    const-string v7, "text()"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 90
    :cond_5
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 92
    new-array v6, v10, [I

    .line 93
    .local v6, subNumFields:[I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 94
    .local v5, openParenIndex:I
    const/16 v7, 0x28

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p0, v1, v6}, Lcom/google/api/client/googleapis/xml/atom/GData;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 96
    aget v7, v6, v9

    invoke-static {p0, v5, v7}, Lcom/google/api/client/googleapis/xml/atom/GData;->updateFieldsBasedOnNumFields(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 101
    .end local v1           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #openParenIndex:I
    .end local v6           #subNumFields:[I
    :cond_6
    return-void
.end method

.method public static computePatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;
    .locals 4
    .parameter "patched"
    .parameter "original"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;-><init>()V

    .line 134
    .local v0, fieldsMask:Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;
    invoke-static {v0, p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GData;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .line 136
    .local v1, result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, v0, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->numDifferences:I

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "@gd:fields"

    iget-object v3, v0, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-object v1
.end method

.method public static computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;
    .locals 8
    .parameter "fieldsMask"
    .parameter "patchedObject"
    .parameter "originalObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v6

    .line 145
    .local v6, result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 146
    .local v4, patchedMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 147
    .local v2, originalMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance p1, Ljava/util/HashSet;

    .end local p1
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local p1, fieldNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .end local p2
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .end local p1           #fieldNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 151
    .local p1, name:Ljava/lang/String;
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, originalValue:Ljava/lang/Object;
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 153
    .local v5, patchedValue:Ljava/lang/Object;
    if-eq v1, v5, :cond_0

    .line 156
    if-nez v1, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 159
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    invoke-static {v3}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 160
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #originalValue:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 163
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->append(Ljava/lang/String;)V

    .line 168
    if-eqz v5, :cond_0

    .line 169
    invoke-virtual {v6, p1, v5}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #originalValue:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 171
    .restart local v3       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_7

    .line 172
    if-eqz v1, :cond_5

    if-eqz v5, :cond_5

    .line 174
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    move-object p1, v0

    .line 177
    .local p1, originalCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    move-object v3, v0

    .line 179
    .local v3, patchedCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    .line 180
    .local v7, size:I
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p1

    .end local p1           #originalCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-ne v7, p1, :cond_5

    .line 182
    const/4 p1, 0x0

    .end local v3           #patchedCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p1, i:I
    :goto_2
    if-ge p1, v7, :cond_4

    .line 183
    new-instance v3, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;-><init>()V

    .line 184
    .local v3, subFieldsMask:Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;
    invoke-static {v3, v5, v1}, Lcom/google/api/client/googleapis/xml/atom/GData;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    .line 185
    iget v3, v3, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->numDifferences:I

    .end local v3           #subFieldsMask:Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;
    if-eqz v3, :cond_6

    .line 189
    :cond_4
    if-eq p1, v7, :cond_0

    .line 195
    .end local v7           #size:I
    .end local p1           #i:I
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .end local p0
    const-string p1, "not yet implemented: support for patching collections"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    .restart local v7       #size:I
    .restart local p0
    .restart local p1       #i:I
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 198
    .end local v7           #size:I
    .local p1, name:Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->append(Ljava/lang/String;)V

    .line 200
    invoke-static {v5}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .end local v1           #originalValue:Ljava/lang/Object;
    invoke-virtual {v6, p1, v1}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .restart local v1       #originalValue:Ljava/lang/Object;
    :cond_8
    if-nez v5, :cond_9

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_9
    new-instance v7, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;

    invoke-direct {v7}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;-><init>()V

    .line 205
    .local v7, subFieldsMask:Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;
    invoke-static {v7, v5, v1}, Lcom/google/api/client/googleapis/xml/atom/GData;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v3

    .line 207
    .local v3, patch:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, v7, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->numDifferences:I

    .line 208
    .local v1, numDifferences:I
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0, p1, v7}, Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;->append(Ljava/lang/String;Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;)V

    .line 210
    invoke-virtual {v6, p1, v3}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 215
    .end local v1           #numDifferences:I
    .end local v3           #patch:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #patchedValue:Ljava/lang/Object;
    .end local v7           #subFieldsMask:Lcom/google/api/client/googleapis/xml/atom/GData$FieldsMask;
    .end local p1           #name:Ljava/lang/String;
    :cond_a
    return-object v6
.end method

.method public static getFeedFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, fieldsBuf:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GData;->appendFeedFields(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFieldsFor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, fieldsBuf:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, p0, v1}, Lcom/google/api/client/googleapis/xml/atom/GData;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static updateFieldsBasedOnNumFields(Ljava/lang/StringBuilder;II)V
    .locals 1
    .parameter "fieldsBuf"
    .parameter "openParenIndex"
    .parameter "numFields"

    .prologue
    .line 119
    packed-switch p2, :pswitch_data_0

    .line 127
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :pswitch_1
    const/16 v0, 0x2f

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
