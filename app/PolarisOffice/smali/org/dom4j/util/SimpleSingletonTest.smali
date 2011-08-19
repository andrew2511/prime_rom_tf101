.class public Lorg/dom4j/util/SimpleSingletonTest;
.super Ljunit/framework/TestCase;
.source "SimpleSingletonTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field private static reference:Ljava/lang/Object;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static suite()Ljunit/framework/Test;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 75
    .local v0, suite:Ljunit/framework/TestSuite;
    sget-object v1, Lorg/dom4j/util/SimpleSingletonTest;->class$1:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "org.dom4j.util.SimpleSingletonTest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/util/SimpleSingletonTest;->class$1:Ljava/lang/Class;

    .line 76
    :cond_0
    const-string v2, "testFirstInstance"

    invoke-static {v1, v2}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 77
    sget-object v1, Lorg/dom4j/util/SimpleSingletonTest;->class$1:Ljava/lang/Class;

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "org.dom4j.util.SimpleSingletonTest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    sput-object v1, Lorg/dom4j/util/SimpleSingletonTest;->class$1:Ljava/lang/Class;

    .line 78
    :cond_1
    const-string v2, "testSecondInstance"

    invoke-static {v1, v2}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 79
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 40
    sget-object v0, Lorg/dom4j/util/SimpleSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lorg/dom4j/util/PerThreadSingleton;

    invoke-direct {v0}, Lorg/dom4j/util/PerThreadSingleton;-><init>()V

    sput-object v0, Lorg/dom4j/util/SimpleSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 42
    sget-object v0, Lorg/dom4j/util/SimpleSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v1, Lorg/dom4j/util/SimpleSingletonTest;->class$0:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.util.HashMap"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/util/SimpleSingletonTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V

    .line 44
    :cond_1
    return-void

    .line 42
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

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
    .line 47
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 48
    return-void
.end method

.method public testFirstInstance()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v3, Lorg/dom4j/util/SimpleSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v3}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 52
    .local v2, map:Ljava/util/Map;
    const/4 v1, 0x0

    .line 53
    .local v1, expected:Ljava/lang/String;
    const-string v3, "Test"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, actual:Ljava/lang/String;
    const-string v3, "testInstance"

    invoke-static {v3, v1, v0}, Lorg/dom4j/util/SimpleSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "new value"

    .line 57
    const-string v3, "Test"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v3, Lorg/dom4j/util/SimpleSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v3}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #map:Ljava/util/Map;
    check-cast v2, Ljava/util/Map;

    .line 60
    .restart local v2       #map:Ljava/util/Map;
    sput-object v2, Lorg/dom4j/util/SimpleSingletonTest;->reference:Ljava/lang/Object;

    .line 61
    const-string v3, "Test"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actual:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 62
    .restart local v0       #actual:Ljava/lang/String;
    const-string v3, "testFirstInstance"

    invoke-static {v3, v1, v0}, Lorg/dom4j/util/SimpleSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public testSecondInstance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v3, Lorg/dom4j/util/SimpleSingletonTest;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v3}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 67
    .local v2, map:Ljava/util/Map;
    const-string v3, "testSecondInstance reference"

    sget-object v4, Lorg/dom4j/util/SimpleSingletonTest;->reference:Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lorg/dom4j/util/SimpleSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    const-string v3, "Test"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, actual:Ljava/lang/String;
    const-string v1, "new value"

    .line 70
    .local v1, expected:Ljava/lang/String;
    const-string v3, "testInstance"

    invoke-static {v3, v1, v0}, Lorg/dom4j/util/SimpleSingletonTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
