.class public Ljunit/runner/StandardTestSuiteLoader;
.super Ljava/lang/Object;
.source "StandardTestSuiteLoader.java"

# interfaces
.implements Ljunit/runner/TestSuiteLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "suiteClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .parameter "aClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 18
    return-object p1
.end method
