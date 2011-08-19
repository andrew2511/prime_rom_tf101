.class public Ljunit/extensions/RepeatedTest;
.super Ljunit/extensions/TestDecorator;
.source "RepeatedTest.java"


# instance fields
.field private fTimesRepeat:I


# direct methods
.method public constructor <init>(Ljunit/framework/Test;I)V
    .registers 5
    .parameter "test"
    .parameter "repeat"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    .line 14
    if-gez p2, :cond_d

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repetition count must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_d
    iput p2, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    .line 17
    return-void
.end method


# virtual methods
.method public countTestCases()I
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Ljunit/extensions/TestDecorator;->countTestCases()I

    move-result v0

    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    if-ge v0, v1, :cond_b

    .line 23
    invoke-virtual {p1}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    :cond_b
    return-void

    .line 25
    :cond_c
    invoke-super {p0, p1}, Ljunit/extensions/TestDecorator;->run(Ljunit/framework/TestResult;)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljunit/extensions/TestDecorator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(repeated)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
