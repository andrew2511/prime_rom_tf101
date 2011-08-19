.class public Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;
.super Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;
.source "CanvasConversationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/CanvasConversationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationHeaderLabelDisplayer"
.end annotation


# instance fields
.field private mLabelsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLabels(Landroid/graphics/Canvas;IIII)V
    .locals 27
    .parameter "canvas"
    .parameter "xEnd"
    .parameter "y"
    .parameter "height"
    .parameter "mode"

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    move v6, v0

    if-nez v6, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureTotalDisplayWidth(I)I

    move-result v13

    .line 252
    .local v13, availableSpace:I
    const/4 v15, 0x0

    .line 253
    .local v15, cellSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    move v6, v0

    const/4 v7, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int v14, v13, v6

    .line 254
    .local v14, averageWidth:I
    const/16 v16, 0x0

    .line 255
    .local v16, collapsed:Z
    packed-switch p5, :pswitch_data_0

    .line 268
    :goto_1
    const/16 v24, 0x0

    .line 269
    .local v24, totalWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;

    .line 270
    .local v21, labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 271
    .local v19, labelString:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    add-int v25, v6, v15

    .line 272
    .local v25, width:I
    rem-int v6, v25, v15

    if-eqz v6, :cond_3

    .line 273
    rem-int v6, v25, v15

    sub-int v6, v15, v6

    add-int v25, v25, v6

    .line 275
    :cond_3
    add-int v24, v24, v25

    .line 276
    move/from16 v0, v24

    move v1, v13

    if-le v0, v1, :cond_2

    .line 280
    .end local v19           #labelString:Ljava/lang/String;
    .end local v21           #labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    .end local v25           #width:I
    :cond_4
    move v0, v13

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v26, p2, v6

    .line 282
    .local v26, xStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;

    .line 283
    .restart local v21       #labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 284
    .restart local v19       #labelString:Ljava/lang/String;
    move/from16 v25, v15

    .line 285
    .restart local v25       #width:I
    const/16 v20, 0x0

    .line 286
    .local v20, labelTooLong:Z
    if-nez v16, :cond_7

    .line 287
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    add-int v25, v6, v15

    .line 288
    rem-int v6, v25, v15

    if-eqz v6, :cond_6

    .line 289
    rem-int v6, v25, v15

    sub-int v6, v15, v6

    add-int v25, v25, v6

    .line 291
    :cond_6
    move/from16 v0, v24

    move v1, v13

    if-le v0, v1, :cond_7

    move/from16 v0, v25

    move v1, v14

    if-le v0, v1, :cond_7

    .line 292
    move/from16 v25, v14

    .line 293
    const/16 v20, 0x1

    .line 297
    :cond_7
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->labelId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mContext:Landroid/content/Context;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mAccount:Ljava/lang/String;

    move-object v9, v0

    const-string v10, "^g"

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gm/provider/Label;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    const/4 v6, 0x1

    move/from16 v18, v6

    .line 301
    .local v18, isMuted:Z
    :goto_2
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->backgroundColor:I

    move v7, v0

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 302
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    if-eqz v18, :cond_b

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_3
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$400()I

    move-result v7

    add-int v7, v7, p3

    int-to-float v7, v7

    add-int v8, v26, v25

    int-to-float v8, v8

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$400()I

    move-result v9

    add-int v9, v9, p3

    add-int v9, v9, p4

    int-to-float v9, v9

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    if-nez v16, :cond_9

    .line 308
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->textColor:I

    move v7, v0

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 309
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    move/from16 v0, v25

    move v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$500(II)I

    move-result v22

    .line 310
    .local v22, padding:I
    if-eqz v20, :cond_8

    .line 311
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$600()I

    move-result v22

    .line 312
    add-int v6, v26, v25

    sub-int v23, v6, v22

    .line 313
    .local v23, rightBorder:I
    new-instance v5, Landroid/graphics/LinearGradient;

    sub-int v6, v23, v22

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->textColor:I

    move v10, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->textColor:I

    move v11, v0

    invoke-static {v11}, Lcom/google/android/gm/utils/LabelColorUtils;->getTransparentColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 317
    .local v5, shader:Landroid/graphics/Shader;
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 319
    .end local v5           #shader:Landroid/graphics/Shader;
    .end local v23           #rightBorder:I
    :cond_8
    add-int v6, v26, v22

    int-to-float v6, v6

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$700()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v7, v7, p3

    int-to-float v7, v7

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 324
    .end local v22           #padding:I
    :cond_9
    sub-int v13, v13, v25

    .line 325
    add-int v26, v26, v25

    .line 326
    if-gtz v13, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    move v6, v0

    const/4 v7, 0x4

    if-le v6, v7, :cond_5

    .line 327
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$400()I

    move-result v6

    add-int p3, p3, v6

    .line 328
    packed-switch p5, :pswitch_data_1

    goto/16 :goto_0

    .line 331
    :pswitch_0
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$800()Landroid/graphics/Bitmap;

    move-result-object v6

    move/from16 v0, p2

    int-to-float v0, v0

    move v7, v0

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$800()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x1

    move/from16 v0, p4

    move-object v1, v8

    move v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$900(ILandroid/graphics/Bitmap;I)I

    move-result v8

    add-int v8, v8, p3

    int-to-float v8, v8

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 258
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #isMuted:Z
    .end local v19           #labelString:Ljava/lang/String;
    .end local v20           #labelTooLong:Z
    .end local v21           #labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    .end local v24           #totalWidth:I
    .end local v25           #width:I
    .end local v26           #xStart:I
    :pswitch_1
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$200()I

    move-result v15

    .line 259
    const/16 v16, 0x0

    .line 260
    goto/16 :goto_1

    .line 262
    :pswitch_2
    move v15, v14

    .line 263
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 297
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #labelString:Ljava/lang/String;
    .restart local v20       #labelTooLong:Z
    .restart local v21       #labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    .restart local v24       #totalWidth:I
    .restart local v25       #width:I
    .restart local v26       #xStart:I
    :cond_a
    const/4 v6, 0x0

    move/from16 v18, v6

    goto/16 :goto_2

    .line 302
    .restart local v18       #isMuted:Z
    :cond_b
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_3

    .line 336
    :pswitch_3
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$800()Landroid/graphics/Bitmap;

    move-result-object v6

    move/from16 v0, p2

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v8, v0

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300()Landroid/text/TextPaint;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;->loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    .line 232
    return-void
.end method

.method public measureTotalDisplayWidth(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()I

    move-result v0

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$100()I

    move-result v0

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
