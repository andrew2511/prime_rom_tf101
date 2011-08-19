.class public Lorg/apache/james/mime4j/util/StringArrayMap;
.super Ljava/lang/Object;
.source "StringArrayMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50f329210bb1d21bL


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static asMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, pMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 156
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/util/StringArrayMap;->asStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, value:[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #value:[Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method public static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "pValue"

    .prologue
    const/4 v1, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 69
    .end local p0
    :goto_0
    return-object v0

    .line 62
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 65
    .restart local p0
    :cond_1
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 66
    check-cast p0, [Ljava/lang/String;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    aget-object v0, p0, v1

    goto :goto_0

    .line 68
    .restart local p0
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 69
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 71
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .parameter "pValue"

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v2, 0x0

    .line 94
    .end local p0
    :goto_0
    return-object v2

    .line 86
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 87
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    aput-object p0, v2, v3

    goto :goto_0

    .line 89
    .restart local p0
    :cond_1
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 90
    check-cast p0, [Ljava/lang/String;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .line 92
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 93
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 94
    .local v1, l:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .line 96
    .end local v1           #l:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local p0
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;
    .locals 6
    .parameter "pValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v3, 0x0

    .line 145
    .end local p0
    :goto_0
    return-object v3

    .line 111
    .restart local p0
    :cond_0
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 112
    new-instance v3, Lorg/apache/james/mime4j/util/StringArrayMap$1;

    invoke-direct {v3, p0}, Lorg/apache/james/mime4j/util/StringArrayMap$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_1
    instance-of v3, p0, [Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 128
    check-cast p0, [Ljava/lang/String;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 129
    .local v2, values:[Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/util/StringArrayMap$2;

    invoke-direct {v3, v2}, Lorg/apache/james/mime4j/util/StringArrayMap$2;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v2           #values:[Ljava/lang/String;
    .restart local p0
    :cond_2
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 144
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 145
    .local v1, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_0

    .line 147
    .end local v1           #stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid parameter class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected addMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter
    .parameter "pName"
    .parameter "pValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, pMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {p1 .. p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 168
    .local v9, o:Ljava/lang/Object;
    if-nez v9, :cond_0

    .line 169
    move-object/from16 v9, p3

    .line 190
    .end local v9           #o:Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void

    .line 170
    .restart local v9       #o:Ljava/lang/Object;
    :cond_0
    instance-of v12, v9, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 171
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    move-object v0, v7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move-object v9, v7

    .line 175
    .local v9, o:Ljava/util/List;
    goto :goto_0

    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local v9, o:Ljava/lang/Object;
    :cond_1
    instance-of v12, v9, Ljava/util/List;

    if-eqz v12, :cond_2

    .line 177
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    .line 178
    .local v11, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v11

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v11           #stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    instance-of v12, v9, [Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 180
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    check-cast v9, [Ljava/lang/String;

    .end local v9           #o:Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 182
    .local v3, arr:[Ljava/lang/String;
    move-object v4, v3

    .local v4, arr$:[Ljava/lang/String;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v10, v4, v5

    .line 183
    .local v10, str:Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    .end local v10           #str:Ljava/lang/String;
    :cond_3
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-object v9, v8

    .line 187
    .local v9, o:Ljava/util/List;
    goto :goto_0

    .line 188
    .end local v3           #arr:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v9, o:Ljava/lang/Object;
    :cond_4
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid object type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public addValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/james/mime4j/util/StringArrayMap;->addMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected convertName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pName"

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNameArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 251
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pName"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueEnum(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .parameter "pName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "pName"

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
