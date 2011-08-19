.class public Landroid/test/BundlePrinter;
.super Ljunit/textui/ResultPrinter;
.source "BundlePrinter.java"


# instance fields
.field private mError:Z

.field private mFailure:Z

.field private mResults:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Landroid/os/Bundle;)V
    .registers 3
    .parameter "writer"
    .parameter "result"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 43
    iput-object p2, p0, Landroid/test/BundlePrinter;->mResults:Landroid/os/Bundle;

    .line 44
    return-void
.end method

.method private getComboName(Ljunit/framework/Test;)Ljava/lang/String;
    .registers 4
    .parameter "test"

    .prologue
    .line 76
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
    .line 48
    iget-object v0, p0, Landroid/test/BundlePrinter;->mResults:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/test/BundlePrinter;->getComboName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/BundlePrinter;->mFailure:Z

    .line 50
    invoke-super {p0, p1, p2}, Ljunit/textui/ResultPrinter;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/test/BundlePrinter;->mResults:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/test/BundlePrinter;->getComboName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/BundlePrinter;->mError:Z

    .line 57
    invoke-super {p0, p1, p2}, Ljunit/textui/ResultPrinter;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .line 58
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 5
    .parameter "test"

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/test/BundlePrinter;->mFailure:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/test/BundlePrinter;->mError:Z

    if-nez v0, :cond_13

    .line 63
    iget-object v0, p0, Landroid/test/BundlePrinter;->mResults:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/test/BundlePrinter;->getComboName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "passed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_13
    invoke-super {p0, p1}, Ljunit/textui/ResultPrinter;->endTest(Ljunit/framework/Test;)V

    .line 66
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Landroid/test/BundlePrinter;->mFailure:Z

    .line 71
    iput-boolean v0, p0, Landroid/test/BundlePrinter;->mError:Z

    .line 72
    invoke-super {p0, p1}, Ljunit/textui/ResultPrinter;->startTest(Ljunit/framework/Test;)V

    .line 73
    return-void
.end method
