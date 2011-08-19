.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 3763
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3764
    #getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 3765
    return-void
.end method


# virtual methods
.method public run()V
    .registers 33

    .prologue
    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_23

    .line 4072
    :cond_22
    :goto_22
    return-void

    .line 3905
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    .line 3906
    .local v17, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v7, v0

    .line 3908
    .local v7, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_3e2

    goto :goto_22

    .line 3910
    :pswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v28

    const/16 v29, 0x1

    sub-int v14, v28, v29

    .line 3911
    .local v14, lastViewIndex:I
    add-int v10, v7, v14

    .line 3913
    .local v10, lastPos:I
    if-ltz v14, :cond_22

    .line 3917
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ne v0, v1, :cond_6d

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    .line 3923
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3924
    .local v11, lastView:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 3925
    .local v13, lastViewHeight:I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3926
    .local v16, lastViewTop:I
    sub-int v15, v17, v16

    .line 3927
    .local v15, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v28, v0

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_d3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    move/from16 v6, v28

    .line 3929
    .local v6, extraScroll:I
    :goto_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    sub-int v29, v13, v15

    add-int v29, v29, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3932
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_22

    .line 3934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 3927
    .end local v6           #extraScroll:I
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v6, v28

    goto :goto_a1

    .line 3940
    .end local v10           #lastPos:I
    .end local v11           #lastView:Landroid/view/View;
    .end local v13           #lastViewHeight:I
    .end local v14           #lastViewIndex:I
    .end local v15           #lastViewPixelsShowing:I
    .end local v16           #lastViewTop:I
    :pswitch_e8
    const/16 v22, 0x1

    .line 3941
    .local v22, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 3943
    .local v4, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v28, v0

    move v0, v7

    move/from16 v1, v28

    if-eq v0, v1, :cond_22

    const/16 v28, 0x1

    move v0, v4

    move/from16 v1, v28

    if-le v0, v1, :cond_22

    add-int v28, v7, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_22

    .line 3947
    add-int/lit8 v19, v7, 0x1

    .line 3949
    .local v19, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_137

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 3955
    :cond_137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3956
    .local v20, nextView:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 3957
    .local v21, nextViewHeight:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3958
    .local v23, nextViewTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move v6, v0

    .line 3959
    .restart local v6       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_18a

    .line 3960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int v30, v21, v23

    sub-int v30, v30, v6

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3963
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 3967
    :cond_18a
    move/from16 v0, v23

    move v1, v6

    if-le v0, v1, :cond_22

    .line 3968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    sub-int v29, v23, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 3975
    .end local v4           #childCount:I
    .end local v6           #extraScroll:I
    .end local v19           #nextPos:I
    .end local v20           #nextView:Landroid/view/View;
    .end local v21           #nextViewHeight:I
    .end local v22           #nextViewIndex:I
    .end local v23           #nextViewTop:I
    :pswitch_1a2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v28, v0

    move v0, v7

    move/from16 v1, v28

    if-ne v0, v1, :cond_1bc

    .line 3977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 3981
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3982
    .local v8, firstView:Landroid/view/View;
    if-eqz v8, :cond_22

    .line 3985
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 3986
    .local v9, firstViewTop:I
    if-lez v7, :cond_208

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    move/from16 v6, v28

    .line 3988
    .restart local v6       #extraScroll:I
    :goto_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    sub-int v29, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3990
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3992
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v28, v0

    move v0, v7

    move/from16 v1, v28

    if-le v0, v1, :cond_22

    .line 3993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 3986
    .end local v6           #extraScroll:I
    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v6, v28

    goto :goto_1d8

    .line 3999
    .end local v8           #firstView:Landroid/view/View;
    .end local v9           #firstViewTop:I
    :pswitch_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v28

    const/16 v29, 0x2

    sub-int v14, v28, v29

    .line 4000
    .restart local v14       #lastViewIndex:I
    if-ltz v14, :cond_22

    .line 4003
    add-int v10, v7, v14

    .line 4005
    .restart local v10       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ne v0, v1, :cond_249

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4011
    :cond_249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4012
    .restart local v11       #lastView:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 4013
    .restart local v13       #lastViewHeight:I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4014
    .restart local v16       #lastViewTop:I
    sub-int v15, v17, v16

    .line 4015
    .restart local v15       #lastViewPixelsShowing:I
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4016
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-le v0, v1, :cond_29b

    .line 4017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v29, v0

    sub-int v29, v15, v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4020
    :cond_29b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    sub-int v3, v17, v28

    .line 4021
    .local v3, bottom:I
    add-int v12, v16, v13

    .line 4022
    .local v12, lastViewBottom:I
    if-le v3, v12, :cond_22

    .line 4023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    sub-int v29, v3, v12

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4030
    .end local v3           #bottom:I
    .end local v10           #lastPos:I
    .end local v11           #lastView:Landroid/view/View;
    .end local v12           #lastViewBottom:I
    .end local v13           #lastViewHeight:I
    .end local v14           #lastViewIndex:I
    .end local v15           #lastViewPixelsShowing:I
    .end local v16           #lastViewTop:I
    :pswitch_2bf
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v28, v0

    move/from16 v0, v28

    move v1, v7

    if-ne v0, v1, :cond_2d9

    .line 4032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4036
    :cond_2d9
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 4039
    .restart local v4       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v24, v0

    .line 4040
    .local v24, position:I
    add-int v28, v7, v4

    const/16 v29, 0x1

    sub-int v10, v28, v29

    .line 4042
    .restart local v10       #lastPos:I
    const/16 v27, 0x0

    .line 4043
    .local v27, viewTravelCount:I
    move/from16 v0, v24

    move v1, v7

    if-ge v0, v1, :cond_352

    .line 4044
    sub-int v28, v7, v24

    add-int/lit8 v27, v28, 0x1

    .line 4050
    :cond_2ff
    :goto_2ff
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v28, v0

    move v0, v4

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v25, v28, v29

    .line 4052
    .local v25, screenTravelCount:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x3f80

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 4053
    .local v18, modifier:F
    move/from16 v0, v24

    move v1, v7

    if-ge v0, v1, :cond_35a

    .line 4054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v18

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4045
    .end local v18           #modifier:F
    .end local v25           #screenTravelCount:F
    :cond_352
    move/from16 v0, v24

    move v1, v10

    if-le v0, v1, :cond_2ff

    .line 4046
    sub-int v27, v24, v10

    goto :goto_2ff

    .line 4056
    .restart local v18       #modifier:F
    .restart local v25       #screenTravelCount:F
    :cond_35a
    move/from16 v0, v24

    move v1, v10

    if-le v0, v1, :cond_393

    .line 4057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v18

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4061
    :cond_393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    sub-int v29, v24, v7

    invoke-virtual/range {v28 .. v29}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4062
    .local v26, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v28, v0

    sub-int v5, v26, v28

    .line 4063
    .local v5, distance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move v1, v5

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 3908
    :pswitch_data_3e2
    .packed-switch 0x1
        :pswitch_42
        :pswitch_1a2
        :pswitch_e8
        :pswitch_21d
        :pswitch_2bf
    .end packed-switch
