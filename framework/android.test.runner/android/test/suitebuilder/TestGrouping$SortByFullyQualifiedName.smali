.class Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortByFullyQualifiedName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljunit/framework/TestCase;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, class1:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    .local p2, class2:Ljava/lang/Class;,"Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    check-cast p1, Ljava/lang/Class;

    .end local p1
    check-cast p2, Ljava/lang/Class;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method
