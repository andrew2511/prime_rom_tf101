.class public Landroid/test/suitebuilder/InstrumentationTestSuiteBuilder;
.super Landroid/test/suitebuilder/TestSuiteBuilder;
.source "InstrumentationTestSuiteBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .parameter "clazz"

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/InstrumentationTestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .parameter "name"
    .parameter "classLoader"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    const/4 v1, 0x0

    sget-object v2, Landroid/test/suitebuilder/TestPredicates;->SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/InstrumentationTestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 34
    return-void
.end method
