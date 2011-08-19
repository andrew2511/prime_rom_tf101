.class public Lcom/infraware/common/EvObjectProc;
.super Ljava/lang/Object;
.source "EvObjectProc.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_POINT_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;,
        Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;,
        Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;,
        Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;,
        Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;
    }
.end annotation


# instance fields
.field private mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

.field private mListener:Lcom/infraware/common/UiCoreEventListener;

.field private mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

.field private mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

.field private mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

.field private mView:Landroid/view/View;

.field private m_nObjSize:I

.field private m_oTouchDown:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;)V
    .locals 3
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    .line 19
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    .line 20
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    .line 21
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    .line 22
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    .line 23
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    .line 24
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    .line 25
    iput-object v1, p0, Lcom/infraware/common/EvObjectProc;->mListener:Lcom/infraware/common/UiCoreEventListener;

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->m_oTouchDown:Landroid/graphics/Point;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    .line 112
    new-instance v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;-><init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    .line 113
    new-instance v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;-><init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    .line 114
    new-instance v0, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;-><init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    .line 115
    new-instance v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;-><init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    .line 116
    new-instance v0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;-><init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    .line 118
    iput-object p1, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    .line 119
    iput-object p2, p0, Lcom/infraware/common/EvObjectProc;->mListener:Lcom/infraware/common/UiCoreEventListener;

    .line 120
    const/4 v0, 0x1

    const v1, 0x420aae14

    iget-object v2, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    .line 121
    return-void
.end method

