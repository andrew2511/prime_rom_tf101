.class public Ljunit/runner/LoadingTestCollector;
.super Ljunit/runner/ClassPathTestCollector;
.source "LoadingTestCollector.java"


# instance fields
.field fLoader:Ljunit/runner/TestCaseClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljunit/runner/ClassPathTestCollector;-><init>()V

    .line 19
    new-instance v0, Ljunit/runner/TestCaseClassLoader;

    invoke-direct {v0}, Ljunit/runner/TestCaseClassLoader;-><init>()V

    iput-object v0, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    .line 20
    return-void
.end method


# virtual methods
.method classFromFile(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .parameter "classFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->classNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, className:Ljava/lang/String;
    iget-object v1, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    invoke-virtual {v1, v0}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 39
    iget-object v1, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .line 40
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method hasPublicConstructor(Ljava/lang/Class;)Z
    .registers 4
    .parameter "testClass"

    .prologue
    .line 64
    :try_start_0
    invoke-static {p1}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    .line 68
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 65
    :catch_5
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method hasSuiteMethod(Ljava/lang/Class;)Z
    .registers 6
    .parameter "testClass"

    .prologue
    const/4 v3, 0x0

    .line 55
    :try_start_1
    const-string v1, "suite"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    .line 59
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 56
    :catch_b
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move v1, v3

    .line 57
    goto :goto_a
.end method

.method isTestClass(Ljava/lang/Class;)Z
    .registers 4
    .parameter "testClass"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 50
    :goto_8
    return v0

    .line 46
    :cond_9
    const-class v0, Ljunit/framework/Test;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->hasPublicConstructor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 49
    goto :goto_8

    .line 50
    :cond_23
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isTestClass(Ljava/lang/String;)Z
    .registers 5
    .parameter "classFileName"

    .prologue
    const/4 v2, 0x0

    .line 24
    :try_start_1
    const-string v1, ".class"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 25
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->classFromFile(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, testClass:Ljava/lang/Class;
    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Ljunit/runner/LoadingTestCollector;->isTestClass(Ljava/lang/Class;)Z
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_12} :catch_19

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    .line 33
    .end local v0           #testClass:Ljava/lang/Class;
    :goto_16
    return v1

    .restart local v0       #testClass:Ljava/lang/Class;
    :cond_17
    move v1, v2

    .line 26
    goto :goto_16

    .line 31
    .end local v0           #testClass:Ljava/lang/Class;
    :catch_19
    move-exception v1

    :cond_1a
    :goto_1a
    move v1, v2

    .line 33
    goto :goto_16

    .line 29
    :catch_1c
    move-exception v1

    goto :goto_1a
.end method
