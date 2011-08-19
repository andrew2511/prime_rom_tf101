.class Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;
.super Ljava/lang/Object;
.source "AlbumWallGridView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleTracker"
.end annotation


# instance fields
.field private mAnchorCol:I

.field private mAnchorOffsetX:F

.field private mAnchorOffsetY:F

.field private mAnchorRow:I

.field private mOldGlobalX:F

.field private mOldGlobalY:F

.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallGridView;Landroid/view/MotionEvent;)V
    .locals 17
    .parameter
    .parameter "e0"

    .prologue
    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$000(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/opengl/glview/GridView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;

    .line 97
    .local v2, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 98
    .local v9, ex:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 100
    .local v10, ey:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->x()F

    move-result v14

    .line 101
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->y()F

    move-result v15

    .line 103
    .local v15, y:F
    sub-float v7, v9, v14

    .line 104
    .local v7, cx:F
    sub-float v8, v10, v15

    .line 106
    .local v8, cy:F
    const/16 v16, 0x1

    move-object v0, v2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v5

    .line 107
    .local v5, cellSizeW:F
    const/16 v16, 0x0

    move-object v0, v2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v4

    .line 109
    .local v4, cellSizeH:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapW()F

    move-result v16

    add-float v6, v5, v16

    .line 110
    .local v6, cellW:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapH()F

    move-result v16

    add-float v3, v4, v16

    .line 112
    .local v3, cellH:F
    div-float v16, v7, v6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorCol:I

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorCol:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v6

    sub-float v16, v7, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetX:F

    .line 114
    div-float v16, v8, v3

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorRow:I

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorRow:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v16, v8, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetY:F

    .line 116
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    .line 117
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v13

    .line 120
    .local v13, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v13, :cond_0

    .line 121
    invoke-virtual {v13}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v11

    .line 122
    .local v11, ox:F
    invoke-virtual {v13}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v12

    .line 123
    .local v12, oy:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    move/from16 v16, v0

    add-float v16, v16, v11

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    move/from16 v16, v0

    add-float v16, v16, v12

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    .line 126
    .end local v11           #ox:F
    .end local v12           #oy:F
    :cond_0
    return-void
.end method

.method private layoutIfNeeded(FF)V
    .locals 17
    .parameter "current"
    .parameter "newValue"

    .prologue
    .line 162
    cmpl-float v13, p1, p2

    if-nez v13, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/high16 v13, 0x3f80

    cmpg-float v13, p1, v13

    if-gez v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    const/high16 v14, 0x3f80

    cmpg-float v14, p2, v14

    if-gez v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    if-eq v13, v14, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->clearChildren()V

    .line 169
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v12

    .line 170
    .local v12, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v12, :cond_0

    .line 172
    const/16 v13, 0xc8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/google/android/opengl/glview/Transformer;->visit(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->x()F

    move-result v13

    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->y()F

    move-result v14

    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v15

    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v16

    invoke-virtual/range {v12 .. v16}, Lcom/google/android/opengl/glview/Transformer;->setContentRect(FFFF)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-static {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$200(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/opengl/glview/GridView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;

    .line 179
    .local v1, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    const/4 v13, 0x1

    invoke-interface {v1, v13}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v4

    .line 180
    .local v4, cellSizeW:F
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v3

    .line 182
    .local v3, cellSizeH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapW()F

    move-result v13

    add-float v5, v4, v13

    .line 183
    .local v5, cellW:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapH()F

    move-result v13

    add-float v2, v3, v13

    .line 185
    .local v2, cellH:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorCol:I

    move v13, v0

    int-to-float v13, v13

    mul-float/2addr v13, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetX:F

    move v14, v0

    add-float v6, v13, v14

    .line 186
    .local v6, cx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorRow:I

    move v13, v0

    int-to-float v13, v13

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetY:F

    move v14, v0

    add-float v7, v13, v14

    .line 188
    .local v7, cy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->x()F

    move-result v13

    add-float v10, v13, v6

    .line 189
    .local v10, ex:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->y()F

    move-result v13

    add-float v11, v13, v7

    .line 191
    .local v11, ey:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    move v13, v0

    sub-float v8, v13, v10

    .line 192
    .local v8, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    move v13, v0

    sub-float v9, v13, v11

    .line 194
    .local v9, deltaY:F
    invoke-virtual {v12, v8, v9}, Lcom/google/android/opengl/glview/Transformer;->setOffset(FF)V

    goto/16 :goto_0

    .line 165
    .end local v1           #adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    .end local v2           #cellH:F
    .end local v3           #cellSizeH:F
    .end local v4           #cellSizeW:F
    .end local v5           #cellW:F
    .end local v6           #cx:F
    .end local v7           #cy:F
    .end local v8           #deltaX:F
    .end local v9           #deltaY:F
    .end local v10           #ex:F
    .end local v11           #ey:F
    .end local v12           #transformer:Lcom/google/android/opengl/glview/Transformer;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .locals 8
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/high16 v7, 0x3f80

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 158
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 132
    :pswitch_0
    move v3, p4

    .line 133
    .local v3, scale:F
    cmpl-float v4, v3, v7

    if-eqz v4, :cond_0

    .line 134
    const-string v4, "AlbumWallGridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    .line 136
    .local v1, current:F
    add-float v4, v7, v1

    mul-float/2addr v4, v3

    sub-float v2, v4, v7

    .line 137
    .local v2, newValue:F
    const/4 v4, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 138
    .local v0, clampedNewValue:F
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model;->setExpandUngroupedMetadata(F)V

    .line 139
    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->layoutIfNeeded(FF)V

    .line 141
    .end local v0           #clampedNewValue:F
    .end local v1           #current:F
    .end local v2           #newValue:F
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 145
    .end local v3           #scale:F
    :pswitch_1
    const-string v4, "AlbumWallGridView"

    const-string v5, "scale end "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    .line 148
    .restart local v1       #current:F
    const/high16 v4, 0x3f00

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 149
    const/4 v2, 0x0

    .line 153
    .restart local v2       #newValue:F
    :goto_1
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/music/albumwall/Model;->setExpandUngroupedMetadata(F)V

    .line 154
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->layoutIfNeeded(FF)V

    .line 155
    const/4 v4, 0x3

    goto :goto_0

    .line 151
    .end local v2           #newValue:F
    :cond_1
    const/high16 v2, 0x3f80

    .restart local v2       #newValue:F
    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
