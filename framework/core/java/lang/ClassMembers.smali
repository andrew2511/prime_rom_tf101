.class Ljava/lang/ClassMembers;
.super Ljava/lang/Object;
.source "ClassMembers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassMembers$EnumComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ENUM_COMPARATOR:Ljava/lang/ClassMembers$EnumComparator;

.field static final REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

.field static final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassMembers",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile allFields:[Ljava/lang/reflect/Field;

.field private volatile allPublicFields:[Ljava/lang/reflect/Field;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile declaredFields:[Ljava/lang/reflect/Field;

.field private volatile declaredMethods:[Ljava/lang/reflect/Method;

.field private volatile declaredPublicFields:[Ljava/lang/reflect/Field;

.field private volatile declaredPublicMethods:[Ljava/lang/reflect/Method;

.field private volatile enumValuesByName:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private volatile enumValuesInOrder:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private volatile methods:[Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 45
    new-instance v2, Ljava/lang/ClassMembers$1;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/ClassMembers$1;-><init>(I)V

    sput-object v2, Ljava/lang/ClassMembers;->cache:Llibcore/util/BasicLruCache;

    .line 54
    new-instance v2, Ljava/lang/ClassMembers$EnumComparator;

    invoke-direct {v2, v4}, Ljava/lang/ClassMembers$EnumComparator;-><init>(Ljava/lang/ClassMembers$1;)V

    sput-object v2, Ljava/lang/ClassMembers;->ENUM_COMPARATOR:Ljava/lang/ClassMembers$EnumComparator;

    .line 58
    invoke-static {}, Ljava/lang/ClassMembers;->getReflectionAccess()Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    move-result-object v2

    sput-object v2, Ljava/lang/ClassMembers;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    .line 106
    :try_start_17
    const-class v2, Ljava/util/EnumSet;

    const-string v3, "LANG_BOOTSTRAP"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 107
    .local v1, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/ClassMembers;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_25} :catch_31

    .line 114
    const/4 v2, 0x0

    :try_start_26
    sget-object v3, Ljava/lang/LangAccessImpl;->THE_ONE:Ljava/lang/LangAccessImpl;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2b} :catch_39

    .line 121
    sget-object v2, Ljava/lang/LangAccessImpl;->THE_ONE:Ljava/lang/LangAccessImpl;

    invoke-static {v2}, Lorg/apache/harmony/kernel/vm/LangAccess;->setInstance(Lorg/apache/harmony/kernel/vm/LangAccess;)V

    .line 122
    return-void

    .line 108
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_31
    move-exception v2

    move-object v0, v2

    .line 110
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 115
    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 117
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-nez p1, :cond_d

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_d
    iput-object p1, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    .line 135
    return-void
.end method

.method private callEnumValues()[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v3, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    const-string v4, "values"

    sget-object v5, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 523
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 p0, 0x0

    :try_start_d
    check-cast p0, [Ljava/lang/Object;

    .end local p0           #this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1a} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_1a} :catch_23

    return-object p0

    .line 524
    :catch_1b
    move-exception v3

    move-object v0, v3

    .line 526
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 527
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_23
    move-exception v3

    move-object v0, v3

    .line 528
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 529
    .local v2, te:Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_30

    .line 530
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2           #te:Ljava/lang/Throwable;
    throw v2

    .line 531
    .restart local v2       #te:Ljava/lang/Throwable;
    :cond_30
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_37

    .line 532
    check-cast v2, Ljava/lang/Error;

    .end local v2           #te:Ljava/lang/Throwable;
    throw v2

    .line 534
    .restart local v2       #te:Ljava/lang/Throwable;
    :cond_37
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static deepCopy([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .registers 6
    .parameter "orig"

    .prologue
    .line 417
    array-length v1, p0

    .line 418
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/reflect/Field;

    .line 420
    .local v2, result:[Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_15

    .line 421
    sget-object v3, Ljava/lang/ClassMembers;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v2, v0

    .line 420
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 424
    :cond_15
    return-object v2
.end method

.method public static deepCopy([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .registers 6
    .parameter "orig"

    .prologue
    .line 276
    array-length v1, p0

    .line 277
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/reflect/Method;

    .line 279
    .local v2, result:[Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_15

    .line 280
    sget-object v3, Ljava/lang/ClassMembers;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v0

    .line 279
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 283
    :cond_15
    return-object v2
.end method

.method private static findAllFields(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter "publicOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .local p2, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    if-eqz p0, :cond_38

    .line 387
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/ClassMembers;->getDeclaredFields(Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v4, :cond_23

    aget-object v1, v0, v2

    .line 388
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, signature:Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 390
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 396
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v5           #signature:Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v4, :cond_33

    aget-object v3, v0, v2

    .line 397
    .local v3, interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v3, p1, p2, p3}, Ljava/lang/ClassMembers;->findAllFields(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 400
    .end local v3           #interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 402
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_38
    return-void
.end method

.method private findMethods()[Ljava/lang/reflect/Method;
    .registers 8

    .prologue
    .line 178
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, allMethods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    iget-object v5, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/ClassMembers;->getMethodsRecursive(Ljava/lang/Class;Ljava/util/List;)V

    .line 185
    sget-object v5, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v3, 0x0

    .line 188
    .local v3, previous:Ljava/lang/reflect/Method;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 189
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_3d

    sget-object v5, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-interface {v5, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_1d

    .line 194
    :cond_3d
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    move-object v3, v2

    goto :goto_1d

    .line 197
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_42
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static getConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .registers 13
    .parameter
    .parameter "name"
    .parameter "recursive"
    .parameter "publicOnly"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    .line 218
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 220
    :cond_a
    if-nez p1, :cond_14

    .line 221
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    :cond_14
    if-nez p4, :cond_18

    .line 224
    sget-object p4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 226
    :cond_18
    move-object v0, p4

    .local v0, arr$:[Ljava/lang/Class;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1b
    if-ge v2, v3, :cond_2c

    aget-object v1, v0, v2

    .line 227
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_29

    .line 228
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 231
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2c
    if-eqz p2, :cond_60

    invoke-static {p0, p1, p4}, Ljava/lang/ClassMembers;->getPublicConstructorOrMethodRecursive(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    move-object v4, v5

    .line 234
    .local v4, result:Ljava/lang/reflect/Member;
    :goto_33
    if-eqz v4, :cond_3f

    if-eqz p3, :cond_66

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_66

    .line 235
    :cond_3f
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    .end local v4           #result:Ljava/lang/reflect/Member;
    :cond_60
    invoke-static {p0, p1, p4}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    move-object v4, v5

    goto :goto_33

    .line 237
    .restart local v4       #result:Ljava/lang/reflect/Member;
    :cond_66
    return-object v4
.end method

.method private getDeclaredPublicMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 156
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    .line 157
    iget-object v0, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    .line 160
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getFullListOfFields(Z)[Ljava/lang/reflect/Field;
    .registers 5
    .parameter "publicOnly"

    .prologue
    .line 360
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 363
    .local v1, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    invoke-static {v2, v0, v1, p1}, Ljava/lang/ClassMembers;->findAllFields(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    check-cast p0, [Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private static getMethodsRecursive(Ljava/lang/Class;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_17

    .line 207
    invoke-virtual {v1}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v5

    invoke-direct {v5}, Ljava/lang/ClassMembers;->getDeclaredPublicMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 210
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v4, :cond_27

    aget-object v3, v0, v2

    .line 211
    .local v3, ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v3, p1}, Ljava/lang/ClassMembers;->getMethodsRecursive(Ljava/lang/Class;Ljava/util/List;)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 213
    .end local v3           #ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_27
    return-void
.end method

.method private static getPublicConstructorOrMethodRecursive(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .registers 10
    .parameter
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_18

    .line 244
    invoke-static {v1, p1, p2}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    .line 245
    .local v5, result:Ljava/lang/reflect/Member;
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_13

    move-object v6, v5

    .line 260
    .end local v5           #result:Ljava/lang/reflect/Member;
    :goto_12
    return-object v6

    .line 243
    .restart local v5       #result:Ljava/lang/reflect/Member;
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 251
    .end local v5           #result:Ljava/lang/reflect/Member;
    :cond_18
    move-object v1, p0

    :goto_19
    if-eqz v1, :cond_3d

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_21
    if-ge v2, v4, :cond_38

    aget-object v3, v0, v2

    .line 253
    .local v3, ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v3, p1, p2}, Ljava/lang/ClassMembers;->getPublicConstructorOrMethodRecursive(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    .line 254
    .restart local v5       #result:Ljava/lang/reflect/Member;
    if-eqz v5, :cond_35

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_35

    move-object v6, v5

    .line 255
    goto :goto_12

    .line 252
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 251
    .end local v3           #ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #result:Ljava/lang/reflect/Member;
    :cond_38
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_19

    .line 260
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_3d
    const/4 v6, 0x0

    goto :goto_12
.end method

.method private static getReflectionAccess()Lorg/apache/harmony/kernel/vm/ReflectionAccess;
    .registers 5

    .prologue
    .line 553
    :try_start_0
    const-class v2, Ljava/lang/reflect/AccessibleObject;

    const-string v3, "getReflectionAccess"

    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 555
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Class;->setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 556
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/kernel/vm/ReflectionAccess;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_25

    return-object v0

    .line 557
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 559
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 560
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 561
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getAllFields()[Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 329
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->allFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_b

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ClassMembers;->getFullListOfFields(Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->allFields:[Ljava/lang/reflect/Field;

    .line 333
    :cond_b
    iget-object v0, p0, Ljava/lang/ClassMembers;->allFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getAllPublicFields()[Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 343
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->allPublicFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_b

    .line 344
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ClassMembers;->getFullListOfFields(Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->allPublicFields:[Ljava/lang/reflect/Field;

    .line 347
    :cond_b
    iget-object v0, p0, Ljava/lang/ClassMembers;->allPublicFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 292
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    .line 293
    iget-object v0, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->declaredFields:[Ljava/lang/reflect/Field;

    .line 296
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getDeclaredFields(Z)[Ljava/lang/reflect/Field;
    .registers 3
    .parameter "publicOnly"

    .prologue
    .line 319
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/ClassMembers;->getDeclaredPublicFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/ClassMembers;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_6
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 143
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    .line 144
    iget-object v0, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->declaredMethods:[Ljava/lang/reflect/Method;

    .line 147
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getDeclaredPublicFields()[Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 305
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredPublicFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    .line 306
    iget-object v0, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->declaredPublicFields:[Ljava/lang/reflect/Field;

    .line 309
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassMembers;->declaredPublicFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getEnumValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 437
    invoke-virtual {p0}, Ljava/lang/ClassMembers;->getEnumValuesByName()[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    check-cast p0, [Ljava/lang/Enum;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Enum;

    move-object v6, v0

    .line 439
    .local v6, values:[Ljava/lang/Enum;
    if-nez v6, :cond_10

    move-object v7, v9

    .line 467
    :goto_f
    return-object v7

    .line 445
    :cond_10
    const/4 v5, 0x0

    .line 446
    .local v5, min:I
    array-length v7, v6

    sub-int v4, v7, v8

    .line 448
    .local v4, max:I
    :goto_14
    if-gt v5, v4, :cond_32

    .line 454
    sub-int v7, v4, v5

    shr-int/lit8 v7, v7, 0x1

    add-int v3, v5, v7

    .line 455
    .local v3, guessIdx:I
    aget-object v2, v6, v3

    .line 456
    .local v2, guess:Ljava/lang/Enum;
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, cmp:I
    if-gez v1, :cond_2b

    .line 459
    sub-int v4, v3, v8

    goto :goto_14

    .line 460
    :cond_2b
    if-lez v1, :cond_30

    .line 461
    add-int/lit8 v5, v3, 0x1

    goto :goto_14

    :cond_30
    move-object v7, v2

    .line 463
    goto :goto_f

    .end local v1           #cmp:I
    .end local v2           #guess:Ljava/lang/Enum;
    .end local v3           #guessIdx:I
    :cond_32
    move-object v7, v9

    .line 467
    goto :goto_f
.end method

.method public getEnumValuesByName()[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v2, p0, Ljava/lang/ClassMembers;->enumValuesByName:[Ljava/lang/Object;

    if-nez v2, :cond_1d

    .line 478
    invoke-virtual {p0}, Ljava/lang/ClassMembers;->getEnumValuesInOrder()[Ljava/lang/Object;

    move-result-object v1

    .line 480
    .local v1, values:[Ljava/lang/Object;,"[TT;"
    if-eqz v1, :cond_1d

    .line 481
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #values:[Ljava/lang/Object;,"[TT;"
    check-cast v1, [Ljava/lang/Object;

    .line 482
    .restart local v1       #values:[Ljava/lang/Object;,"[TT;"
    move-object v0, v1

    check-cast v0, [Ljava/lang/Enum;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Enum;

    sget-object v3, Ljava/lang/ClassMembers;->ENUM_COMPARATOR:Ljava/lang/ClassMembers$EnumComparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 488
    iput-object v1, p0, Ljava/lang/ClassMembers;->enumValuesByName:[Ljava/lang/Object;

    .line 492
    .end local v1           #values:[Ljava/lang/Object;,"[TT;"
    :cond_1d
    iget-object v2, p0, Ljava/lang/ClassMembers;->enumValuesByName:[Ljava/lang/Object;

    return-object v2
.end method

.method public getEnumValuesInOrder()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->enumValuesInOrder:[Ljava/lang/Object;

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/lang/ClassMembers;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 504
    invoke-direct {p0}, Ljava/lang/ClassMembers;->callEnumValues()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassMembers;->enumValuesInOrder:[Ljava/lang/Object;

    .line 507
    :cond_12
    iget-object v0, p0, Ljava/lang/ClassMembers;->enumValuesInOrder:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 169
    .local p0, this:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassMembers;->methods:[Ljava/lang/reflect/Method;

    .line 170
    .local v0, cachedResult:[Ljava/lang/reflect/Method;
    if-nez v0, :cond_a

    .line 171
    invoke-direct {p0}, Ljava/lang/ClassMembers;->findMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ClassMembers;->methods:[Ljava/lang/reflect/Method;

    .line 174
    :cond_a
    iget-object v1, p0, Ljava/lang/ClassMembers;->methods:[Ljava/lang/reflect/Method;

    return-object v1
.end method
