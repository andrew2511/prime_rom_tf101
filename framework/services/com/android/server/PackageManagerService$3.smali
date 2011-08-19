.class final Lcom/android/server/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 4453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 9
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 4455
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 4456
    .local v0, v1:I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 4458
    .local v1, v2:I
    if-eq v0, v1, :cond_e

    .line 4459
    if-le v0, v1, :cond_c

    move v2, v4

    .line 4472
    :goto_b
    return v2

    :cond_c
    move v2, v5

    .line 4459
    goto :goto_b

    .line 4461
    :cond_e
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 4462
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 4463
    if-eq v0, v1, :cond_1a

    .line 4464
    if-le v0, v1, :cond_18

    move v2, v4

    goto :goto_b

    :cond_18
    move v2, v5

    goto :goto_b

    .line 4466
    :cond_1a
    iget-boolean v2, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_28

    .line 4467
    iget-boolean v2, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v2, :cond_26

    move v2, v4

    goto :goto_b

    :cond_26
    move v2, v5

    goto :goto_b

    .line 4469
    :cond_28
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 4470
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 4472
    if-le v0, v1, :cond_30

    move v2, v4

    goto :goto_b

    :cond_30
    if-ge v0, v1, :cond_34

    move v2, v5

    goto :goto_b

    :cond_34
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4453
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/PackageManagerService$3;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
