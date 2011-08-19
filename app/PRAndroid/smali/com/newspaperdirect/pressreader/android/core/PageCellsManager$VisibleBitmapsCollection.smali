.class public Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;
.super Ljava/lang/Object;
.source "PageCellsManager.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibleBitmapsCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;",
        ">;"
    }
.end annotation


# instance fields
.field private col0:I

.field private col1:I

.field private currentColumn:I

.field private currentRow:I

.field private row0:I

.field private row1:I

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Landroid/graphics/RectF;F)V
    .locals 4
    .parameter
    .parameter "screen"
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x4348

    .line 412
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iget v0, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v2

    div-float/2addr v0, p3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row0:I

    .line 403
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row0:I

    if-gez v0, :cond_0

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row0:I

    .line 404
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v2

    div-float/2addr v0, p3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row1:I

    .line 405
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row1:I

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$8(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$8(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I

    move-result v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row1:I

    .line 406
    :cond_1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v2

    div-float/2addr v0, p3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col0:I

    .line 407
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col0:I

    if-gez v0, :cond_2

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col0:I

    .line 408
    :cond_2
    iget v0, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v2

    div-float/2addr v0, p3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col1:I

    .line 409
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col1:I

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I

    move-result v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col1:I

    .line 410
    :cond_3
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row0:I

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->currentRow:I

    .line 411
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col0:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->currentColumn:I

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I
    .locals 1
    .parameter

    .prologue
    .line 398
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->currentRow:I

    return v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I
    .locals 1
    .parameter

    .prologue
    .line 394
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->row1:I

    return v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I
    .locals 1
    .parameter

    .prologue
    .line 399
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->currentColumn:I

    return v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I
    .locals 1
    .parameter

    .prologue
    .line 396
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col1:I

    return v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->currentColumn:I

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I
    .locals 1
    .parameter

    .prologue
    .line 395
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->col0:I

    return v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->currentRow:I

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
    .locals 1
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)V

    return-object v0
.end method
