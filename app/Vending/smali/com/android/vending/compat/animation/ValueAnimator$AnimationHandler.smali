.class Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/compat/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/compat/animation/ValueAnimator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 597
    const/4 v5, 0x1

    .line 598
    .local v5, callAgain:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v14, v0

    packed-switch v14, :pswitch_data_0

    .line 675
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 602
    .restart local p1
    :pswitch_0
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_1

    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 603
    :cond_1
    const/4 v5, 0x0

    .line 610
    :cond_2
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$200()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 611
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$200()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 613
    .local v13, pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/ValueAnimator;>;"
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$200()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 614
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 615
    .local v6, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 616
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/ValueAnimator;

    .line 618
    .local v4, anim:Lcom/android/vending/compat/animation/ValueAnimator;
    invoke-static {v4}, Lcom/android/vending/compat/animation/ValueAnimator;->access$300(Lcom/android/vending/compat/animation/ValueAnimator;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    invoke-static {v4}, Lcom/android/vending/compat/animation/ValueAnimator;->access$400(Lcom/android/vending/compat/animation/ValueAnimator;)I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_3

    invoke-static {v4}, Lcom/android/vending/compat/animation/ValueAnimator;->access$400(Lcom/android/vending/compat/animation/ValueAnimator;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 620
    :cond_3
    invoke-static {v4}, Lcom/android/vending/compat/animation/ValueAnimator;->access$500(Lcom/android/vending/compat/animation/ValueAnimator;)V

    .line 615
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 622
    :cond_4
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 630
    .end local v4           #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v13           #pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/ValueAnimator;>;"
    :cond_5
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 634
    .local v7, currentTime:J
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 635
    .local v11, numDelayedAnims:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    if-ge v9, v11, :cond_7

    .line 636
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/ValueAnimator;

    .line 637
    .restart local v4       #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    invoke-static {v4, v7, v8}, Lcom/android/vending/compat/animation/ValueAnimator;->access$600(Lcom/android/vending/compat/animation/ValueAnimator;J)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 638
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 641
    .end local v4           #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    :cond_7
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 642
    .local v12, numReadyAnims:I
    if-lez v12, :cond_9

    .line 643
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v12, :cond_8

    .line 644
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/ValueAnimator;

    .line 645
    .restart local v4       #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    invoke-static {v4}, Lcom/android/vending/compat/animation/ValueAnimator;->access$500(Lcom/android/vending/compat/animation/ValueAnimator;)V

    .line 646
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 648
    .end local v4           #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    :cond_8
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 653
    :cond_9
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 654
    .local v10, numAnims:I
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_b

    .line 655
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/ValueAnimator;

    .line 656
    .restart local v4       #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    invoke-static {v4, v7, v8}, Lcom/android/vending/compat/animation/ValueAnimator;->access$800(Lcom/android/vending/compat/animation/ValueAnimator;J)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 657
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 660
    .end local v4           #anim:Lcom/android/vending/compat/animation/ValueAnimator;
    :cond_b
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_d

    .line 661
    const/4 v9, 0x0

    .end local p1
    :goto_6
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_c

    .line 662
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vending/compat/animation/ValueAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/vending/compat/animation/ValueAnimator;->access$1000(Lcom/android/vending/compat/animation/ValueAnimator;)V

    .line 661
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 664
    :cond_c
    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 669
    :cond_d
    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 670
    :cond_e
    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    invoke-static {}, Lcom/android/vending/compat/animation/ValueAnimator;->access$1100()J

    move-result-wide v17

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v7

    sub-long v17, v17, v19

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    move-object/from16 v0, p0

    move v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
