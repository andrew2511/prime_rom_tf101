.class public final Lorg/apache/harmony/lang/annotation/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)V
    .registers 11
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, klzz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 117
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v6}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v1

    .line 118
    .local v1, defs:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    if-nez p2, :cond_10

    .line 119
    iput-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 133
    :cond_f
    return-void

    .line 122
    :cond_10
    array-length v6, v1

    new-array v6, v6, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iput-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 123
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int v2, v6, v7

    .local v2, i:I
    :goto_1b
    if-ltz v2, :cond_f

    .line 124
    move-object v0, p2

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_20
    if-ge v3, v4, :cond_40

    aget-object v5, v0, v3

    .line 125
    .local v5, val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v6, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    aget-object v7, v1, v2

    iget-object v7, v7, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 126
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v7, v1, v2

    invoke-virtual {v5, v7}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v7

    aput-object v7, v6, v2

    .line 123
    .end local v5           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 124
    .restart local v5       #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 130
    .end local v5           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_40
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v7, v1, v2

    aput-object v7, v6, v2

    goto :goto_3a
.end method

.method public static createAnnotation(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .registers 6
    .parameter
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ")",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;-><init>(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)V

    .line 100
    .local v0, antn:Lorg/apache/harmony/lang/annotation/AnnotationFactory;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v10, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v10, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 65
    .local v1, desc:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    if-nez v1, :cond_63

    .line 66
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 67
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Type is not annotation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 70
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 71
    .local v6, m:[Ljava/lang/reflect/Method;
    array-length v10, v6

    new-array v1, v10, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, idx:I
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_38
    if-ge v3, v5, :cond_5e

    aget-object v2, v0, v3

    .line 74
    .local v2, element:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 77
    .local v9, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_44
    new-instance v10, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v7, v11, v9, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v10, v1, v4
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4f} :catch_54

    .line 82
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 79
    :catch_54
    move-exception v10

    move-object v8, v10

    .line 80
    .local v8, t:Ljava/lang/Throwable;
    new-instance v10, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-direct {v10, v7, v8, v9, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v10, v1, v4

    goto :goto_4f

    .line 84
    .end local v2           #element:Ljava/lang/reflect/Method;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #t:Ljava/lang/Throwable;
    .end local v9           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5e
    sget-object v10, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v10, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v3           #i$:I
    .end local v4           #idx:I
    .end local v5           #len$:I
    .end local v6           #m:[Ljava/lang/reflect/Method;
    :cond_63
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 19
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    move-object v15, v0

    invoke-static {v15}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v5

    .line 149
    .local v5, defs:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object v13, v0

    .line 150
    .local v13, old:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    new-instance v12, Ljava/util/ArrayList;

    array-length v15, v5

    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v12, merged:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/lang/annotation/AnnotationMember;>;"
    move-object v2, v13

    .local v2, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v10, v2

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v2           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .local v9, i$:I
    :goto_21
    if-ge v9, v10, :cond_44

    aget-object v6, v2, v9

    .line 153
    .local v6, el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    move-object v3, v5

    .local v3, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_28
    if-ge v8, v11, :cond_40

    aget-object v7, v3, v8

    .line 154
    .local v7, el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v15, v7, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    move-object v0, v6

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3d

    .line 152
    .end local v7           #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :goto_39
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_21

    .line 153
    .end local v9           #i$:I
    .restart local v7       #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .restart local v8       #i$:I
    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 158
    .end local v7           #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_40
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 160
    .end local v3           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v6           #el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :cond_44
    move-object v2, v5

    .restart local v2       #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v10, v2

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    move v9, v8

    .end local v2           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .restart local v9       #i$:I
    :goto_48
    if-ge v9, v10, :cond_72

    aget-object v4, v2, v9

    .line 161
    .local v4, def:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    move-object v3, v13

    .restart local v3       #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_4f
    if-ge v8, v11, :cond_6e

    aget-object v14, v3, v8

    .line 162
    .local v14, val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v15, v14, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    move-object v0, v4

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6b

    .line 165
    invoke-virtual {v14, v4}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v14           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :goto_67
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_48

    .line 161
    .end local v9           #i$:I
    .restart local v8       #i$:I
    .restart local v14       #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_6b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 169
    .end local v14           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_6e
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 171
    .end local v3           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v4           #def:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :cond_72
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-interface {v12, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 20
    .parameter "obj"

    .prologue
    .line 185
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_9

    .line 186
    const/16 v16, 0x1

    .line 245
    :goto_8
    return v16

    .line 188
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c

    .line 189
    const/16 v16, 0x0

    goto :goto_8

    .line 191
    :cond_1c
    const/4 v9, 0x0

    .line 192
    .local v9, handler:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_7b

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v9

    .local v9, handler:Ljava/lang/reflect/InvocationHandler;
    move-object v0, v9

    instance-of v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    move/from16 v16, v0

    if-eqz v16, :cond_7b

    .line 194
    move-object v0, v9

    check-cast v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    move-object v14, v0

    .line 195
    .local v14, other:Lorg/apache/harmony/lang/annotation/AnnotationFactory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v14

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_54

    .line 196
    const/16 v16, 0x0

    goto :goto_8

    .line 198
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object v3, v0

    .local v3, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v12, v3

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v3           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_5c
    if-ge v11, v12, :cond_78

    aget-object v7, v3, v11

    .line 199
    .local v7, el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v4, v14, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v4, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v13, v4

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_64
    if-ge v10, v13, :cond_75

    aget-object v8, v4, v10

    .line 200
    .local v8, el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    invoke-virtual {v7, v8}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_72

    .line 198
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_5c

    .line 199
    .end local v11           #i$:I
    .restart local v10       #i$:I
    :cond_72
    add-int/lit8 v10, v10, 0x1

    goto :goto_64

    .line 204
    .end local v8           #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_75
    const/16 v16, 0x0

    goto :goto_8

    .line 206
    .end local v4           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v7           #el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .restart local v11       #i$:I
    :cond_78
    const/16 v16, 0x1

    goto :goto_8

    .line 211
    .end local v9           #handler:Ljava/lang/reflect/InvocationHandler;
    .end local v11           #i$:I
    .end local v14           #other:Lorg/apache/harmony/lang/annotation/AnnotationFactory;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object v3, v0

    .restart local v3       #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_82
    if-ge v10, v12, :cond_10d

    aget-object v6, v3, v10

    .line 212
    .local v6, el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    move-object v0, v6

    iget-char v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    move/from16 v16, v0

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_97

    .line 214
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 217
    :cond_97
    :try_start_97
    move-object v0, v6

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v16

    if-nez v16, :cond_af

    .line 218
    new-instance v16, Lorg/apache/harmony/lang/annotation/AnnotationFactory$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/lang/annotation/AnnotationFactory$1;-><init>(Lorg/apache/harmony/lang/annotation/AnnotationFactory;Lorg/apache/harmony/lang/annotation/AnnotationMember;)V

    invoke-static/range {v16 .. v16}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 227
    :cond_af
    move-object v0, v6

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 228
    .local v15, otherValue:Ljava/lang/Object;
    if-eqz v15, :cond_f1

    .line 229
    move-object v0, v6

    iget-char v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    move/from16 v16, v0

    const/16 v17, 0x5b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_df

    .line 230
    invoke-virtual {v6, v15}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_109

    .line 231
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 234
    :cond_df
    move-object v0, v6

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_109

    .line 235
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 238
    :cond_f1
    move-object v0, v6

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    sget-object v17, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_f8} :catch_102

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_109

    .line 239
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 241
    .end local v15           #otherValue:Ljava/lang/Object;
    :catch_102
    move-exception v16

    move-object/from16 v5, v16

    .line 242
    .local v5, e:Ljava/lang/Throwable;
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 211
    .end local v5           #e:Ljava/lang/Throwable;
    .restart local v15       #otherValue:Ljava/lang/Object;
    :cond_109
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_82

    .line 245
    .end local v6           #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v15           #otherValue:Ljava/lang/Object;
    :cond_10d
    const/16 v16, 0x1

    goto/16 :goto_8
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, hash:I
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_5
    if-ge v3, v4, :cond_11

    aget-object v1, v0, v3

    .line 257
    .local v1, element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    invoke-virtual {v1}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 259
    .end local v1           #element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_11
    return v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 288
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 290
    .local v6, params:[Ljava/lang/Class;
    array-length v8, v6

    if-nez v8, :cond_6e

    .line 291
    const-string v8, "annotationType"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 292
    iget-object v8, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 317
    :goto_16
    return-object v8

    .line 293
    :cond_17
    const-string v8, "toString"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 294
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_16

    .line 295
    :cond_24
    const-string v8, "hashCode"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 296
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_16

    .line 300
    :cond_35
    const/4 v2, 0x0

    .line 301
    .local v2, element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3a
    if-ge v3, v4, :cond_47

    aget-object v1, v0, v3

    .line 302
    .local v1, el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v8, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 303
    move-object v2, v1

    .line 307
    .end local v1           #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_47
    if-eqz v2, :cond_51

    iget-object v8, v2, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v8}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 308
    :cond_51
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 301
    .restart local v1       #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 310
    .end local v1           #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_5e
    invoke-virtual {v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->validateValue()Ljava/lang/Object;

    move-result-object v7

    .line 311
    .local v7, value:Ljava/lang/Object;
    if-nez v7, :cond_6c

    .line 312
    new-instance v8, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-direct {v8, v9, v5}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    :cond_6c
    move-object v8, v7

    .line 314
    goto :goto_16

    .line 316
    .end local v0           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v2           #element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #value:Ljava/lang/Object;
    :cond_6e
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8b

    aget-object v8, v6, v10

    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_8b

    const-string v8, "equals"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 317
    aget-object v8, p3, v10

    invoke-virtual {p0, v8}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_16

    .line 319
    :cond_8b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid method for annotation type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, res:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v2, v2

    if-ge v0, v2, :cond_56

    .line 270
    if-eqz v0, :cond_3a

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 275
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
