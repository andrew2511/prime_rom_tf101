.class public Lcom/android/launcher2/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field animateDrop:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field public isLockedToGrid:Z

.field oldX:I

.field oldY:I

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 1596
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1597
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1598
    iput p2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1599
    iput p3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1600
    iput p4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1601
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1576
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1545
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1577
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1578
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1579
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1582
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1583
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1584
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1585
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1625
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1629
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 1630
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1621
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 1622
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1637
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1638
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1645
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1646
    return-void
.end method

.method public setup(IIIIII)V
    .locals 7
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    const/4 v6, 0x1

    .line 1605
    iget-boolean v4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_0

    .line 1606
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1607
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1608
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1609
    .local v2, myCellX:I
    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1611
    .local v3, myCellY:I
    mul-int v4, v0, p1

    sub-int v5, v0, v6

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 1613
    mul-int v4, v1, p2

    sub-int v5, v1, v6

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 1615
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1616
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1618
    .end local v0           #myCellHSpan:I
    .end local v1           #myCellVSpan:I
    .end local v2           #myCellX:I
    .end local v3           #myCellY:I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
