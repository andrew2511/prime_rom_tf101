.class public Lcom/google/android/talk/AnimatedAdapter2;
.super Landroid/database/DataSetObserver;
.source "AnimatedAdapter2.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$1;,
        Lcom/google/android/talk/AnimatedAdapter2$Status;,
        Lcom/google/android/talk/AnimatedAdapter2$TooLongException;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff;,
        Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;,
        Lcom/google/android/talk/AnimatedAdapter2$ViewCache;,
        Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field public mAddingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedScale:F

.field private mAnimationTime:I

.field private mAnimator:Landroid/animation/Animator;

.field private mCurrentIds:[J

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field public mDeletingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

.field private mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "animationTime"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 47
    const/16 v0, 0x78

    iput v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimationTime:I

    .line 51
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;-><init>(Lcom/google/android/talk/AnimatedAdapter2;)V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    .line 67
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapters must have stable IDs to animate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    .line 71
    iput p2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimationTime:I

    .line 72
    invoke-virtual {p1, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AnimatedAdapter2;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F

    return v0
.end method

.method private getAdapterView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "translatedPosition"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-virtual {v3, p2}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->containsView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const/4 p2, 0x0

    .line 218
    :cond_0
    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p2, v4, v4}, Landroid/view/View;->scrollTo(II)V

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 223
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-nez v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    .line 228
    .local v0, itemId:J
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-virtual {v3, v0, v1, p1, v2}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->put(JILandroid/view/View;)V

    .line 229
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->setWindow(I)V

    .line 232
    .end local v0           #itemId:J
    :cond_2
    return-object v2
.end method

.method private getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    if-nez p2, :cond_4

    .line 259
    new-instance p2, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .end local p2
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;-><init>(Lcom/google/android/talk/AnimatedAdapter2;Landroid/content/Context;)V

    .line 266
    .restart local p2
    :goto_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    move-object v9, v0

    .line 267
    .local v9, item:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    invoke-virtual {v9}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->removeAllViews()V

    .line 269
    const/4 v8, 0x0

    .line 270
    .local v8, initialHeight:I
    iget-object v13, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;

    move-result-object v10

    .line 271
    .local v10, status:Lcom/google/android/talk/AnimatedAdapter2$Status;
    sget-object v13, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v10, v13, :cond_6

    .line 272
    iget-object v13, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, adapterChild:Landroid/view/View;
    iget-object v13, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getDeletingRowId(I)J

    move-result-wide v5

    .line 276
    .local v5, deletingRowId:J
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-eqz v13, :cond_0

    .line 277
    iget-object v13, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-virtual {v13, v5, v6}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->getView(J)Landroid/view/View;

    move-result-object v4

    .line 279
    :cond_0
    if-nez v4, :cond_1

    .line 280
    iget-object v13, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v11

    .line 281
    .local v11, translatedPosition:I
    if-ltz v11, :cond_1

    .line 282
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2;->getInnerViewForPosition(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 283
    instance-of v13, v4, Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;

    if-eqz v13, :cond_1

    .line 284
    move-object v0, v4

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;

    move-object v3, v0

    .line 285
    .local v3, a:Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;
    invoke-interface {v3}, Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;->rebindAlternate()V

    .line 290
    .end local v3           #a:Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;
    .end local v11           #translatedPosition:I
    :cond_1
    if-eqz v4, :cond_5

    .line 293
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 294
    .local v12, vp:Landroid/view/ViewParent;
    if-eqz v12, :cond_2

    .line 295
    check-cast v12, Landroid/view/ViewGroup;

    .end local v12           #vp:Landroid/view/ViewParent;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 297
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v4, v13}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    move-object v0, p0

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2;->measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v8

    .line 302
    :goto_1
    const/4 v13, 0x1

    invoke-virtual {v9, v8, v13}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setForcedHeight(IZ)V

    .line 314
    .end local v4           #adapterChild:Landroid/view/View;
    .end local v5           #deletingRowId:J
    :cond_3
    :goto_2
    return-object p2

    .line 263
    .end local v8           #initialHeight:I
    .end local v9           #item:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    .end local v10           #status:Lcom/google/android/talk/AnimatedAdapter2$Status;
    :cond_4
    move-object/from16 v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 300
    .restart local v4       #adapterChild:Landroid/view/View;
    .restart local v5       #deletingRowId:J
    .restart local v8       #initialHeight:I
    .restart local v9       #item:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    .restart local v10       #status:Lcom/google/android/talk/AnimatedAdapter2$Status;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 303
    .end local v4           #adapterChild:Landroid/view/View;
    .end local v5           #deletingRowId:J
    :cond_6
    sget-object v13, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v10, v13, :cond_3

    .line 304
    iget-object v13, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2;->getInnerViewForPosition(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 307
    .restart local v4       #adapterChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v4, v13}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    move-object v0, p0

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2;->measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v7

    .line 310
    .local v7, height:I
    move v8, v7

    .line 312
    const/4 v13, 0x0

    invoke-virtual {v9, v8, v13}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setForcedHeight(IZ)V

    goto :goto_2
.end method

.method private getInnerViewForPosition(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "originalosition"
    .parameter "parent"

    .prologue
    .line 236
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v1

    .line 237
    .local v1, translatedPosition:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, p2}, Lcom/google/android/talk/AnimatedAdapter2;->getAdapterView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, adapterChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 243
    .local v2, vg:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 246
    :cond_0
    return-object v0
.end method

.method private isAnimating(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->isAddedOrDeleted(I)Z

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAnimator()Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 318
    const-string v1, "animatedScale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    .local v0, a:Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 321
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    return-object v0

    .line 318
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 12
    .parameter "child"
    .parameter "parent"

    .prologue
    const/high16 v11, 0x4000

    .line 118
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 119
    .local v3, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 120
    .local v4, paddingRight:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 121
    .local v8, width:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 122
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x1

    .line 123
    .local v7, pwidth:I
    const/4 v6, -0x1

    .line 124
    .local v6, pheight:I
    if-eqz v5, :cond_0

    .line 125
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    :cond_0
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    add-int v10, v3, v4

    invoke-static {v9, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 132
    .local v1, childWidthSpec:I
    move v2, v6

    .line 134
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 135
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 139
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    return v9

    .line 137
    .end local v0           #childHeightSpec:I
    :cond_1
    const/4 v9, 0x0

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private translateItemPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 332
    move v0, p1

    .line 333
    .local v0, retval:I
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v0

    .line 335
    if-gez v0, :cond_0

    .line 336
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 339
    :cond_0
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getCount()I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v4, 0x0

    .line 91
    move v1, p1

    .line 92
    .local v1, translatedPosition:I
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v2, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;

    move-result-object v2

    sget-object v3, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 94
    .local v0, deleted:Z
    :goto_0
    if-eqz v0, :cond_1

    move-wide v2, v4

    .line 102
    .end local v0           #deleted:Z
    :goto_1
    return-wide v2

    .line 93
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 97
    .restart local v0       #deleted:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v2, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v1

    .line 98
    if-gez v1, :cond_2

    move-wide v2, v4

    .line 99
    goto :goto_1

    .line 102
    .end local v0           #deleted:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->isAddedOrDeleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    move v0, p1

    .line 108
    .local v0, translatedPosition:I
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->isAddedOrDeleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/AnimatedAdapter2;->getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v0

    .line 114
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/talk/AnimatedAdapter2;->getAdapterView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 527
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 528
    .local v1, v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add view count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$100(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {v1, v5}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$102(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;I)I

    .line 532
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 533
    .restart local v1       #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del view count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$100(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {v1, v5}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$102(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;I)I

    .line 538
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 541
    iput-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    .line 542
    iput-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    .line 544
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 545
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 549
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 552
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 555
    return-void
.end method

.method public onChanged()V
    .locals 20

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 401
    .local v12, t1:J
    const/4 v11, 0x0

    .line 402
    .local v11, isDifferent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object v10, v0

    .line 407
    .local v10, ids:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 408
    const/4 v11, 0x1

    .line 409
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v16

    aput-wide v16, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 410
    .end local v7           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 411
    const/4 v11, 0x1

    .line 412
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v16

    aput-wide v16, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 415
    .end local v7           #i:I
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v10, v7

    .line 417
    .local v8, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v7

    cmp-long v16, v8, v16

    if-eqz v16, :cond_2

    .line 418
    const/4 v11, 0x1

    .line 415
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 423
    .end local v8           #id:J
    :cond_3
    if-eqz v11, :cond_7

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->cancel()V

    .line 427
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    .line 430
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_5

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 432
    new-instance v6, Lcom/google/android/talk/AnimatedAdapter2$Diff;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff;-><init>(Lcom/google/android/talk/AnimatedAdapter2;[J[J)V

    .line 433
    .local v6, d:Lcom/google/android/talk/AnimatedAdapter2$Diff;
    const-wide/16 v16, 0x19

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->compute(J)Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    .line 437
    .end local v6           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getAddingCount()I

    move-result v16

    if-lez v16, :cond_8

    const/16 v16, 0x1

    move/from16 v5, v16

    .line 439
    .local v5, anyInserts:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getDeletionCount()I

    move-result v16

    if-lez v16, :cond_9

    const/16 v16, 0x1

    move/from16 v4, v16

    .line 441
    .local v4, anyDeletes:Z
    :goto_4
    const/high16 v16, 0x3f80

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F

    .line 443
    if-nez v4, :cond_6

    if-eqz v5, :cond_a

    .line 444
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/AnimatedAdapter2;->makeAnimator()Landroid/animation/Animator;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->start()V

    .line 451
    .end local v4           #anyDeletes:Z
    .end local v5           #anyInserts:Z
    :cond_7
    :goto_5
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 453
    .local v14, t2:J
    const-string v16, "talk"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ">>>>> total overhead: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v14, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 455
    return-void

    .line 438
    .end local v14           #t2:J
    :cond_8
    const/16 v16, 0x0

    move/from16 v5, v16

    goto :goto_3

    .line 439
    .restart local v5       #anyInserts:Z
    :cond_9
    const/16 v16, 0x0

    move/from16 v4, v16

    goto :goto_4

    .line 447
    .restart local v4       #anyDeletes:Z
    :cond_a
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    goto :goto_5
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 460
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 463
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    .line 464
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public setAnimatedScale(F)V
    .locals 3
    .parameter "f"

    .prologue
    .line 517
    iput p1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F

    .line 518
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 519
    .local v1, v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    invoke-virtual {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->requestLayout()V

    goto :goto_0

    .line 521
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 522
    .restart local v1       #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    invoke-virtual {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->requestLayout()V

    goto :goto_1

    .line 524
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 357
    return-void
.end method
