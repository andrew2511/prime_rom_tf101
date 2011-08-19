.class public Lcom/android/videoeditor/widgets/OverlayView;
.super Landroid/widget/ImageView;
.source "OverlayView.java"


# static fields
.field public static final STATE_ADD_BUTTON:I = 0x1

.field public static final STATE_OVERLAY:I = 0x2

.field public static final STATE_STUB:I


# instance fields
.field private final mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private final mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

.field private mLongPressMove:Z

.field private final mSimpleGestureDetector:Landroid/view/GestureDetector;

.field private mStartScrollEvent:Landroid/view/MotionEvent;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/videoeditor/widgets/OverlayView$1;

    invoke-direct {v2, p0}, Lcom/android/videoeditor/widgets/OverlayView$1;-><init>(Lcom/android/videoeditor/widgets/OverlayView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    .line 99
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 101
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/OverlayView;)Lcom/android/videoeditor/widgets/ItemMoveGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/OverlayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/videoeditor/widgets/OverlayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mLongPressMove:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/videoeditor/widgets/OverlayView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mStartScrollEvent:Landroid/view/MotionEvent;

    return-object p1
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x4

    .line 218
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mLongPressMove:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getWidth()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 251
    .local v9, halfWidth:I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    sub-int v1, v9, v12

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingTop()I

    move-result v2

    sub-int v3, v9, v12

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v9, 0x4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingTop()I

    move-result v2

    add-int/lit8 v3, v9, 0x4

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    .end local v9           #halfWidth:I
    :cond_1
    return-void

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 231
    .local v10, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v10, :cond_0

    .line 232
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v11

    .line 233
    .local v11, overlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v11, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieOverlay;->getType()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingRight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;IIII)V

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 189
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mLongPressMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mStartScrollEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/videoeditor/widgets/ItemMoveGestureListener;->onMove(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 197
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mLongPressMove:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mLongPressMove:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayView;->invalidate()V

    .line 202
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/android/videoeditor/widgets/ItemMoveGestureListener;->onMoveEnd(Landroid/view/View;)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemMoveGestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    .line 163
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 131
    iput p1, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    .line 133
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayView;->setImageResource(I)V

    goto :goto_0

    .line 147
    :pswitch_2
    const v0, 0x7f020067

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayView;->setBackgroundResource(I)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
