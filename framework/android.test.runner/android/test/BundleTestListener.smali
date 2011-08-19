.class public Landroid/test/BundleTestListener;
.super Ljava/lang/Object;
.source "BundleTestListener.java"

# interfaces
.implements Ljunit/framework/TestListener;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mFailed:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/test/BundleTestListener;->mBundle:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method private getComboName(Ljunit/framework/Test;)Ljava/lang/String;
    .registers 4
    .parameter "test"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/test/BundleTestListener;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/test/BundleTestListener;->getComboName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/BundleTestListener;->mFailed:Z

    .line 42
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/test/BundleTestListener;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/test/BundleTestListener;->getComboName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/BundleTestListener;->mFailed:Z

    .line 47
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 5
    .parameter "test"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/test/BundleTestListener;->mFailed:Z

    if-nez v0, :cond_f

    .line 51
    iget-object v0, p0, Landroid/test/BundleTestListener;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/test/BundleTestListener;->getComboName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "passed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_f
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/BundleTestListener;->mFailed:Z

    .line 57
    return-void
.end method
