.class Landroid/test/InstrumentationCoreTestRunner$1;
.super Ljava/lang/Object;
.source "InstrumentationCoreTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/InstrumentationCoreTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MINIMUM_TIME:I = 0x64


# instance fields
.field private lastClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private startTime:J

.field final synthetic this$0:Landroid/test/InstrumentationCoreTestRunner;


# direct methods
.method constructor <init>(Landroid/test/InstrumentationCoreTestRunner;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Landroid/test/InstrumentationCoreTestRunner$1;->this$0:Landroid/test/InstrumentationCoreTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup(Ljunit/framework/TestCase;)V
    .registers 7
    .parameter "test"

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    const-class v4, Ljunit/framework/TestCase;

    if-eq v0, v4, :cond_36

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 176
    .local v2, fields:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    array-length v4, v2

    if-ge v3, v4, :cond_31

    .line 177
    aget-object v1, v2, v3

    .line 178
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 181
    const/4 v4, 0x1

    :try_start_27
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_37

    .line 176
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 189
    .end local v1           #f:Ljava/lang/reflect/Field;
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 190
    goto :goto_4

    .line 191
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .end local v3           #i:I
    :cond_36
    return-void

    .line 183
    .restart local v1       #f:Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #i:I
    :catch_37
    move-exception v4

    goto :goto_2e
.end method

.method private printMemory(Ljava/lang/Class;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/Test;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 154
    .local v2, runtime:Ljava/lang/Runtime;
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    .line 155
    .local v3, total:J
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 156
    .local v0, free:J
    sub-long v5, v3, v0

    .line 158
    .local v5, used:J
    const-string v7, "InstrumentationCoreTestRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total memory  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v7, "InstrumentationCoreTestRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Used memory   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v7, "InstrumentationCoreTestRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Free memory   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v7, "InstrumentationCoreTestRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Now executing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "test"
    .parameter "t"

    .prologue
    .line 142
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 3
    .parameter "test"
    .parameter "t"

    .prologue
    .line 146
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 10
    .parameter "test"

    .prologue
    const-wide/16 v6, 0x64

    .line 119
    instance-of v2, p1, Ljunit/framework/TestCase;

    if-eqz v2, :cond_1c

    .line 120
    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-direct {p0, p1}, Landroid/test/InstrumentationCoreTestRunner$1;->cleanup(Ljunit/framework/TestCase;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/test/InstrumentationCoreTestRunner$1;->startTime:J

    sub-long v0, v2, v4

    .line 130
    .local v0, timeTaken:J
    cmp-long v2, v0, v6

    if-gez v2, :cond_1c

    .line 132
    sub-long v2, v6, v0

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 138
    .end local v0           #timeTaken:J
    :cond_1c
    :goto_1c
    return-void

    .line 133
    .restart local v0       #timeTaken:J
    :catch_1d
    move-exception v2

    goto :goto_1c
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 4
    .parameter "test"

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroid/test/InstrumentationCoreTestRunner$1;->lastClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_15

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/test/InstrumentationCoreTestRunner$1;->lastClass:Ljava/lang/Class;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/InstrumentationCoreTestRunner$1;->printMemory(Ljava/lang/Class;)V

    .line 112
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/InstrumentationCoreTestRunner$1;->startTime:J

    .line 116
    return-void
.end method
