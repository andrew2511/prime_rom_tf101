.class Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V
    .registers 5
    .parameter "context"
    .parameter "theme"
    .parameter "dispatcherState"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    .line 63
    iput-object p3, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 64
    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    .line 65
    return-void
.end method

.method private static clipMotionEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/view/MotionEvent;
    .registers 20
    .parameter "me"
    .parameter "bounds"

    .prologue
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 169
    .local v8, pointerCount:I
    const/4 v4, 0x0

    .line 170
    .local v4, shouldClip:Z
    const/4 v3, 0x0

    .local v3, pointerIndex:I
    :goto_6
    if-ge v3, v8, :cond_104

    .line 171
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 172
    .local v5, x:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 173
    .local v6, y:I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .end local v5           #x:I
    if-nez v5, :cond_26

    .line 174
    const/4 v3, 0x1

    .line 178
    .end local v4           #shouldClip:Z
    .end local v6           #y:I
    .local v3, shouldClip:Z
    :goto_23
    if-nez v3, :cond_29

    .line 205
    .end local v3           #shouldClip:Z
    .end local p0
    .end local p1
    :goto_25
    return-object p0

    .line 170
    .local v3, pointerIndex:I
    .restart local v4       #shouldClip:Z
    .restart local v6       #y:I
    .restart local p0
    .restart local p1
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 181
    .end local v4           #shouldClip:Z
    .end local v6           #y:I
    .local v3, shouldClip:Z
    :cond_29
    const/4 v3, 0x1

    if-ne v8, v3, :cond_75

    .line 182
    .end local v3           #shouldClip:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 183
    .local v3, x:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 184
    .local v4, y:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .end local v3           #x:I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p1, v0

    .end local p1
    const/4 v6, 0x1

    sub-int p1, p1, v6

    move v0, v4

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v0, v5

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p1, v0

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_25

    .line 190
    .end local v4           #y:I
    .restart local p1
    :cond_75
    new-array v9, v8, [I

    .line 191
    .local v9, pointerIds:[I
    new-array v10, v8, [Landroid/view/MotionEvent$PointerCoords;

    .line 193
    .local v10, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v3, 0x0

    .local v3, pointerIndex:I
    move v4, v3

    .end local v3           #pointerIndex:I
    .local v4, pointerIndex:I
    :goto_7b
    if-ge v4, v8, :cond_d6

    .line 194
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v9, v4

    .line 195
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 196
    .local v3, coords:Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 197
    aput-object v3, v10, v4

    .line 198
    iget v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v5, v5

    .line 199
    .restart local v5       #x:I
    iget v6, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v6, v6

    .line 200
    .restart local v6       #y:I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_d2

    .line 201
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v11, v0

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .end local v5           #x:I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 202
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v6           #y:I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 193
    :cond_d2
    add-int/lit8 v3, v4, 0x1

    .end local v4           #pointerIndex:I
    .local v3, pointerIndex:I
    move v4, v3

    .end local v3           #pointerIndex:I
    .restart local v4       #pointerIndex:I
    goto :goto_7b

    .line 205
    :cond_d6
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v3 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object p0

    goto/16 :goto_25

    .end local v9           #pointerIds:[I
    .end local v10           #pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    .restart local v3       #pointerIndex:I
    .local v4, shouldClip:Z
    :cond_104
    move v3, v4

    .end local v4           #shouldClip:Z
    .local v3, shouldClip:Z
    goto/16 :goto_23
.end method

.method private initDockWindow()V
    .registers 5

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 149
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7db

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 150
    const-string v1, "InputMethod"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 153
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 158
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 159
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x108

    const/16 v3, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 165
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Landroid/inputmethodservice/SoftInputWindow;->clipMotionEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 77
    .local v0, event:Landroid/view/MotionEvent;
    invoke-super {p0, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getSize()I
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 92
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_14

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_17

    .line 93
    :cond_14
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    :goto_16
    return v1

    :cond_17
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_16
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 70
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 71
    return-void
.end method

.method public setGravity(I)V
    .registers 11
    .parameter "gravity"

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 132
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v7, :cond_16

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v4, v8, :cond_34

    :cond_16
    move v2, v6

    .line 134
    .local v2, oldIsVertical:Z
    :goto_17
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 136
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v7, :cond_21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v4, v8, :cond_36

    :cond_21
    move v1, v6

    .line 138
    .local v1, newIsVertical:Z
    :goto_22
    if-eq v2, v1, :cond_33

    .line 139
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 140
    .local v3, tmp:I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 141
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 142
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    .end local v3           #tmp:I
    :cond_33
    return-void

    .end local v1           #newIsVertical:Z
    .end local v2           #oldIsVertical:Z
    :cond_34
    move v2, v5

    .line 132
    goto :goto_17

    .restart local v2       #oldIsVertical:Z
    :cond_36
    move v1, v5

    .line 136
    goto :goto_22
.end method

.method public setSize(I)V
    .registers 6
    .parameter "size"

    .prologue
    const/4 v3, -0x1

    .line 109
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 111
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_15

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_21

    .line 112
    :cond_15
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    :goto_19
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 119
    return-void

    .line 115
    :cond_21
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 116
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_19
.end method

.method public setToken(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 45
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    return-void
.end method