.method private GetDefObjCtrlType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 563
    move v0, p1

    .line 565
    .local v0, nDefType:I
    packed-switch p1, :pswitch_data_0

    .line 581
    :goto_0
    :pswitch_0
    return v0

    .line 570
    :pswitch_1
    const/4 v0, 0x1

    .line 571
    goto :goto_0

    .line 578
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public CheckObjCtrlPoint(IILjava/lang/Boolean;)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "bDown"

    .prologue
    .line 412
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->m_oTouchDown:Landroid/graphics/Point;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 417
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    .local v2, sDrawRect:Landroid/graphics/Rect;
    iget v6, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    div-int/lit8 v1, v6, 0x2

    .line 419
    .local v1, nSensitivity:I
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 420
    .local v0, bDraw:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v6, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 421
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 423
    :cond_0
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v6, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v6, :pswitch_data_0

    .line 509
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-virtual {v6}, Lcom/infraware/common/UiCoreEventListener;->reDrawrect()V

    .line 511
    :cond_1
    return-void

    .line 415
    .end local v0           #bDraw:Ljava/lang/Boolean;
    .end local v1           #nSensitivity:I
    .end local v2           #sDrawRect:Landroid/graphics/Rect;
    :cond_2
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->m_oTouchDown:Landroid/graphics/Point;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 429
    .restart local v0       #bDraw:Ljava/lang/Boolean;
    .restart local v1       #nSensitivity:I
    .restart local v2       #sDrawRect:Landroid/graphics/Rect;
    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 430
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v7, v7, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v9, v10

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 432
    .local v4, sRect:Landroid/graphics/Rect;
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 433
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, 0x0

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 434
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 437
    :cond_3
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 440
    .end local v4           #sRect:Landroid/graphics/Rect;
    :cond_4
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, -0x1

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto :goto_1

    .line 445
    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 446
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v7, v7, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 447
    .local v5, sSRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v7, v7, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v9, v10

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 449
    .local v3, sERect:Landroid/graphics/Rect;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 450
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, 0x0

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 451
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 453
    :cond_5
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 454
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, 0x1

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 455
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 458
    :cond_6
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 461
    .end local v3           #sERect:Landroid/graphics/Rect;
    .end local v5           #sSRect:Landroid/graphics/Rect;
    :cond_7
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, -0x1

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto/16 :goto_1

    .line 471
    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 472
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v7, v7, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 473
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    .line 472
    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    .restart local v4       #sRect:Landroid/graphics/Rect;
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 476
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, 0x0

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 477
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 480
    :cond_8
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 483
    .end local v4           #sRect:Landroid/graphics/Rect;
    :cond_9
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, -0x1

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto/16 :goto_1

    .line 488
    :pswitch_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 489
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v7, v7, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v1

    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 490
    .restart local v5       #sSRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v7, v7, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 492
    .restart local v3       #sERect:Landroid/graphics/Rect;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 493
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, 0x0

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 494
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 496
    :cond_a
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 497
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, 0x1

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 498
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 501
    :cond_b
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 504
    .end local v3           #sERect:Landroid/graphics/Rect;
    .end local v5           #sSRect:Landroid/graphics/Rect;
    :cond_c
    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    const/4 v7, -0x1

    iput v7, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto/16 :goto_1

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public DrawObjCtrlPoint(Landroid/graphics/Canvas;Ljava/lang/Boolean;)Z
    .locals 22
    .parameter "canvas"
    .parameter "bObjFrame"

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 281
    .local v15, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 406
    const/16 v17, 0x0

    .line 408
    :goto_0
    return v17

    .line 287
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 288
    const/4 v8, 0x0

    .line 289
    .local v8, ctrlBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 293
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 408
    .end local v8           #ctrlBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 292
    .restart local v8       #ctrlBitmap:Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1

    .line 303
    .end local v8           #ctrlBitmap:Landroid/graphics/Bitmap;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nBarImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 306
    .local v7, barBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 308
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object v0, v7

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 309
    .local v6, SbarBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object v0, v7

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 310
    .local v5, EbarBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nSelectImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 314
    .local v16, selectBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nNormalImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 316
    .local v11, normalBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 321
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 327
    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    const/16 v16, 0x0

    .line 329
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 319
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 324
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 341
    .end local v5           #EbarBitmap:Landroid/graphics/Bitmap;
    .end local v6           #SbarBitmap:Landroid/graphics/Bitmap;
    .end local v7           #barBitmap:Landroid/graphics/Bitmap;
    .end local v11           #normalBitmap:Landroid/graphics/Bitmap;
    .end local v16           #selectBitmap:Landroid/graphics/Bitmap;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 344
    .local v12, rcClip:Landroid/graphics/Rect;
    move-object v13, v12

    .line 345
    .local v13, rcTemp:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object v0, v12

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object v0, v12

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v17

    if-nez v17, :cond_4

    .line 346
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 348
    :cond_4
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 353
    .local v10, nWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 354
    .local v9, nHeight:I
    if-gtz v10, :cond_5

    const/4 v10, 0x1

    .line 355
    :cond_5
    if-gtz v9, :cond_6

    const/4 v9, 0x1

    .line 357
    :cond_6
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    add-int v20, v20, v9

    .line 357
    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 360
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x9b

    const/16 v19, 0xd2

    const/16 v20, 0xeb

    const/16 v21, 0xed

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xff

    const/16 v19, 0x14

    const/16 v20, 0x43

    const/16 v21, 0x84

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/high16 v18, 0x4080

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 368
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 371
    .end local v9           #nHeight:I
    .end local v10           #nWidth:I
    .end local v12           #rcClip:Landroid/graphics/Rect;
    .end local v13           #rcTemp:Landroid/graphics/Rect;
    .end local v14           #rect:Landroid/graphics/Rect;
    :cond_7
    const/4 v8, 0x0

    .line 372
    .restart local v8       #ctrlBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->nSelectImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 376
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->nNormalImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_5

    .line 385
    .end local v8           #ctrlBitmap:Landroid/graphics/Bitmap;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->nNormalImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 386
    .restart local v11       #normalBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->nSelectImg:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 388
    .restart local v16       #selectBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 393
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    const/16 v16, 0x0

    .line 401
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 391
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 396
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public FlingObjCtrl()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 551
    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    if-eqz v1, :cond_1

    .line 552
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v2, v2, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 553
    iget-object v3, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v3, v3, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 552
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 554
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->m_oTouchDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/common/EvObjectProc;->m_oTouchDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 559
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_0
    return-object v1

    .line 556
    .restart local v0       #rect:Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 557
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 559
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public GetObjCtrlSelIndex()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    return v0
.end method

.method public GetObjCtrlSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sObjectSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetObjCtrlType()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    return v0
.end method

