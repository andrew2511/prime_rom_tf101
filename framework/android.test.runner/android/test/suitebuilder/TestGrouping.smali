.class public Landroid/test/suitebuilder/TestGrouping;
.super Ljava/lang/Object;
.source "TestGrouping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestGrouping$1;,
        Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;,
        Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;,
        Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;,
        Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestGrouping"

.field public static final SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field protected firstIncludedPackage:Ljava/lang/String;

.field testCaseClasses:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;

    .line 56
    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    .line 64
    return-void
.end method

.method private select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p2, v1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 176
    .end local v1           #item:Ljava/lang/Object;,"TT;"
    :cond_1d
    return-object v2
.end method

.method private selectTestClasses(Ljava/util/Set;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, allClasses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, testClasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    new-instance v3, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    invoke-direct {p0, p1, v3}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 164
    .local v1, testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 166
    .end local v1           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_23
    return-object v2
.end method

.method private testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2}, Landroid/test/PackageInfoSources;->forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;

    move-result-object v1

    .line 154
    .local v1, source:Landroid/test/ClassPathPackageInfoSource;
    invoke-virtual {v1, p1}, Landroid/test/ClassPathPackageInfoSource;->getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    move-result-object v0

    .line 156
    .local v0, packageInfo:Landroid/test/ClassPathPackageInfo;
    invoke-virtual {v0}, Landroid/test/ClassPathPackageInfo;->getTopLevelClassesRecursive()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->selectTestClasses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public varargs addPackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;
    .registers 10
    .parameter "packageNames"

    .prologue
    .line 116
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_3d

    aget-object v4, v1, v2

    .line 117
    .local v4, packageName:Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, addedClasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 119
    const-string v5, "TestGrouping"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' could not be found or has no tests"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2f
    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    if-nez v5, :cond_3a

    .line 124
    iput-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    .line 116
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 127
    .end local v0           #addedClasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    .end local v4           #packageName:Ljava/lang/String;
    :cond_3d
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 90
    if-ne p0, p1, :cond_5

    .line 91
    const/4 v2, 0x1

    .line 100
    :goto_4
    return v2

    .line 93
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v2, v4

    .line 94
    goto :goto_4

    .line 96
    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/test/suitebuilder/TestGrouping;

    move-object v1, v0

    .line 97
    .local v1, other:Landroid/test/suitebuilder/TestGrouping;
    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    iget-object v3, v1, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v2, v4

    .line 98
    goto :goto_4

    .line 100
    :cond_23
    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iget-object v3, v1, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public getFirstIncludedPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    return-object v0
.end method

.method getTestCaseClasses()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    return-object v0
.end method

.method protected getTestMethods(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, testCaseClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, methods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v1, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTests()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, testMethods:Ljava/util/List;,"Ljava/util/List<Landroid/test/suitebuilder/TestMethod;>;"
    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 73
    .local v2, testCase:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->getTestMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 74
    .local v3, testMethod:Ljava/lang/reflect/Method;
    new-instance v5, Landroid/test/suitebuilder/TestMethod;

    invoke-direct {v5, v3, v2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 77
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #testCase:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    .end local v3           #testMethod:Ljava/lang/reflect/Method;
    :cond_34
    return-object v4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs removePackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;
    .registers 8
    .parameter "packageNames"

    .prologue
    .line 138
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 139
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-direct {p0, v3}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    .end local v3           #packageName:Ljava/lang/String;
    :cond_13
    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "classLoader"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    .line 181
    return-void
.end method
