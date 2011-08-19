.class public Lcom/android/launcher2/IconDropTarget;
.super Landroid/widget/TextView;
.source "IconDropTarget.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field protected mActive:Z

.field protected mDragAndDropEnabled:Z

.field protected final mDragPadding:[I

.field protected final mHoverPaint:Landroid/graphics/Paint;

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field protected mOverlappingViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/IconDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mOverlappingViews:[Landroid/view/View;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragAndDropEnabled:Z

    .line 60
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 129
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 131
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 132
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 133
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 135
    :cond_0
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragAndDropEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/IconDropTarget;->mActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragAndDropEnabled:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragAndDropEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 105
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 116
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 93
    return-void
.end method

.method setDragAndDropEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/launcher2/IconDropTarget;->mDragAndDropEnabled:Z

    .line 83
    return-void
.end method

.method protected setDragPadding(IIII)V
    .locals 2
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "l"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 64
    iget-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mDragPadding:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 67
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/IconDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 71
    return-void
.end method

.method setOverlappingView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/IconDropTarget;->mOverlappingViews:[Landroid/view/View;

    .line 75
    return-void
.end method

.method setOverlappingViews([Landroid/view/View;)V
    .locals 0
    .parameter "views"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/IconDropTarget;->mOverlappingViews:[Landroid/view/View;

    .line 79
    return-void
.end method
