.class public Lcom/google/android/opengl/glview/GLLinearLayout;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "GLLinearLayout.java"


# static fields
.field public static final EXPAND_GAP:I = 0x4

.field public static final EXPAND_H:I = 0x1

.field public static final EXPAND_V:I = 0x2


# instance fields
.field private mAlignment:I

.field private mExpansion:I

.field private mGap:F

.field private mHorizontalAxis:Z


# direct methods
.method public constructor <init>(IZFII)V
    .locals 0
    .parameter "id"
    .parameter "horizontalAxis"
    .parameter "gap"
    .parameter "alignment"
    .parameter "expansion"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>(I)V

    .line 34
    iput-boolean p2, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    .line 35
    iput p3, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    .line 36
    iput p4, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mAlignment:I

    .line 37
    iput p5, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    .line 38
    return-void
.end method

.method public static createHBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;
    .locals 6
    .parameter "id"
    .parameter "gap"
    .parameter "alignment"
    .parameter "expansion"

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/opengl/glview/GLLinearLayout;

    const/4 v2, 0x1

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLLinearLayout;-><init>(IZFII)V

    return-object v0
.end method

.method public static createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;
    .locals 6
    .parameter "id"
    .parameter "gap"
    .parameter "alignment"
    .parameter "expansion"

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/opengl/glview/GLLinearLayout;

    const/4 v2, 0x0

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLLinearLayout;-><init>(IZFII)V

    return-object v0
.end method

.method private isExpandChildren(Z)Z
    .locals 3
    .parameter "horizontal"

    .prologue
    const/4 v2, 0x1

    .line 175
    iget v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isExpandGap()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMinLength(Z)F
    .locals 11
    .parameter "horizontal"

    .prologue
    const/4 v10, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildCount()I

    move-result v0

    .line 55
    .local v0, childCount:I
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandChildren(Z)Z

    move-result v1

    .line 56
    .local v1, expandChildren:Z
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandGap()Z

    move-result v2

    .line 57
    .local v2, expandGap:Z
    const/4 v4, 0x0

    .line 58
    .local v4, foundAnExpandableChild:Z
    const/4 v6, 0x0

    .line 59
    .local v6, length:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    if-ne p1, v8, :cond_5

    .line 61
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 62
    invoke-virtual {p0, v5}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v7

    .line 63
    .local v7, view:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    add-float/2addr v6, v8

    .line 64
    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    .line 65
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    .line 61
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v7           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_1
    if-le v0, v10, :cond_2

    .line 69
    iget v8, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    sub-int v9, v0, v10

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 82
    :cond_2
    if-eqz v1, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-eqz v2, :cond_7

    iget-boolean v8, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    if-ne p1, v8, :cond_7

    if-le v0, v10, :cond_7

    :cond_4
    move v3, v10

    .line 84
    .local v3, expandable:Z
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 85
    return v6

    .line 73
    .end local v3           #expandable:Z
    .end local v5           #i:I
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v0, :cond_2

    .line 74
    invoke-virtual {p0, v5}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v7

    .line 75
    .restart local v7       #view:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 77
    if-eqz v1, :cond_6

    if-nez v4, :cond_6

    .line 78
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    .line 73
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 82
    .end local v7           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_7
    const/4 v8, 0x0

    move v3, v8

    goto :goto_1
.end method

.method public layout(ZFF)V
    .locals 21
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildCount()I

    move-result v10

    .line 92
    .local v10, childCount:I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandChildren(Z)Z

    move-result v12

    .line 93
    .local v12, expandChildren:Z
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandGap()Z

    move-result v13

    .line 94
    .local v13, expandGap:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    move v5, v0

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_b

    .line 96
    move/from16 v11, p2

    .line 97
    .local v11, childStart:F
    if-nez v12, :cond_0

    if-eqz v13, :cond_8

    .line 102
    :cond_0
    const/4 v14, 0x0

    .line 103
    .local v14, expandableChildCount:I
    const/16 v18, 0x0

    .line 104
    .local v18, minLength:F
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_3

    .line 105
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 106
    .local v4, view:Lcom/google/android/opengl/glview/GLView;
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v5

    add-float v18, v18, v5

    .line 107
    const/4 v5, 0x1

    sub-int v5, v10, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    move v5, v0

    add-float v18, v18, v5

    .line 110
    :cond_1
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    add-int/lit8 v14, v14, 0x1

    .line 104
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 117
    .end local v4           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_3
    const/4 v5, 0x0

    sub-float v6, p3, v18

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 118
    .local v15, extraLength:F
    const/16 v19, 0x0

    .line 119
    .local v19, perExpandableChildExtra:F
    const/16 v20, 0x0

    .line 120
    .local v20, perGapExtra:F
    if-eqz v12, :cond_7

    if-lez v14, :cond_7

    .line 121
    int-to-float v5, v14

    div-float v19, v15, v5

    .line 128
    :cond_4
    :goto_1
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_a

    .line 129
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 130
    .restart local v4       #view:Lcom/google/android/opengl/glview/GLView;
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    .line 131
    .local v8, childLength:F
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 132
    add-float v8, v8, v19

    .line 134
    :cond_5
    move-object v0, v4

    move/from16 v1, p1

    move v2, v11

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 135
    add-float/2addr v11, v8

    .line 136
    const/4 v5, 0x1

    sub-int v5, v10, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    move v5, v0

    add-float v5, v5, v20

    add-float/2addr v11, v5

    .line 128
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 122
    .end local v4           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v8           #childLength:F
    :cond_7
    if-eqz v13, :cond_4

    const/4 v5, 0x1

    if-le v10, v5, :cond_4

    .line 123
    const/4 v5, 0x1

    sub-int v5, v10, v5

    int-to-float v5, v5

    div-float v20, v15, v5

    goto :goto_1

    .line 144
    .end local v14           #expandableChildCount:I
    .end local v15           #extraLength:F
    .end local v17           #i:I
    .end local v18           #minLength:F
    .end local v19           #perExpandableChildExtra:F
    .end local v20           #perGapExtra:F
    :cond_8
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_a

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 146
    .restart local v4       #view:Lcom/google/android/opengl/glview/GLView;
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    .line 147
    .restart local v8       #childLength:F
    move-object v0, v4

    move/from16 v1, p1

    move v2, v11

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 148
    add-float/2addr v11, v8

    .line 149
    const/4 v5, 0x1

    sub-int v5, v10, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    move v5, v0

    add-float/2addr v11, v5

    .line 144
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 154
    .end local v4           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v8           #childLength:F
    :cond_a
    sub-float v5, v11, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLLinearLayout;->internalLayout(ZFF)V

    .line 169
    .end local v11           #childStart:F
    :goto_4
    return-void

    .line 157
    .end local v17           #i:I
    :cond_b
    move/from16 v16, p3

    .line 158
    .local v16, fullLength:F
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_d

    .line 159
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 160
    .restart local v4       #view:Lcom/google/android/opengl/glview/GLView;
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    .line 161
    .restart local v8       #childLength:F
    if-eqz v12, :cond_c

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 162
    move v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 164
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mAlignment:I

    move v9, v0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 165
    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v5

    add-float/2addr v5, v8

    sub-float v5, v5, p2

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 158
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 167
    .end local v4           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v8           #childLength:F
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLLinearLayout;->internalLayout(ZFF)V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    if-eqz v1, :cond_0

    const-string v1, "H"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mAlignment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expansion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "H"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "V"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "V"

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_2
.end method
