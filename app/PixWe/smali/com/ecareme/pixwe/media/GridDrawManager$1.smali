.class Lcom/ecareme/pixwe/media/GridDrawManager$1;
.super Ljava/lang/Object;
.source "GridDrawManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/GridDrawManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ecareme/pixwe/media/DisplayItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/DisplayItem;)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v4

    .line 78
    :goto_0
    return v1

    .line 72
    :cond_1
    iget-object v1, p1, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget v1, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iget-object v2, p2, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget v2, v2, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    sub-float v0, v1, v2

    .line 73
    .local v0, delta:F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    cmpg-float v1, v0, v3

    if-gez v1, :cond_3

    .line 76
    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    move v1, v4

    .line 78
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/ecareme/pixwe/media/DisplayItem;

    check-cast p2, Lcom/ecareme/pixwe/media/DisplayItem;

    invoke-virtual {p0, p1, p2}, Lcom/ecareme/pixwe/media/GridDrawManager$1;->compare(Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/DisplayItem;)I

    move-result v0

    return v0
.end method
