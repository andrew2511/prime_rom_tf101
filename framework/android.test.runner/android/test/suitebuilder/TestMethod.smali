.class public Landroid/test/suitebuilder/TestMethod;
.super Ljava/lang/Object;
.source "TestMethod.java"


# instance fields
.field private final enclosingClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final enclosingClassname:Ljava/lang/String;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, enclosingClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .registers 4
    .parameter "method"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, enclosingClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestCase;)V
    .registers 4
    .parameter "testCase"

    .prologue
    .line 47
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method private instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .registers 13
    .parameter "testCaseClass"
    .parameter "testName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 81
    .local v2, constructors:[Ljava/lang/reflect/Constructor;
    array-length v7, v2

    if-nez v7, :cond_11

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v7

    .line 93
    .end local p0
    :goto_10
    return-object v7

    .line 84
    .restart local p0
    :cond_11
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_45

    aget-object v1, v0, v3

    .line 85
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 86
    .local v5, params:[Ljava/lang/Class;
    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestMethod;->noargsConstructor([Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 87
    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljunit/framework/TestCase;

    .line 90
    .local v6, test:Ljunit/framework/TestCase;
    invoke-virtual {v6, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    move-object v7, v6

    .line 91
    goto :goto_10

    .line 92
    .end local v6           #test:Ljunit/framework/TestCase;
    :cond_2f
    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestMethod;->singleStringConstructor([Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 93
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljunit/framework/TestCase;

    move-object v7, p0

    goto :goto_10

    .line 84
    .restart local p0
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 98
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    .end local v5           #params:[Ljava/lang/Class;
    :cond_45
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to locate a constructor for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private noargsConstructor([Ljava/lang/Class;)Z
    .registers 3
    .parameter "params"

    .prologue
    .line 107
    array-length v0, p1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private singleStringConstructor([Ljava/lang/Class;)Z
    .registers 6
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    array-length v0, p1

    if-ne v0, v3, :cond_11

    aget-object v0, p1, v2

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method


# virtual methods
.method public createTest()Ljunit/framework/TestCase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 131
    :goto_5
    return v2

    .line 115
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    .line 116
    goto :goto_5

    .line 119
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/test/suitebuilder/TestMethod;

    move-object v1, v0

    .line 121
    .local v1, that:Landroid/test/suitebuilder/TestMethod;
    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    iget-object v3, v1, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_26
    move v2, v4

    .line 124
    goto :goto_5

    .line 121
    :cond_28
    iget-object v2, v1, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 126
    :cond_2c
    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    iget-object v3, v1, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_3a
    move v2, v4

    .line 129
    goto :goto_5

    .line 126
    :cond_3c
    iget-object v2, v1, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-nez v2, :cond_3a

    :cond_40
    move v2, v5

    .line 131
    goto :goto_5
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 62
    :goto_13
    return-object v1

    .line 61
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 62
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnclosingClassname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 138
    .local v0, result:I
    :goto_c
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_18
    add-int v0, v1, v2

    .line 139
    return v0

    .end local v0           #result:I
    :cond_1b
    move v0, v3

    .line 137
    goto :goto_c

    .restart local v0       #result:I
    :cond_1d
    move v2, v3

    .line 138
    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