.method public LongPressObjCtrl(II)Ljava/lang/Boolean;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 514
    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v1, :pswitch_data_0

    .line 547
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 523
    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v2, v2, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 524
    iget-object v3, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v3, v3, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v6, v6, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 523
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 540
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 543
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SetObjCtrlInfo(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .locals 12
    .parameter "object"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    if-nez v8, :cond_2

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/common/EvObjectProc;->UnSetObjCtrlInfo()V

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    .local v0, bUpdate:Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    invoke-direct {p0, v8}, Lcom/infraware/common/EvObjectProc;->GetDefObjCtrlType(I)I

    move-result v7

    .line 157
    .local v7, nRegType:I
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    and-int/lit16 v8, v8, 0x7fff

    and-int/lit16 v6, v8, -0x1001

    .line 158
    .local v6, nObjType:I
    invoke-direct {p0, v6}, Lcom/infraware/common/EvObjectProc;->GetDefObjCtrlType(I)I

    move-result v3

    .line 159
    .local v3, nDefType:I
    iget v8, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    div-int/lit8 v5, v8, 0x2

    .line 161
    .local v5, nObjSize:I
    if-eq v7, v3, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/infraware/common/EvObjectProc;->UnSetObjCtrlInfo()V

    .line 164
    :cond_3
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v10, v10, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 165
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v10, v10, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 166
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sObjectSize:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v10, v10, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 168
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    if-eq v8, v6, :cond_7

    .line 169
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iput v6, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    .line 177
    :cond_4
    :goto_1
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 180
    :pswitch_1
    const/4 v4, 0x0

    .line 181
    .local v4, nIndex:I
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 182
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    .line 183
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    .line 184
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_9

    .line 185
    :cond_5
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 186
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 194
    :goto_2
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    if-eq v8, v9, :cond_6

    .line 195
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 196
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 199
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 200
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_a

    .line 201
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020319

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 202
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02031a

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 170
    .end local v4           #nIndex:I
    :cond_7
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8

    .line 171
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nType:I

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    if-ne v8, v9, :cond_4

    .line 172
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 175
    :cond_8
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 190
    .restart local v4       #nIndex:I
    :cond_9
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const/4 v9, 0x0

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 191
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    .line 204
    :cond_a
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/16 v9, 0xc

    if-eq v8, v9, :cond_b

    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 206
    :cond_b
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020311

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 207
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020312

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 209
    :cond_c
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_d

    .line 211
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02030f

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 212
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020310

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 216
    :cond_d
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02030c

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 217
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02030d

    iput v9, v8, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 224
    .end local v4           #nIndex:I
    :pswitch_2
    const/4 v8, 0x1

    const v9, 0x417570a4

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v1, v8

    .line 225
    .local v1, nBarX:I
    const/4 v8, 0x1

    const v9, 0x41f55c29

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v2, v8

    .line 226
    .local v2, nBarY:I
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 227
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 228
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 229
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 230
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    .line 231
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    .line 232
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    iget v10, v10, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 234
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 235
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    const v9, 0x7f02030e

    iput v9, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nBarImg:I

    .line 236
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    const v9, 0x7f02030f

    iput v9, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nNormalImg:I

    .line 237
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    const v9, 0x7f020310

    iput v9, v8, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 243
    .end local v1           #nBarX:I
    .end local v2           #nBarY:I
    :pswitch_3
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 245
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e

    .line 246
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 247
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 250
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 251
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    const v9, 0x7f020313

    iput v9, v8, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->nNormalImg:I

    .line 252
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    const v9, 0x7f020314

    iput v9, v8, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 258
    :pswitch_4
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 259
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 261
    iget-object v8, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_f

    .line 262
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 263
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 266
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 267
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    const v9, 0x7f02030f

    iput v9, v8, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->nNormalImg:I

    .line 268
    iget-object v8, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    const v9, 0x7f020310

    iput v9, v8, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public UnSetObjCtrlInfo()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->SetInit()V

    .line 148
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->SetInit()V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mTextInfo:Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc$TEXTOBJCTPT_INFO;->SetInit()V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mRectInfo:Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc$RECTOBJCTPT_INFO;->SetInit()V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc;->mLineInfo:Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc$LINEOBJCTPT_INFO;->SetInit()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCellObjMarkArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 585
    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    sparse-switch v1, :sswitch_data_0

    .line 595
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 590
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/common/EvObjectProc;->mObjInfo:Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;

    iget-object v4, v4, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/infraware/common/EvObjectProc;->m_nObjSize:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 591
    .local v0, sRect:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    const/4 v1, 0x1

    goto :goto_0

    .line 585
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method
