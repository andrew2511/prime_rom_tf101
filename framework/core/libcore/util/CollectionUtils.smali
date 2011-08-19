.class public final Llibcore/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .parameter "trim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;Z)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/ref/Reference<TT;>;>;"
    new-instance v0, Llibcore/util/CollectionUtils$1;

    invoke-direct {v0, p0, p1}, Llibcore/util/CollectionUtils$1;-><init>(Ljava/lang/Iterable;Z)V

    return-object v0
.end method
