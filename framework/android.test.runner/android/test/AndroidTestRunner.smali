.class public Landroid/test/AndroidTestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "AndroidTestRunner.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSkipExecution:Z

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private mTestClassName:Ljava/lang/String;

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTestResult:Ljunit/framework/TestResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    .line 42
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    return-void
.end method

.method private buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .registers 7
    .parameter "testClass"
    .parameter "testMethodName"

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 95
    .local v1, testCase:Ljunit/framework/TestCase;
    invoke-virtual {v1, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_29

    move-object v2, v1

    .line 103
    .end local v1           #testCase:Ljunit/framework/TestCase;
    :goto_a
    return-object v2

    .line 97
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 103
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_27
    const/4 v2, 0x0

    goto :goto_a

    .line 99
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 100
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_27
.end method

.method private getTest(Ljava/lang/Class;)Ljunit/framework/Test;
    .registers 6
    .parameter "clazz"

    .prologue
    .line 112
    const-class v2, Landroid/test/TestSuiteProvider;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 114
    const/4 v2, 0x0

    :try_start_9
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/TestSuiteProvider;

    .line 116
    .local v1, testSuiteProvider:Landroid/test/TestSuiteProvider;
    invoke-interface {v1}, Landroid/test/TestSuiteProvider;->getTestSuite()Ljunit/framework/TestSuite;
    :try_end_1b
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_1b} :catch_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_1b} :catch_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1b} :catch_7c

    move-result-object v2

    .line 127
    .end local v1           #testSuiteProvider:Landroid/test/TestSuiteProvider;
    :goto_1c
    return-object v2

    .line 117
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 127
    .end local v0           #e:Ljava/lang/InstantiationException;
    :cond_39
    :goto_39
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v2

    goto :goto_1c

    .line 119
    :catch_42
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access of test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_39

    .line 121
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5f
    move-exception v2

    move-object v0, v2

    .line 122
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation exception test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_39

    .line 123
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_7c
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such method on test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_39
.end method

.method private loadTestClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .parameter "testClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 89
    :goto_a
    return-object v1

    .line 86
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find test class. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V
    .registers 7
    .parameter "test"
    .parameter "context"
    .parameter "testContext"

    .prologue
    .line 174
    const-class v1, Landroid/test/AndroidTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 175
    move-object v0, p1

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object v1, v0

    invoke-virtual {v1, p2}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    .line 176
    check-cast p1, Landroid/test/AndroidTestCase;

    .end local p1
    invoke-virtual {p1, p3}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V

    .line 178
    :cond_18
    return-void
.end method

.method private setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V
    .registers 5
    .parameter "test"
    .parameter "instrumentation"

    .prologue
    .line 186
    const-class v0, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 187
    check-cast p1, Landroid/test/InstrumentationTestCase;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 189
    :cond_11
    return-void
.end method

.method private setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .registers 5
    .parameter "test"
    .parameter "writer"

    .prologue
    .line 193
    const-class v0, Landroid/test/PerformanceCollectorTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 194
    check-cast p1, Landroid/test/PerformanceCollectorTestCase;

    .end local p1
    invoke-interface {p1, p2}, Landroid/test/PerformanceCollectorTestCase;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    .line 196
    :cond_11
    return-void
.end method

.method private setTest(Ljunit/framework/Test;Ljava/lang/Class;)V
    .registers 4
    .parameter "test"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/Test;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    .line 65
    const-class v0, Ljunit/framework/TestSuite;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 66
    invoke-static {p1}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    .line 70
    :goto_15
    return-void

    .line 68
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    goto :goto_15
.end method

.method private shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 4
    .parameter "testMethodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/Test;>;"
    if-eqz p1, :cond_c

    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public addTestListener(Ljunit/framework/TestListener;)V
    .registers 3
    .parameter "testListener"

    .prologue
    .line 77
    if-eqz p1, :cond_7

    .line 78
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_7
    return-void
.end method

.method public clearTestListeners()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    return-void
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    if-eqz v0, :cond_a

    .line 132
    new-instance v0, Landroid/test/NoExecTestResult;

    invoke-direct {v0}, Landroid/test/NoExecTestResult;-><init>()V

    .line 134
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    goto :goto_9
.end method

.method public getTestCases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    return-object v0
.end method

.method public getTestClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestResult()Ljunit/framework/TestResult;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    return-object v0
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "suiteClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runTest()V
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/test/AndroidTestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/AndroidTestRunner;->runTest(Ljunit/framework/TestResult;)V

    .line 155
    return-void
.end method

.method public runTest(Ljunit/framework/TestResult;)V
    .registers 7
    .parameter "testResult"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    .line 160
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/framework/TestListener;

    .line 161
    .local v3, testListener:Ljunit/framework/TestListener;
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v4, v3}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    goto :goto_8

    .line 164
    .end local v3           #testListener:Ljunit/framework/TestListener;
    :cond_1a
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    if-nez v4, :cond_48

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    move-object v2, v4

    .line 165
    .local v2, testContext:Landroid/content/Context;
    :goto_21
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 166
    .local v1, testCase:Ljunit/framework/TestCase;
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v4, v2}, Landroid/test/AndroidTestRunner;->setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V

    .line 167
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {p0, v1, v4}, Landroid/test/AndroidTestRunner;->setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V

    .line 168
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-direct {p0, v1, v4}, Landroid/test/AndroidTestRunner;->setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    .line 169
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1, v4}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    goto :goto_27

    .line 164
    .end local v1           #testCase:Ljunit/framework/TestCase;
    .end local v2           #testContext:Landroid/content/Context;
    :cond_48
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v4

    goto :goto_21

    .line 171
    .restart local v2       #testContext:Landroid/content/Context;
    :cond_50
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 181
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    .line 182
    return-void
.end method

.method public setInstrumentaiton(Landroid/app/Instrumentation;)V
    .registers 2
    .parameter "instrumentation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 209
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .parameter "instrumentation"

    .prologue
    .line 199
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    .line 200
    return-void
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .registers 2
    .parameter "writer"

    .prologue
    .line 215
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 216
    return-void
.end method

.method setSkipExecution(Z)V
    .registers 2
    .parameter "skip"

    .prologue
    .line 138
    iput-boolean p1, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    .line 139
    return-void
.end method

.method public setTest(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    .line 61
    return-void
.end method

.method public setTestClassName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "testClassName"
    .parameter "testMethodName"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/test/AndroidTestRunner;->loadTestClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 50
    .local v1, testClass:Ljava/lang/Class;
    invoke-direct {p0, p2, v1}, Landroid/test/AndroidTestRunner;->shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 51
    invoke-direct {p0, v1, p2}, Landroid/test/AndroidTestRunner;->buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v0

    .line 52
    .local v0, testCase:Ljunit/framework/TestCase;
    const/4 v2, 0x1

    new-array v2, v2, [Ljunit/framework/TestCase;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    .line 57
    .end local v0           #testCase:Ljunit/framework/TestCase;
    :goto_20
    return-void

    .line 55
    :cond_21
    invoke-direct {p0, v1}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    goto :goto_20
.end method

.method public testEnded(Ljava/lang/String;)V
    .registers 2
    .parameter "testName"

    .prologue
    .line 227
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "status"
    .parameter "test"
    .parameter "t"

    .prologue
    .line 230
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .registers 2
    .parameter "testName"

    .prologue
    .line 224
    return-void
.end method
