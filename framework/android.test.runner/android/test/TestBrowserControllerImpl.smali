.class public Landroid/test/TestBrowserControllerImpl;
.super Ljava/lang/Object;
.source "TestBrowserControllerImpl.java"

# interfaces
.implements Landroid/test/TestBrowserController;


# static fields
.field private static final RUN_ALL_INDEX:I = 0x0

.field static final TEST_RUNNER_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.android.testharness.TestRunnerActivity"


# instance fields
.field private mTargetBrowserActivityClassName:Ljava/lang/String;

.field private mTargetPackageName:Ljava/lang/String;

.field private mTestBrowserView:Landroid/test/TestBrowserView;

.field private mTestSuite:Ljunit/framework/TestSuite;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultPackageNameForTestRunner()Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    const-string v0, "com.android.testharness.TestRunnerActivity"

    const/4 v1, 0x0

    const-string v2, "com.android.testharness.TestRunnerActivity"

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldAllTestsBeRun(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 89
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public getIntentForTestAt(I)Landroid/content/Intent;
    .registers 13
    .parameter "position"

    .prologue
    .line 48
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.RUN"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v9, 0x1000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    const/high16 v9, 0x800

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-direct {p0}, Landroid/test/TestBrowserControllerImpl;->getDefaultPackageNameForTestRunner()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, packageName:Ljava/lang/String;
    const-string v1, ""

    .line 57
    .local v1, className:Ljava/lang/String;
    const-string v7, ""

    .line 58
    .local v7, testName:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/test/TestBrowserControllerImpl;->shouldAllTestsBeRun(I)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 59
    iget-object v9, p0, Landroid/test/TestBrowserControllerImpl;->mTestSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v9}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v7

    .line 60
    const-string v1, "com.android.testharness.TestRunnerActivity"

    .line 77
    :cond_2a
    :goto_2a
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    return-object v2

    .line 62
    :cond_35
    iget-object v9, p0, Landroid/test/TestBrowserControllerImpl;->mTestSuite:Ljunit/framework/TestSuite;

    const/4 v10, 0x1

    sub-int v10, p1, v10

    invoke-static {v9, v10}, Landroid/test/TestCaseUtil;->getTestAtIndex(Ljunit/framework/TestSuite;I)Ljunit/framework/Test;

    move-result-object v4

    .line 63
    .local v4, test:Ljunit/framework/Test;
    const-class v9, Ljunit/framework/TestSuite;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 64
    move-object v0, v4

    check-cast v0, Ljunit/framework/TestSuite;

    move-object v8, v0

    .line 65
    .local v8, testSuite:Ljunit/framework/TestSuite;
    invoke-virtual {v8}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v7

    .line 66
    iget-object v1, p0, Landroid/test/TestBrowserControllerImpl;->mTargetBrowserActivityClassName:Ljava/lang/String;

    .line 67
    iget-object v3, p0, Landroid/test/TestBrowserControllerImpl;->mTargetPackageName:Ljava/lang/String;

    .line 68
    goto :goto_2a

    .end local v8           #testSuite:Ljunit/framework/TestSuite;
    :cond_57
    const-class v9, Ljunit/framework/TestCase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 69
    move-object v0, v4

    check-cast v0, Ljunit/framework/TestCase;

    move-object v5, v0

    .line 70
    .local v5, testCase:Ljunit/framework/TestCase;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 71
    const-string v1, "com.android.testharness.TestRunnerActivity"

    .line 72
    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, testMethodName:Ljava/lang/String;
    const-string v9, "testMethodName"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a
.end method

.method public registerView(Landroid/test/TestBrowserView;)V
    .registers 2
    .parameter "testBrowserView"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/test/TestBrowserControllerImpl;->mTestBrowserView:Landroid/test/TestBrowserView;

    .line 104
    return-void
.end method

.method public setTargetBrowserActivityClassName(Ljava/lang/String;)V
    .registers 2
    .parameter "targetBrowserActivityClassName"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/test/TestBrowserControllerImpl;->mTargetBrowserActivityClassName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTargetPackageName(Ljava/lang/String;)V
    .registers 2
    .parameter "targetPackageName"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/test/TestBrowserControllerImpl;->mTargetPackageName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTestSuite(Ljunit/framework/TestSuite;)V
    .registers 4
    .parameter "testSuite"

    .prologue
    .line 93
    iput-object p1, p0, Landroid/test/TestBrowserControllerImpl;->mTestSuite:Ljunit/framework/TestSuite;

    .line 95
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, testCaseNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Run All"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/test/TestCaseUtil;->getTestCaseNames(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v1, p0, Landroid/test/TestBrowserControllerImpl;->mTestBrowserView:Landroid/test/TestBrowserView;

    invoke-interface {v1, v0}, Landroid/test/TestBrowserView;->setTestNames(Ljava/util/List;)V

    .line 100
    return-void
.end method