.end method

.method start(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 3768
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3770
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3771
    .local v0, firstPos:I
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v1, v3, v5

    .line 3774
    .local v1, lastPos:I
    if-gt p1, v0, :cond_2f

    .line 3775
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 3776
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3785
    :goto_1d
    if-lez v2, :cond_38

    .line 3786
    div-int v3, v6, v2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3790
    :goto_23
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3791
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3792
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3794
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3795
    .end local v2           #viewTravelCount:I
    :cond_2e
    return-void

    .line 3777
    :cond_2f
    if-lt p1, v1, :cond_2e

    .line 3778
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 3779
    .restart local v2       #viewTravelCount:I
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1d

    .line 3788
    :cond_38
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_23
.end method

.method start(II)V
    .registers 14
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 3798
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3800
    if-ne p2, v9, :cond_d

    .line 3801
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3856
    :cond_c
    :goto_c
    return-void

    .line 3805
    :cond_d
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3806
    .local v3, firstPos:I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    sub-int v4, v7, v8

    .line 3809
    .local v4, lastPos:I
    if-gt p1, v3, :cond_43

    .line 3810
    sub-int v1, v4, p2

    .line 3811
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_c

    .line 3816
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 3817
    .local v5, posTravel:I
    sub-int v2, v1, v8

    .line 3818
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_3e

    .line 3819
    move v6, v2

    .line 3820
    .local v6, viewTravelCount:I
    const/4 v7, 0x4

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3846
    .end local v1           #boundPosFromLast:I
    :goto_2c
    if-lez v6, :cond_5a

    .line 3847
    div-int v7, v10, v6

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3851
    :goto_32
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3852
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3853
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3855
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 3822
    .end local v6           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_3e
    move v6, v5

    .line 3823
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 3825
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    .end local v6           #viewTravelCount:I
    :cond_43
    if-lt p1, v4, :cond_c

    .line 3826
    sub-int v0, p2, v3

    .line 3827
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_c

    .line 3832
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 3833
    .restart local v5       #posTravel:I
    sub-int v2, v0, v8

    .line 3834
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_56

    .line 3835
    move v6, v2

    .line 3836
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 3838
    .end local v6           #viewTravelCount:I
    :cond_56
    move v6, v5

    .line 3839
    .restart local v6       #viewTravelCount:I
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 3849
    .end local v0           #boundPosFromFirst:I
    :cond_5a
    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_32
.end method

.method startWithOffset(II)V
    .registers 4
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 3859
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 3860
    return-void
.end method

.method startWithOffset(III)V
    .registers 13
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v8, -0x1

    .line 3863
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3865
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3866
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 3867
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3868
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3869
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3871
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3872
    .local v1, firstPos:I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 3873
    .local v0, childCount:I
    add-int v6, v1, v0

    const/4 v7, 0x1

    sub-int v2, v6, v7

    .line 3876
    .local v2, lastPos:I
    if-ge p1, v1, :cond_39

    .line 3877
    sub-int v5, v1, p1

    .line 3888
    .local v5, viewTravelCount:I
    :goto_22
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 3889
    .local v3, screenTravelCount:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_52

    int-to-float v6, p3

    mul-float/2addr v6, v3

    float-to-int v6, v6

    :goto_2f
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3891
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3893
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3894
    .end local v3           #screenTravelCount:F
    .end local v5           #viewTravelCount:I
    :goto_38
    return-void

    .line 3878
    :cond_39
    if-le p1, v2, :cond_3e

    .line 3879
    sub-int v5, p1, v2

    .restart local v5       #viewTravelCount:I
    goto :goto_22

    .line 3882
    .end local v5           #viewTravelCount:I
    :cond_3e
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, p1, v1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3883
    .local v4, targetTop:I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v4, p2

    invoke-virtual {v6, v7, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_38

    .line 3889
    .end local v4           #targetTop:I
    .restart local v3       #screenTravelCount:F
    .restart local v5       #viewTravelCount:I
    :cond_52
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_2f
.end method

.method stop()V
    .registers 2

    .prologue
    .line 3897
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3898
    return-void
.end method
