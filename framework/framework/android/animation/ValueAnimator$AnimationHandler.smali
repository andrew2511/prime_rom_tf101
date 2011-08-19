.class Landroid/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .parameter "msg"

    .prologue
    .line 568
    const/4 v6, 0x1

    .line 569
    .local v6, callAgain:Z
    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 570
    .local v5, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 571
    .local v10, delayedAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_130

    .line 664
    .end local p1
    :cond_1e
    :goto_1e
    return-void

    .line 575
    .restart local p1
    :pswitch_1f
    invoke-static {}, Landroid/animation/ValueAnimator;->access$200()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 576
    .local v16, pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_35

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_36

    .line 577
    :cond_35
    const/4 v6, 0x0

    .line 584
    :cond_36
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_69

    .line 585
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 587
    .local v17, pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 588
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 589
    .local v7, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4a
    if-ge v12, v7, :cond_36

    .line 590
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 592
    .local v4, anim:Landroid/animation/ValueAnimator;
    #getter for: Landroid/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$300(Landroid/animation/ValueAnimator;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_65

    .line 593
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)V

    .line 589
    :goto_62
    add-int/lit8 v12, v12, 0x1

    goto :goto_4a

    .line 595
    :cond_65
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 603
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    .end local v7           #count:I
    .end local v12           #i:I
    .end local v16           #pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    .end local v17           #pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_69
    :pswitch_69
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 604
    .local v8, currentTime:J
    invoke-static {}, Landroid/animation/ValueAnimator;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 605
    .local v18, readyAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-static {}, Landroid/animation/ValueAnimator;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 609
    .local v11, endingAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 610
    .local v14, numDelayedAnims:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_86
    if-ge v12, v14, :cond_9d

    .line 611
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 612
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Landroid/animation/ValueAnimator;->access$700(Landroid/animation/ValueAnimator;J)Z

    move-result v19

    if-eqz v19, :cond_9a

    .line 613
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_9a
    add-int/lit8 v12, v12, 0x1

    goto :goto_86

    .line 616
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_9d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 617
    .local v15, numReadyAnims:I
    if-lez v15, :cond_bb

    .line 618
    const/4 v12, 0x0

    :goto_a4
    if-ge v12, v15, :cond_b8

    .line 619
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 620
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)V

    .line 621
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v12, v12, 0x1

    goto :goto_a4

    .line 623
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_b8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 628
    :cond_bb
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 629
    .local v13, numAnims:I
    const/4 v12, 0x0

    .line 630
    :goto_c0
    if-ge v12, v13, :cond_e3

    .line 631
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 632
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v19

    if-eqz v19, :cond_d1

    .line 633
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_d1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move v1, v13

    if-ne v0, v1, :cond_dd

    .line 636
    add-int/lit8 v12, v12, 0x1

    goto :goto_c0

    .line 645
    :cond_dd
    add-int/lit8 v13, v13, -0x1

    .line 646
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 649
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_e3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_102

    .line 650
    const/4 v12, 0x0

    .end local p1
    :goto_ea
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_ff

    .line 651
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {p1 .. p1}, Landroid/animation/ValueAnimator;->access$800(Landroid/animation/ValueAnimator;)V

    .line 650
    add-int/lit8 v12, v12, 0x1

    goto :goto_ea

    .line 653
    :cond_ff
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 658
    :cond_102
    if-eqz v6, :cond_1e

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_110

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 659
    :cond_110
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    invoke-static {}, Landroid/animation/ValueAnimator;->access$900()J

    move-result-wide v22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1e

    .line 571
    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_69
    .end packed-switch
.end method
