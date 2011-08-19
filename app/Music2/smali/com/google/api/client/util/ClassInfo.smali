.class public final Lcom/google/api/client/util/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# static fields
.field private static final CACHE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/api/client/util/ClassInfo$1;

    invoke-direct {v0}, Lcom/google/api/client/util/ClassInfo$1;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    .line 273
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 274
    .local v8, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 276
    .local v7, keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    if-eqz v8, :cond_0

    .line 277
    invoke-static {v8}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v10

    iget-object v9, v10, Lcom/google/api/client/util/ClassInfo;->keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 279
    .local v9, superKeyNameToFieldInfoMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    if-eqz v9, :cond_0

    .line 280
    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 283
    .end local v9           #superKeyNameToFieldInfoMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 284
    .local v4, fields:[Ljava/lang/reflect/Field;
    array-length v6, v4

    .line 285
    .local v6, fieldsSize:I
    const/4 v5, 0x0

    .local v5, fieldsIndex:I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 286
    aget-object v1, v4, v5

    .line 287
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    .line 288
    .local v2, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v2, :cond_1

    .line 285
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v3, v2, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 292
    .local v3, fieldName:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/FieldInfo;

    .line 293
    .local v0, conflictingFieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_2

    .line 294
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "two fields have the same data key name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 298
    :cond_2
    invoke-virtual {v7, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 300
    .end local v0           #conflictingFieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v3           #fieldName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 301
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/api/client/util/ClassInfo;->keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 305
    :goto_2
    return-void

    .line 303
    :cond_4
    iput-object v7, p0, Lcom/google/api/client/util/ClassInfo;->keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;

    goto :goto_2
.end method

.method public static getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 5
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 232
    if-eqz p0, :cond_0

    .line 233
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 234
    .local v0, genericType:Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 235
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0           #genericType:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 237
    .local v1, typeArgs:[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 238
    aget-object p0, v1, v4

    .end local p0
    check-cast p0, Ljava/lang/Class;

    move-object v2, p0

    .line 242
    .end local v1           #typeArgs:[Ljava/lang/reflect/Type;
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMapValueParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 1
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .parameter "genericType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 260
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 261
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 263
    .local v0, typeArgs:[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 264
    aget-object p0, v0, v3

    check-cast p0, Ljava/lang/Class;

    move-object v1, p0

    .line 267
    .end local v0           #typeArgs:[Ljava/lang/reflect/Type;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;
    .locals 4
    .parameter "e"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/IllegalArgumentException;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to create new instance of class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, " (and) because it is abstract"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const-string v2, " (and) because it is not static"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    const-string v2, " (and) because it is not public"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 156
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 158
    .local v1, e1:Ljava/lang/NoSuchMethodException;
    const-string v2, " (and) because it has no public default constructor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, collectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    :goto_0
    return-object v1

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x600

    if-nez v1, :cond_2

    .line 193
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object v1, v0

    .line 195
    goto :goto_0

    .line 197
    .end local v0           #result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_2
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 200
    :cond_3
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_0

    .line 203
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no default collection class defined for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 137
    .local v1, newInstance:Ljava/lang/Object;,"TT;"
    return-object v1

    .line 132
    .end local v1           #newInstance:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-static {v0, p0}, Lcom/google/api/client/util/ClassInfo;->handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 134
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-static {v0, p0}, Lcom/google/api/client/util/ClassInfo;->handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public static newMapInstance(Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, mapClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x600

    if-nez v1, :cond_0

    .line 213
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, v0

    .line 221
    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 217
    :cond_0
    if-eqz p0, :cond_1

    const-class v1, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    :cond_1
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_2
    if-eqz p0, :cond_3

    const-class v1, Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    :cond_3
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 223
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no default map class defined for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 71
    :goto_0
    return-object v2

    .line 65
    :cond_0
    sget-object v2, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 66
    .local v0, cache:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Lcom/google/api/client/util/ClassInfo;>;"
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/ClassInfo;

    .line 67
    .local v1, classInfo:Lcom/google/api/client/util/ClassInfo;
    if-nez v1, :cond_1

    .line 68
    new-instance v1, Lcom/google/api/client/util/ClassInfo;

    .end local v1           #classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-direct {v1, p0}, Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;)V

    .line 69
    .restart local v1       #classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v1

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter "keyName"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 101
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;
    .locals 2
    .parameter "keyName"

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 90
    .end local p0
    :cond_0
    :goto_0
    return-object v1

    .line 85
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 87
    .local v0, keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/api/client/util/FieldInfo;

    move-object v1, p0

    goto :goto_0
.end method

.method public getKeyCount()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 111
    .local v0, keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    if-nez v0, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getKeyNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 121
    .local v0, keyNameToFieldInfoMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method
