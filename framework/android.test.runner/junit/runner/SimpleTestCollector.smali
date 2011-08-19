.class public Ljunit/runner/SimpleTestCollector;
.super Ljunit/runner/ClassPathTestCollector;
.source "SimpleTestCollector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljunit/runner/ClassPathTestCollector;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected isTestClass(Ljava/lang/String;)Z
    .registers 3
    .parameter "classFileName"

    .prologue
    .line 16
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1a

    const-string v0, "Test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
