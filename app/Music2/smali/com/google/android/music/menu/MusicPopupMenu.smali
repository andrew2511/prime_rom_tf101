.class public Lcom/google/android/music/menu/MusicPopupMenu;
.super Lcom/google/android/music/menu/MusicListMenu;
.source "MusicPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupMenu"


# instance fields
.field private mCloseButton:Landroid/view/View;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mTickDirection:I

.field private mTickX:I

.field private mTickY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 33
    return-void
.end method

.method private computeCenteredLocation(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Point;
    .locals 18
    .parameter "background"
    .parameter "menuView"

    .prologue
    .line 115
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v11, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0003

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 119
    .local v14, width:I
    const/4 v15, -0x2

    move-object/from16 v0, p2

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 122
    .local v7, height:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .local v4, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mRootView:Landroid/view/View;

    move-object v15, v0

    invoke-virtual {v15, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 124
    iget v15, v4, Landroid/graphics/Rect;->right:I

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 125
    .local v6, displayWidth:I
    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 126
    .local v5, displayHeight:I
    iget v15, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v7

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 128
    .local v12, popupHeight:I
    iget v15, v11, Landroid/graphics/Rect;->top:I

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v8, v15, v16

    .line 129
    .local v8, highestTopAllowed:I
    iget v15, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v5

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v10, v15, v16

    .line 130
    .local v10, lowestBottomAllowed:I
    move v3, v5

    .line 132
    .local v3, availableHeight:I
    if-ge v3, v12, :cond_0

    .line 133
    move v12, v3

    .line 134
    iget v15, v11, Landroid/graphics/Rect;->top:I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    sub-int v7, v12, v15

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object v15, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v16, v16, v14

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object v15, v0

    invoke-virtual {v15, v12}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 139
    sub-int v15, v5, v7

    div-int/lit8 v15, v15, 0x2

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 140
    .local v13, top:I
    sub-int v15, v6, v14

    div-int/lit8 v9, v15, 0x2

    .line 142
    .local v9, left:I
    new-instance v15, Landroid/graphics/Point;

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    invoke-direct/range {v15 .. v17}, Landroid/graphics/Point;-><init>(II)V

    return-object v15
.end method

.method private computeDisplayLocationAndTickMark(Lcom/google/android/music/menu/MenuBackgroundDrawable;Landroid/view/View;)Landroid/graphics/Point;
    .locals 38
    .parameter "background"
    .parameter "menuView"

    .prologue
    .line 147
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 148
    .local v22, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0003

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    .line 151
    .local v34, width:I
    const/16 v35, -0x2

    move-object/from16 v0, p2

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 154
    .local v13, height:I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v10, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mRootView:Landroid/view/View;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 156
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v12, v35, v36

    .line 157
    .local v12, displayWidth:I
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v11, v35, v36

    .line 158
    .local v11, displayHeight:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    add-int v35, v35, v13

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    add-int v24, v35, v36

    .line 160
    .local v24, popupHeight:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    add-int v14, v35, v36

    .line 161
    .local v14, highestTopAllowed:I
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    add-int v35, v35, v11

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v21, v35, v36

    .line 162
    .local v21, lowestBottomAllowed:I
    move v3, v11

    .line 164
    .local v3, availableHeight:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    add-int v16, v35, v36

    .line 165
    .local v16, leftmostAllowed:I
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    add-int v35, v35, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v28, v35, v36

    .line 166
    .local v28, rightmostAllowed:I
    move v4, v12

    .line 168
    .local v4, availableWidth:I
    move v0, v3

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 169
    move/from16 v24, v3

    .line 170
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    add-int v35, v35, v36

    sub-int v13, v24, v35

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    add-int v36, v36, v34

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    add-int v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 175
    sub-int v35, v11, v13

    div-int/lit8 v35, v35, 0x2

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    add-int v33, v35, v36

    .line 176
    .local v33, top:I
    sub-int v35, v12, v34

    div-int/lit8 v15, v35, 0x2

    .line 177
    .local v15, left:I
    add-int v9, v33, v13

    .line 178
    .local v9, bottom:I
    add-int v27, v15, v34

    .line 180
    .local v27, right:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickDirection:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getTopEdgeThickness()I

    move-result v35

    add-int v8, v33, v35

    .line 182
    .local v8, bodyTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickY:I

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getRightTickHeight()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    sub-int v32, v35, v36

    .line 183
    .local v32, tickTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickY:I

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getRightTickHeight()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    add-int v29, v35, v36

    .line 184
    .local v29, tickBottom:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomEdgeThickness()I

    move-result v35

    sub-int v5, v9, v35

    .line 186
    .local v5, bodyBottom:I
    move/from16 v0, v32

    move v1, v8

    if-ge v0, v1, :cond_4

    .line 189
    move/from16 v8, v32

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getTopEdgeThickness()I

    move-result v35

    sub-int v33, v8, v35

    .line 191
    move/from16 v0, v33

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 192
    move/from16 v33, v14

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getTopEdgeThickness()I

    move-result v35

    add-int v8, v33, v35

    .line 195
    :cond_1
    add-int v9, v33, v13

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomEdgeThickness()I

    move-result v35

    sub-int v5, v9, v35

    .line 214
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickX:I

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getRightTickWidth()I

    move-result v36

    sub-int v19, v35, v36

    .line 215
    .local v19, linedUpRight:I
    sub-int v18, v19, v34

    .line 217
    .local v18, linedUpLeft:I
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->clearTickMark()V

    .line 276
    .end local v5           #bodyBottom:I
    .end local v8           #bodyTop:I
    .end local v18           #linedUpLeft:I
    .end local v19           #linedUpRight:I
    .end local v29           #tickBottom:I
    .end local v32           #tickTop:I
    :cond_3
    :goto_1
    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v35, v15, v35

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v36, v33, v36

    move-object/from16 v0, v23

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 277
    .local v23, point:Landroid/graphics/Point;
    return-object v23

    .line 197
    .end local v23           #point:Landroid/graphics/Point;
    .restart local v5       #bodyBottom:I
    .restart local v8       #bodyTop:I
    .restart local v29       #tickBottom:I
    .restart local v32       #tickTop:I
    :cond_4
    move/from16 v0, v29

    move v1, v5

    if-le v0, v1, :cond_2

    .line 200
    move/from16 v5, v29

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomEdgeThickness()I

    move-result v35

    add-int v9, v5, v35

    .line 202
    move v0, v9

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 205
    move/from16 v9, v21

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomEdgeThickness()I

    move-result v35

    sub-int v5, v9, v35

    .line 208
    :cond_5
    sub-int v33, v9, v13

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getTopEdgeThickness()I

    move-result v35

    add-int v8, v33, v35

    goto :goto_0

    .line 225
    .restart local v18       #linedUpLeft:I
    .restart local v19       #linedUpRight:I
    :cond_6
    move/from16 v15, v18

    .line 226
    move/from16 v27, v19

    .line 227
    move/from16 v0, v32

    move v1, v8

    if-lt v0, v1, :cond_3

    move/from16 v0, v29

    move v1, v5

    if-gt v0, v1, :cond_3

    .line 228
    sub-int v26, v32, v8

    .line 229
    .local v26, relativeTickTop:I
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->setTickMarkRight(I)V

    goto :goto_1

    .line 232
    .end local v5           #bodyBottom:I
    .end local v8           #bodyTop:I
    .end local v18           #linedUpLeft:I
    .end local v19           #linedUpRight:I
    .end local v26           #relativeTickTop:I
    .end local v29           #tickBottom:I
    .end local v32           #tickTop:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickDirection:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getLeftEdgeThickness()I

    move-result v35

    add-int v6, v15, v35

    .line 234
    .local v6, bodyLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickX:I

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomTickWidth()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    sub-int v30, v35, v36

    .line 235
    .local v30, tickLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickX:I

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomTickWidth()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    add-int v31, v35, v36

    .line 236
    .local v31, tickRight:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getRightEdgeThickness()I

    move-result v35

    sub-int v7, v27, v35

    .line 238
    .local v7, bodyRight:I
    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_9

    .line 241
    move/from16 v6, v30

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getLeftEdgeThickness()I

    move-result v35

    sub-int v15, v6, v35

    .line 243
    add-int v27, v15, v34

    .line 257
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickY:I

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBottomTickHeight()I

    move-result v36

    sub-int v17, v35, v36

    .line 258
    .local v17, linedUpBottom:I
    sub-int v20, v17, v13

    .line 260
    .local v20, linedUpTop:I
    move/from16 v0, v20

    move v1, v14

    if-ge v0, v1, :cond_a

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->clearTickMark()V

    goto/16 :goto_1

    .line 244
    .end local v17           #linedUpBottom:I
    .end local v20           #linedUpTop:I
    :cond_9
    move/from16 v0, v31

    move v1, v7

    if-le v0, v1, :cond_8

    .line 247
    move/from16 v0, v31

    move v1, v7

    if-le v0, v1, :cond_8

    .line 248
    move/from16 v7, v31

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getRightEdgeThickness()I

    move-result v35

    add-int v27, v7, v35

    .line 250
    sub-int v15, v27, v34

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getLeftEdgeThickness()I

    move-result v35

    add-int v6, v15, v35

    goto :goto_2

    .line 268
    .restart local v17       #linedUpBottom:I
    .restart local v20       #linedUpTop:I
    :cond_a
    move/from16 v33, v20

    .line 269
    move/from16 v9, v17

    .line 270
    move/from16 v0, v30

    move v1, v6

    if-lt v0, v1, :cond_3

    move/from16 v0, v31

    move v1, v7

    if-gt v0, v1, :cond_3

    .line 271
    sub-int v25, v30, v6

    .line 272
    .local v25, relativeTickLeft:I
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->setTickMarkBottom(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;
    .locals 5
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 44
    new-instance v1, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mRootView:Landroid/view/View;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 46
    .local v1, subMenu:Lcom/google/android/music/menu/MusicListMenu;
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 47
    .local v0, item:Lcom/google/android/music/menu/MusicListMenuItem;
    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItem;->setSubMenu(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/music/menu/MusicPopupMenu;->setItem(Lcom/google/android/music/menu/MusicMenuItem;)V

    .line 49
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicPopupMenu;->findInsertIndex(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 51
    return-object v1
.end method

.method protected clearView()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/android/music/menu/MusicListMenu;->clearView()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    .line 288
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 304
    :cond_0
    return-void
.end method

.method public bridge synthetic getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getMenuView()Lcom/google/android/music/menu/MusicListMenuView;
    .locals 5

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-nez v2, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 59
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040021

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicListMenuView;

    iput-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    .line 61
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    const v3, 0x7f0f005e

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, headerView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mHeader:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 64
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicListMenuView;->initialize(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 67
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    const v3, 0x7f0f005f

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mCloseButton:Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mCloseButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mCloseButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicListMenuView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    .end local v0           #headerView:Landroid/view/View;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicListMenuView;->setUseDividers(Z)V

    .line 75
    iget-object v2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    monitor-exit p0

    return-object v2

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mCloseButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 83
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->clearView()V

    .line 282
    return-void
.end method

.method public setLocation(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickX:I

    .line 38
    iput p2, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickY:I

    .line 39
    iput p3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mTickDirection:I

    .line 40
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->clearView()V

    .line 91
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    .line 92
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v1

    .line 94
    .local v1, menuView:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 96
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 97
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 98
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 99
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x7f0e000b

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 101
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mHeader:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 102
    new-instance v0, Lcom/google/android/music/menu/MenuBackgroundDrawable;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/music/menu/MenuBackgroundDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 103
    .local v0, background:Lcom/google/android/music/menu/MenuBackgroundDrawable;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->computeDisplayLocationAndTickMark(Lcom/google/android/music/menu/MenuBackgroundDrawable;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 105
    .local v2, point:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mRootView:Landroid/view/View;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 112
    .end local v0           #background:Lcom/google/android/music/menu/MenuBackgroundDrawable;
    :goto_0
    return-void

    .line 107
    .end local v2           #point:Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicPopupMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->computeCenteredLocation(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 110
    .restart local v2       #point:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicPopupMenu;->mRootView:Landroid/view/View;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
