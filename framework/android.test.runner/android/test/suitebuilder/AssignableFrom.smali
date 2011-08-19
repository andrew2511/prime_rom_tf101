.class Landroid/test/suitebuilder/AssignableFrom;
.super Ljava/lang/Object;
.source "AssignableFrom.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/test/suitebuilder/TestMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final root:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/test/suitebuilder/AssignableFrom;->root:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .registers 4
    .parameter "testMethod"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/test/suitebuilder/AssignableFrom;->root:Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/AssignableFrom;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v0

    return v0
.end method
