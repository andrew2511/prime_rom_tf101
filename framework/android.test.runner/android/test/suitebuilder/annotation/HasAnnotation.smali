.class public Landroid/test/suitebuilder/annotation/HasAnnotation;
.super Ljava/lang/Object;
.source "HasAnnotation.java"

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
.field private hasMethodOrClassAnnotation:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    const/4 v1, 0x0

    new-instance v2, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;

    invoke-direct {v2, p1}, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/test/suitebuilder/annotation/HasClassAnnotation;

    invoke-direct {v2, p1}, Landroid/test/suitebuilder/annotation/HasClassAnnotation;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Predicates;->or([Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    iput-object v0, p0, Landroid/test/suitebuilder/annotation/HasAnnotation;->hasMethodOrClassAnnotation:Lcom/android/internal/util/Predicate;

    .line 39
    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .registers 3
    .parameter "testMethod"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/test/suitebuilder/annotation/HasAnnotation;->hasMethodOrClassAnnotation:Lcom/android/internal/util/Predicate;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/annotation/HasAnnotation;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v0

    return v0
.end method
