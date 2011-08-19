.class public Lcom/android/launcher2/ApplicationInfoDropTarget;
.super Lcom/android/launcher2/IconDropTarget;
.source "ApplicationInfoDropTarget.java"


# instance fields
.field private mFadeAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/ApplicationInfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/IconDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 51
    .local v0, colour:I
    iget-object v3, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 53
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 58
    .local v2, tb:I
    invoke-virtual {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 60
    .local v1, lr:I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v2, v3}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setDragPadding(IIII)V

    .line 62
    .end local v1           #lr:I
    .end local v2           #tb:I
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/ApplicationInfoDropTarget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 78
    .end local p7
    :goto_0
    return v1

    .line 71
    .restart local p7
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, componentName:Landroid/content/ComponentName;
    instance-of v1, p7, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 73
    check-cast p7, Lcom/android/launcher2/ApplicationInfo;

    .end local p7
    iget-object v0, p7, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 77
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;)V

    move v1, v2

    .line 78
    goto :goto_0

    .line 74
    .restart local p7
    :cond_2
    instance-of v1, p7, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 75
    check-cast p7, Lcom/android/launcher2/ShortcutInfo;

    .end local p7
    iget-object v1, p7, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1
.end method

.method public onDragEnd()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 138
    iget-boolean v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mDragAndDropEnabled:Z

    if-nez v6, :cond_0

    .line 172
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-boolean v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mActive:Z

    if-eqz v6, :cond_1

    iput-boolean v9, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mActive:Z

    .line 142
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 143
    :cond_2
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    .line 144
    const-string v6, "alpha"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 145
    .local v2, infoButtonAnimator:Landroid/animation/Animator;
    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 146
    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher2/ApplicationInfoDropTarget$2;

    invoke-direct {v7, p0}, Lcom/android/launcher2/ApplicationInfoDropTarget$2;-><init>(Lcom/android/launcher2/ApplicationInfoDropTarget;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 163
    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mOverlappingViews:[Landroid/view/View;

    if-eqz v6, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mOverlappingViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v5, v0, v1

    .line 165
    .local v5, view:Landroid/view/View;
    const-string v6, "alpha"

    new-array v7, v10, [F

    const/high16 v8, 0x3f80

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 166
    .local v4, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 168
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #oa:Landroid/animation/ObjectAnimator;
    .end local v5           #view:Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
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
    .line 83
    iget-boolean v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mDragAndDropEnabled:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    goto :goto_0
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
    .line 89
    iget-boolean v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mDragAndDropEnabled:Z

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 12
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 94
    if-eqz p2, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mDragAndDropEnabled:Z

    if-eqz v7, :cond_4

    .line 95
    check-cast p2, Lcom/android/launcher2/ItemInfo;

    .end local p2
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 96
    .local v3, itemType:I
    if-nez v3, :cond_1

    move v7, v11

    :goto_0
    iput-boolean v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mActive:Z

    .line 97
    iget-boolean v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mActive:Z

    if-eqz v7, :cond_4

    .line 99
    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 100
    :cond_0
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    .line 101
    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 102
    .local v2, infoButtonAnimator:Landroid/animation/Animator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 104
    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 106
    invoke-virtual {p0, v10}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setVisibility(I)V

    .line 109
    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mOverlappingViews:[Landroid/view/View;

    if-eqz v7, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mOverlappingViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v6, v0, v1

    .line 111
    .local v6, view:Landroid/view/View;
    const-string v7, "alpha"

    new-array v8, v11, [F

    const/4 v9, 0x0

    aput v9, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 112
    .local v5, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v2           #infoButtonAnimator:Landroid/animation/Animator;
    .end local v4           #len$:I
    .end local v5           #oa:Landroid/animation/ObjectAnimator;
    .end local v6           #view:Landroid/view/View;
    :cond_1
    move v7, v10

    .line 96
    goto :goto_0

    .line 115
    .restart local v0       #arr$:[Landroid/view/View;
    .restart local v1       #i$:I
    .restart local v2       #infoButtonAnimator:Landroid/animation/Animator;
    .restart local v4       #len$:I
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/launcher2/ApplicationInfoDropTarget$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/ApplicationInfoDropTarget$1;-><init>(Lcom/android/launcher2/ApplicationInfoDropTarget;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v4           #len$:I
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/ApplicationInfoDropTarget;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 135
    .end local v2           #infoButtonAnimator:Landroid/animation/Animator;
    .end local v3           #itemType:I
    :cond_4
    return-void

    .line 101
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
