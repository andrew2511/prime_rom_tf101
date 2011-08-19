.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveOpacity:Z

.field private mHaveStateful:Z

.field mNum:I

.field private mOpacity:I

.field private mStateful:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 10
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 601
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 592
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 595
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 602
    if-eqz p1, :cond_77

    .line 603
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 604
    .local v3, origChildDrawable:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 606
    .local v0, N:I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 607
    new-array v5, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 609
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 610
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 612
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v0, :cond_61

    .line 613
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v4, v5, v1

    .line 614
    .local v4, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v2, v3, v1

    .line 615
    .local v2, or:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-eqz p3, :cond_54

    .line 616
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 620
    :goto_38
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 621
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 622
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 623
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 624
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 625
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 618
    :cond_54
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_38

    .line 628
    .end local v2           #or:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v4           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_61
    iget-boolean v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 629
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 630
    iget-boolean v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 631
    iget-boolean v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 632
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 637
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #origChildDrawable:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :goto_76
    return-void

    .line 634
    :cond_77
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 635
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    goto :goto_76
.end method


# virtual methods
.method public declared-synchronized canConstantState()Z
    .registers 4

    .prologue
    .line 689
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    if-nez v2, :cond_23

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v2, :cond_23

    .line 690
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 691
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 692
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_20

    .line 693
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_27

    .line 694
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 698
    :cond_20
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 701
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_23
    iget-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2a

    monitor-exit p0

    return v2

    .line 692
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 689
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 651
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .registers 6

    .prologue
    .line 655
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v3, :cond_7

    .line 656
    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 666
    :goto_6
    return v3

    .line 659
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 660
    .local v0, N:I
    if-lez v0, :cond_2b

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    move v2, v3

    .line 661
    .local v2, op:I
    :goto_17
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    if-ge v1, v0, :cond_2e

    .line 662
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 660
    .end local v1           #i:I
    .end local v2           #op:I
    :cond_2b
    const/4 v3, -0x2

    move v2, v3

    goto :goto_17

    .line 664
    .restart local v1       #i:I
    .restart local v2       #op:I
    :cond_2e
    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 665
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    move v3, v2

    .line 666
    goto :goto_6
.end method

.method public final isStateful()Z
    .registers 5

    .prologue
    .line 670
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    if-eqz v3, :cond_7

    .line 671
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 685
    :goto_6
    return v3

    .line 674
    :cond_7
    const/4 v2, 0x0

    .line 675
    .local v2, stateful:Z
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 676
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1a

    .line 677
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 678
    const/4 v2, 0x1

    .line 683
    :cond_1a
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 684
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    move v3, v2

    .line 685
    goto :goto_6

    .line 676
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 641
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "res"

    .prologue
    .line 646
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method
