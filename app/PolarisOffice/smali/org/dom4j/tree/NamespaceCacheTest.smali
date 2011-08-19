.class public Lorg/dom4j/tree/NamespaceCacheTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NamespaceCacheTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;,
        Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;
    }
.end annotation


# static fields
.field private static final ITERATIONCOUNT:I = 0x2710

.field private static final THREADCOUNT:I = 0x32

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 26
    sget-object v0, Lorg/dom4j/tree/NamespaceCacheTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.tree.NamespaceCacheTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/NamespaceCacheTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 27
    return-void

    .line 26
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runMultiThreadedTest(Ljava/lang/Runnable;)V
    .locals 8
    .parameter "test"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x32

    .line 67
    new-array v3, v7, [Ljava/lang/Thread;

    .line 69
    .local v3, threads:[Ljava/lang/Thread;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 74
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v7, :cond_1

    .line 79
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    if-lt v2, v7, :cond_2

    .line 82
    return-void

    .line 70
    .end local v1           #j:I
    .end local v2           #k:I
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;-><init>(Lorg/dom4j/tree/NamespaceCacheTest;Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v4, v3, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .restart local v1       #j:I
    :cond_1
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .restart local v2       #k:I
    :cond_2
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public testGetNewNamespaceMultiThread()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    .local v2, start:J
    new-instance v4, Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;-><init>(Lorg/dom4j/tree/NamespaceCacheTest;Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;)V

    invoke-direct {p0, v4}, Lorg/dom4j/tree/NamespaceCacheTest;->runMultiThreadedTest(Ljava/lang/Runnable;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, end:J
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Different NS Multi took "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public testGetNewNamespaceSingleThread()V
    .locals 9

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 50
    .local v2, start:J
    new-instance v4, Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;-><init>(Lorg/dom4j/tree/NamespaceCacheTest;Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;)V

    .line 51
    .local v4, test:Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;
    invoke-virtual {v4}, Lorg/dom4j/tree/NamespaceCacheTest$DifferentNSTest;->run()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    .local v0, end:J
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Same NS Multi took "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public testGetSameNamespaceMultiThread()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    .local v2, start:J
    new-instance v4, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;-><init>(Lorg/dom4j/tree/NamespaceCacheTest;Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;)V

    invoke-direct {p0, v4}, Lorg/dom4j/tree/NamespaceCacheTest;->runMultiThreadedTest(Ljava/lang/Runnable;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, end:J
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Different NS Single took "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public testGetSameNamespaceSingleThread()V
    .locals 9

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    .local v2, start:J
    new-instance v4, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;-><init>(Lorg/dom4j/tree/NamespaceCacheTest;Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;)V

    .line 34
    .local v4, test:Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;
    invoke-virtual {v4}, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;->run()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, end:J
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Same NS Single took "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    return-void
.end method
