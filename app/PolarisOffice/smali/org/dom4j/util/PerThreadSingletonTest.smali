.class public Lorg/dom4j/util/PerThreadSingletonTest;
.super Ljunit/framework/TestCase;
.source "PerThreadSingletonTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field private static reference:Ljava/lang/ThreadLocal;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/dom4j/util/PerThreadSingletonTest;->reference:Ljava/lang/ThreadLocal;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected static makeRepeatedLoadTest(IILjava/lang/String;)Ljunit/framework/Test;
    .locals 7
    .parameter "users"
    .parameter "iterations"
    .parameter "testMethod"

    .prologue
    .line 111
    mul-int/lit16 v6, p0, 0x3e8

    mul-int/2addr v6, p1

    add-int/lit16 v6, v6, 0x4b0

    int-to-long v1, v6

    .line 113
    .local v1, maxElapsedTime:J
    new-instance v4, Lorg/dom4j/util/PerThreadSingletonTest;

    invoke-direct {v4, p2}, Lorg/dom4j/util/PerThreadSingletonTest;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, testCase:Ljunit/framework/Test;
    new-instance v3, Ljunit/extensions/RepeatedTest;

    invoke-direct {v3, v4, p1}, Ljunit/extensions/RepeatedTest;-><init>(Ljunit/framework/Test;I)V

    .line 116
    .local v3, repeatedTest:Ljunit/framework/Test;
    new-instance v0, Lcom/clarkware/junitperf/LoadTest;

    invoke-direct {v0, v3, p0}, Lcom/clarkware/junitperf/LoadTest;-><init>(Ljunit/framework/Test;I)V

    .line 117
    .local v0, loadTest:Ljunit/framework/Test;
    new-instance v5, Lcom/clarkware/junitperf/TimedTest;

    invoke-direct {v5, v0, v1, v2}, Lcom/clarkware/junitperf/TimedTest;-><init>(Ljunit/framework/Test;J)V

    .line 119
    .local v5, timedTest:Ljunit/framework/Test;
    return-object v5
.end method

.method public static suite()Ljunit/framework/Test;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 93
    .local v0, suite:Ljunit/framework/TestSuite;
    const/4 v1, 0x5

    const/16 v2, 0x64

    const-string v3, "testInstance"

    invoke-static {v1, v2, v3}, Lorg/dom4j/util/PerThreadSingletonTest;->makeRepeatedLoadTest(IILjava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 94
    return-object v0
.end method


# virtual methods
.method public setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 44
    sget-object v0, Lorg/dom4j/util/PerThreadSingletonTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.util.PerThreadSingletonTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/util/PerThreadSingletonTest;->class$0:Ljava/lang/Class;

    :cond_0
    monitor-enter v0

    .line 45
    :try_start_1
    sget-object v1, Lorg/dom4j/util/PerThreadSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    if-nez v1, :cond_2

    .line 46
    new-instance v1, Lorg/dom4j/util/PerThreadSingleton;

    invoke-direct {v1}, Lorg/dom4j/util/PerThreadSingleton;-><init>()V

    sput-object v1, Lorg/dom4j/util/PerThreadSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 47
    sget-object v1, Lorg/dom4j/util/PerThreadSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v2, Lorg/dom4j/util/PerThreadSingletonTest;->class$1:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    const-string v2, "java.util.HashMap"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    sput-object v2, Lorg/dom4j/util/PerThreadSingletonTest;->class$1:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V

    .line 44
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    return-void

    .line 44
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 54
    return-void
.end method

.method public testInstance()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, tid:Ljava/lang/String;
    sget-object v4, Lorg/dom4j/util/PerThreadSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v4}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 60
    .local v2, map:Ljava/util/Map;
    const-string v1, "new value"

    .line 61
    .local v1, expected:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lorg/dom4j/util/PerThreadSingletonTest;->reference:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 62
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "tid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " map="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "reference="

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/dom4j/util/PerThreadSingletonTest;->reference:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "singleton="

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/dom4j/util/PerThreadSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    const-string v4, "created singleton more than once"

    invoke-static {v4}, Lorg/dom4j/util/PerThreadSingletonTest;->fail(Ljava/lang/String;)V

    .line 71
    :goto_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, actual:Ljava/lang/String;
    const-string v4, "testInstance"

    invoke-static {v4, v1, v0}, Lorg/dom4j/util/PerThreadSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v4, Lorg/dom4j/util/PerThreadSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v4}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #map:Ljava/util/Map;
    check-cast v2, Ljava/util/Map;

    .line 76
    .restart local v2       #map:Ljava/util/Map;
    const-string v1, "new value"

    .line 77
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actual:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 81
    .restart local v0       #actual:Ljava/lang/String;
    const-string v4, "testInstance"

    invoke-static {v4, v1, v0}, Lorg/dom4j/util/PerThreadSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "testInstance reference"

    sget-object v5, Lorg/dom4j/util/PerThreadSingletonTest;->reference:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/dom4j/util/PerThreadSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-void

    .line 67
    .end local v0           #actual:Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v4, Lorg/dom4j/util/PerThreadSingletonTest;->reference:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
