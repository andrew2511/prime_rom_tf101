.class public Landroid/test/ClassPathPackageInfo;
.super Ljava/lang/Object;
.source "ClassPathPackageInfo.java"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final source:Landroid/test/ClassPathPackageInfoSource;

.field private final subpackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevelClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .parameter "source"
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/test/ClassPathPackageInfoSource;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, topLevelClasses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/test/ClassPathPackageInfo;->source:Landroid/test/ClassPathPackageInfoSource;

    .line 40
    iput-object p2, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    .line 42
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    .line 43
    return-void
.end method

.method private addTopLevelClassesTo(Ljava/util/Set;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v2, p0, Landroid/test/ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {p0}, Landroid/test/ClassPathPackageInfo;->getSubpackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/ClassPathPackageInfo;

    .line 62
    .local v1, info:Landroid/test/ClassPathPackageInfo;
    invoke-direct {v1, p1}, Landroid/test/ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    goto :goto_d

    .line 64
    .end local v1           #info:Landroid/test/ClassPathPackageInfo;
    :cond_1d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 68
    instance-of v2, p1, Landroid/test/ClassPathPackageInfo;

    if-eqz v2, :cond_11

    .line 69
    move-object v0, p1

    check-cast v0, Landroid/test/ClassPathPackageInfo;

    move-object v1, v0

    .line 70
    .local v1, that:Landroid/test/ClassPathPackageInfo;
    iget-object v2, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    .end local v1           #that:Landroid/test/ClassPathPackageInfo;
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public getSubpackages()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/test/ClassPathPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 47
    .local v1, info:Ljava/util/Set;,"Ljava/util/Set<Landroid/test/ClassPathPackageInfo;>;"
    iget-object v3, p0, Landroid/test/ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Landroid/test/ClassPathPackageInfo;->source:Landroid/test/ClassPathPackageInfoSource;

    invoke-virtual {v3, v2}, Landroid/test/ClassPathPackageInfoSource;->getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 50
    .end local v2           #name:Ljava/lang/String;
    :cond_20
    return-object v1
.end method

.method public getTopLevelClassesRecursive()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 55
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v0}, Landroid/test/ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    .line 56
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
