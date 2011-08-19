.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    }
.end annotation


# static fields
.field static final ARGUMENT_ANNOTATION:Ljava/lang/String; = "annotation"

.field public static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field static final ARGUMENT_NOT_ANNOTATION:Ljava/lang/String; = "notAnnotation"

.field public static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field public static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    .line 711
    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestRunner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    return v0
.end method

.method static synthetic access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    return-object v0
.end method

.method private generateCoverageReport()V
    .registers 12

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, coverageFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, coverageFile:Ljava/io/File;
    :try_start_9
    const-string v6, "com.vladium.emma.rt.RT"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 575
    .local v5, emmaRTClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "dumpCoverageData"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 578
    .local v3, dumpCoverageMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "coverageFilePath"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, currentStream:Ljava/lang/String;
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    const-string v8, "%s\nGenerated code coverage data to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_68} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_68} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_68} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_68} :catch_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_68} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_68} :catch_89

    .line 601
    .end local v2           #currentStream:Ljava/lang/String;
    .end local v3           #dumpCoverageMethod:Ljava/lang/reflect/Method;
    .end local v5           #emmaRTClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_68
    return-void

    .line 588
    :catch_69
    move-exception v6

    move-object v4, v6

    .line 589
    .local v4, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "Is emma jar on classpath?"

    invoke-direct {p0, v6, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 590
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_71
    move-exception v6

    move-object v4, v6

    .line 591
    .local v4, e:Ljava/lang/SecurityException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 592
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_77
    move-exception v6

    move-object v4, v6

    .line 593
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 594
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_7d
    move-exception v6

    move-object v4, v6

    .line 595
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 596
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_83
    move-exception v6

    move-object v4, v6

    .line 597
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 598
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_89
    move-exception v6

    move-object v4, v6

    .line 599
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68
.end method

.method private getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 11
    .parameter "annotationClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 477
    if-nez p1, :cond_7

    move-object v2, v8

    .line 492
    :goto_6
    return-object v2

    .line 481
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 482
    .local v0, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v0

    .line 483
    goto :goto_6

    .line 485
    :cond_13
    const-string v2, "InstrumentationTestRunner"

    const-string v3, "Provided annotation value %s is not an Annotation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_24} :catch_26

    .end local v0           #annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_24
    move-object v2, v8

    .line 492
    goto :goto_6

    .line 488
    :catch_26
    move-exception v2

    move-object v1, v2

    .line 489
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "InstrumentationTestRunner"

    const-string v3, "Could not find class for specified annotation %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 4
    .parameter "annotationClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 450
    .local v0, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_c

    .line 451
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    .line 453
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .parameter "arguments"
    .parameter "tag"

    .prologue
    .line 422
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, tagString:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    goto :goto_29
.end method

.method private getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 4
    .parameter "annotationClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 464
    .local v0, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_10

    .line 465
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    .line 467
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 3
    .parameter "sizeArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    const-string v0, "small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 432
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    .line 438
    :goto_a
    return-object v0

    .line 433
    :cond_b
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 434
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    goto :goto_a

    .line 435
    :cond_16
    const-string v0, "large"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 436
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    goto :goto_a

    .line 438
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 6
    .parameter "testClassName"
    .parameter "testSuiteBuilder"

    .prologue
    .line 407
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 408
    .local v0, methodSeparatorIndex:I
    const/4 v1, 0x0

    .line 410
    .local v1, testMethodName:Ljava/lang/String;
    if-lez v0, :cond_14

    .line 411
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 414
    :cond_14
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 415
    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 9
    .parameter "testClassArg"
    .parameter "testSuiteBuilder"

    .prologue
    .line 393
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, testClasses:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 395
    .local v3, testClass:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 397
    .end local v3           #testClass:Ljava/lang/String;
    :cond_13
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 613
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 614
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter "hint"
    .parameter "e"

    .prologue
    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, msg:Ljava/lang/String;
    const-string v1, "InstrumentationTestRunner"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v2, "stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method


# virtual methods
.method public getAllTests()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .registers 2

    .prologue
    .line 418
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "arguments"

    .prologue
    .line 294
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 297
    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 299
    .local v3, apkPaths:[Ljava/lang/String;
    invoke-static {v3}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    .line 301
    const/4 v11, 0x0

    .line 302
    .local v11, testSizePredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v8, 0x0

    .line 303
    .local v8, testAnnotationPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v10, 0x0

    .line 304
    .local v10, testNotAnnotationPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v9, 0x0

    .line 305
    .local v9, testClassesArg:Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, logOnly:Z
    if-eqz p1, :cond_de

    .line 309
    const-string v14, "class"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 310
    const-string v14, "debug"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    .line 311
    const-string v14, "count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    .line 312
    const-string v14, "suiteAssignment"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    .line 313
    const-string v14, "package"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    .line 314
    const-string v14, "size"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v11

    .line 316
    const-string v14, "annotation"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/test/InstrumentationTestRunner;->getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v8

    .line 318
    const-string v14, "notAnnotation"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/test/InstrumentationTestRunner;->getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v10

    .line 321
    const-string v14, "log"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    .line 322
    const-string v14, "coverage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    .line 323
    const-string v14, "coverageFile"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    .line 326
    :try_start_c6
    const-string v14, "delay_msec"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 327
    .local v4, delay:Ljava/lang/Object;
    if-eqz v4, :cond_de

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_de} :catch_194

    .line 333
    .end local v4           #delay:Ljava/lang/Object;
    :cond_de
    :goto_de
    new-instance v13, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 336
    .local v13, testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    if-eqz v11, :cond_fe

    .line 337
    const/4 v14, 0x1

    new-array v14, v14, [Lcom/android/internal/util/Predicate;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-virtual {v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 339
    :cond_fe
    if-eqz v8, :cond_109

    .line 340
    const/4 v14, 0x1

    new-array v14, v14, [Lcom/android/internal/util/Predicate;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-virtual {v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 342
    :cond_109
    if-eqz v10, :cond_114

    .line 343
    const/4 v14, 0x1

    new-array v14, v14, [Lcom/android/internal/util/Predicate;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-virtual {v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 346
    :cond_114
    if-nez v9, :cond_1b6

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_19f

    .line 348
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 363
    :goto_12c
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    invoke-virtual {v14, v6}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    invoke-virtual {v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    move v14, v0

    if-eqz v14, :cond_1bf

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    new-instance v15, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    invoke-virtual {v14, v15}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 379
    :goto_190
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->start()V

    .line 380
    return-void

    .line 328
    .end local v13           #testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    :catch_194
    move-exception v14

    move-object v5, v14

    .line 329
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v14, "InstrumentationTestRunner"

    const-string v15, "Invalid delay_msec parameter"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_de

    .line 350
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    :cond_19f
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v12

    .line 351
    .local v12, testSuite:Ljunit/framework/TestSuite;
    if-eqz v12, :cond_1a9

    .line 352
    invoke-virtual {v13, v12}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_12c

    .line 356
    :cond_1a9
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, ""

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto/16 :goto_12c

    .line 360
    .end local v12           #testSuite:Ljunit/framework/TestSuite;
    :cond_1b6
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    goto/16 :goto_12c

    .line 374
    :cond_1bf
    new-instance v7, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    move v14, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    .line 375
    .local v7, resultPrinter:Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    new-instance v15, Landroid/test/TestPrinter;

    const-string v16, "TestRunner"

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v14, v15}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/test/AndroidTestRunner;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    goto :goto_190
.end method

.method public onStart()V
    .registers 16

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->prepareLooper()V

    .line 508
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    if-eqz v8, :cond_20

    .line 509
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "id"

    const-string v10, "InstrumentationTestRunner"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "numtests"

    iget v10, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    .line 548
    :goto_1f
    return-void

    .line 513
    :cond_20
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    if-eqz v8, :cond_27

    .line 514
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 517
    :cond_27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 518
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 520
    .local v7, writer:Ljava/io/PrintStream;
    :try_start_31
    new-instance v1, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    invoke-direct {v1, p0, v7}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    .line 522
    .local v1, resultPrinter:Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 525
    .local v4, startTime:J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->runTest()V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 528
    .local v2, runTime:J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    move-result-object v8

    invoke-virtual {v1, v8, v2, v3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->print(Ljunit/framework/TestResult;J)V
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_ce
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_53} :catch_84

    .line 535
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_7a

    .line 541
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 543
    :cond_7a
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 545
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto :goto_1f

    .line 529
    .end local v1           #resultPrinter:Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local v2           #runTime:J
    .end local v4           #startTime:J
    :catch_84
    move-exception v8

    move-object v6, v8

    .line 531
    .local v6, t:Ljava/lang/Throwable;
    :try_start_86
    const-string v8, "Test run aborted due to unexpected exception: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_9c
    .catchall {:try_start_86 .. :try_end_9c} :catchall_ce

    .line 535
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_c3

    .line 541
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 543
    :cond_c3
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 545
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto/16 :goto_1f

    .line 535
    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_ce
    move-exception v8

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v10, "stream"

    const-string v11, "\nTest results for %s=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v14}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v9, :cond_f6

    .line 541
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 543
    :cond_f6
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 545
    const/4 v9, -0x1

    iget-object v10, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v9, v10}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    throw v8
.end method

.method prepareLooper()V
    .registers 1

    .prologue
    .line 501
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 502
    return-void
.end method
