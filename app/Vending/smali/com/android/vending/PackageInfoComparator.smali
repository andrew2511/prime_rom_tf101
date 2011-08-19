.class public Lcom/android/vending/PackageInfoComparator;
.super Ljava/lang/Object;
.source "PackageInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 13
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/PackageInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/PackageInfoComparator;->compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method
