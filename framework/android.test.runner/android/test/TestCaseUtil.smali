.class public Landroid/test/TestCaseUtil;
.super Ljava/lang/Object;
.source "TestCaseUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createTestSuite(Ljava/lang/Class;)Ljunit/framework/TestSuite;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)",
            "Ljunit/framework/TestSuite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/Test;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v0

    .line 160
    .local v0, test:Ljunit/framework/Test;
    if-nez v0, :cond_11

    .line 161
    new-instance v2, Ljunit/framework/TestSuite;

    invoke-direct {v2, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    .line 169
    .end local v0           #test:Ljunit/framework/Test;
    :goto_10
    return-object v2

    .line 163
    .restart local v0       #test:Ljunit/framework/Test;
    :cond_11
    const-class v2, Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 164
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, testSuite:Ljunit/framework/TestSuite;
    invoke-virtual {v1, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    move-object v2, v1

    .line 166
    goto :goto_10

    .line 169
    .end local v1           #testSuite:Ljunit/framework/TestSuite;
    :cond_2f
    check-cast v0, Ljunit/framework/TestSuite;

    .end local v0           #test:Ljunit/framework/Test;
    move-object v2, v0

    goto :goto_10
.end method

.method public static getTestAtIndex(Ljunit/framework/TestSuite;I)Ljunit/framework/Test;
    .registers 6
    .parameter "testSuite"
    .parameter "position"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, index:I
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v0

    .line 145
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 146
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/Test;

    .line 147
    .local v2, test:Ljunit/framework/Test;
    if-ne v1, p1, :cond_15

    move-object v3, v2

    .line 152
    .end local v2           #test:Ljunit/framework/Test;
    :goto_14
    return-object v3

    .line 150
    .restart local v2       #test:Ljunit/framework/Test;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_5

    .line 152
    .end local v2           #test:Ljunit/framework/Test;
    :cond_18
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static getTestCaseNames(Ljunit/framework/Test;Z)Ljava/util/List;
    .registers 7
    .parameter "test"
    .parameter "flatten"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, tests:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/Test;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    .local v2, testCaseNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    .line 48
    .local v0, aTest:Ljunit/framework/Test;
    invoke-static {v0}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 50
    .end local v0           #aTest:Ljunit/framework/Test;
    :cond_20
    return-object v2
.end method

.method public static getTestName(Ljunit/framework/Test;)Ljava/lang/String;
    .registers 7
    .parameter "test"

    .prologue
    .line 124
    instance-of v5, p0, Ljunit/framework/TestCase;

    if-eqz v5, :cond_d

    .line 125
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestCase;

    move-object v3, v0

    .line 126
    .local v3, testCase:Ljunit/framework/TestCase;
    invoke-virtual {v3}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    .line 139
    .end local v3           #testCase:Ljunit/framework/TestCase;
    :goto_c
    return-object v5

    .line 127
    :cond_d
    instance-of v5, p0, Ljunit/framework/TestSuite;

    if-eqz v5, :cond_2d

    .line 128
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestSuite;

    move-object v4, v0

    .line 129
    .local v4, testSuite:Ljunit/framework/TestSuite;
    invoke-virtual {v4}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 131
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, index:I
    const/4 v5, -0x1

    if-le v1, v5, :cond_2b

    .line 133
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_2b
    move-object v5, v2

    .line 135
    goto :goto_c

    .line 139
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #testSuite:Ljunit/framework/TestSuite;
    :cond_2d
    const-string v5, ""

    goto :goto_c
.end method

.method public static getTests(Ljunit/framework/Test;Z)Ljava/util/List;
    .registers 3
    .parameter "test"
    .parameter "flatten"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;
    .registers 10
    .parameter "test"
    .parameter "flatten"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, seen:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 60
    .local v3, testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/Test;>;"
    if-eqz p0, :cond_49

    .line 62
    const/4 v5, 0x0

    .line 68
    .local v5, workingTest:Ljunit/framework/Test;
    instance-of v6, p0, Ljunit/framework/TestCase;

    if-eqz v6, :cond_1d

    move-object v0, p0

    check-cast v0, Ljunit/framework/TestCase;

    move-object v6, v0

    invoke-virtual {v6}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v5

    .line 73
    :cond_1d
    if-nez v5, :cond_20

    .line 74
    move-object v5, p0

    .line 77
    :cond_20
    instance-of v6, v5, Ljunit/framework/TestSuite;

    if-eqz v6, :cond_46

    .line 78
    move-object v0, v5

    check-cast v0, Ljunit/framework/TestSuite;

    move-object v4, v0

    .line 79
    .local v4, testSuite:Ljunit/framework/TestSuite;
    invoke-virtual {v4}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v2

    .line 80
    .local v2, enumeration:Ljava/util/Enumeration;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 81
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/Test;

    .line 82
    .local v1, childTest:Ljunit/framework/Test;
    if-eqz p1, :cond_42

    .line 83
    invoke-static {v1, p1, p2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    .line 85
    :cond_42
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 89
    .end local v1           #childTest:Ljunit/framework/Test;
    .end local v2           #enumeration:Ljava/util/Enumeration;
    .end local v4           #testSuite:Ljunit/framework/TestSuite;
    :cond_46
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5           #workingTest:Ljunit/framework/Test;
    :cond_49
    return-object v3
.end method

.method private static invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;
    .registers 6
    .parameter "testClass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    .prologue
    .local p1, seen:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v3, 0x0

    .line 98
    :try_start_1
    const-string v1, "suite"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    .local v0, suiteMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 108
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_29

    .line 110
    const/4 v1, 0x0

    const/4 p0, 0x0

    :try_start_1f
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljunit/framework/Test;
    :try_end_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_27} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_27} :catch_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_27} :catch_29

    move-object v1, p0

    .line 120
    .end local v0           #suiteMethod:Ljava/lang/reflect/Method;
    :goto_28
    return-object v1

    .line 117
    :catch_29
    move-exception v1

    :cond_2a
    :goto_2a
    move-object v1, v3

    .line 120
    goto :goto_28

    .line 113
    .restart local v0       #suiteMethod:Ljava/lang/reflect/Method;
    :catch_2c
    move-exception v1

    goto :goto_2a

    .line 111
    :catch_2e
    move-exception v1

    goto :goto_2a
.end method
