.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 179
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_15

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollX:I

    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 184
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_15

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollY:I

    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_166

    .line 174
    :cond_7
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    :goto_8
    return p0

    .line 89
    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_9
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 91
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 92
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 95
    :cond_22
    new-instance v0, Landroid/text/method/Touch$DragState;

    .end local v0           #ds:[Landroid/text/method/Touch$DragState;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .end local v1           #i:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .end local p2
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p0

    .end local p0
    invoke-direct {v0, v1, p2, v2, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/4 p0, 0x0

    const/4 p2, 0x0

    const/16 v1, 0x11

    invoke-interface {p1, v0, p0, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    const/4 p0, 0x1

    goto :goto_8

    .line 101
    .restart local p0
    .restart local p2
    :pswitch_40
    const/4 p0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    .end local p0
    move-result p2

    .end local p2
    const-class v0, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, p0, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 103
    .local p0, ds:[Landroid/text/method/Touch$DragState;
    const/4 p2, 0x0

    .local p2, i:I
    :goto_4e
    array-length v0, p0

    if-ge p2, v0, :cond_59

    .line 104
    aget-object v0, p0, p2

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    .line 107
    :cond_59
    array-length p1, p0

    .end local p1
    if-lez p1, :cond_65

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .end local p0           #ds:[Landroid/text/method/Touch$DragState;
    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz p0, :cond_65

    .line 108
    const/4 p0, 0x1

    goto :goto_8

    .line 110
    :cond_65
    const/4 p0, 0x0

    goto :goto_8

    .line 114
    .local p0, widget:Landroid/widget/TextView;
    .restart local p1
    .local p2, event:Landroid/view/MotionEvent;
    :pswitch_67
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 116
    .restart local v0       #ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_7

    .line 117
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v1, :cond_b6

    .line 118
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 120
    .local v1, slop:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget v3, v3, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gez v2, :cond_b0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget v3, v3, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_b6

    .line 122
    .end local v1           #slop:I
    :cond_b0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 126
    :cond_b6
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v1, :cond_7

    .line 127
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_db

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_db

    const/16 v1, 0x800

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    .end local p1
    if-eqz p1, :cond_14f

    :cond_db
    const/4 p1, 0x1

    .line 135
    .local p1, cap:Z
    :goto_dc
    if-eqz p1, :cond_151

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .end local p1           #cap:Z
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v1, v1, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr p1, v1

    .line 139
    .local p1, dx:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v1, v2

    .line 144
    .local v1, dy:F
    :goto_f2
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/text/method/Touch$DragState;->mX:F

    .line 145
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .end local v0           #ds:[Landroid/text/method/Touch$DragState;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .end local p2           #event:Landroid/view/MotionEvent;
    iput p2, v0, Landroid/text/method/Touch$DragState;->mY:F

    .line 147
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p2

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 148
    .local p2, nx:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    .end local p1           #dx:F
    move-result p1

    float-to-int v0, v1

    add-int/2addr v0, p1

    .line 150
    .local v0, ny:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    .end local v1           #dy:F
    add-int/2addr v1, p1

    .line 152
    .local v1, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 154
    .local p1, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .end local v1           #padding:I
    move-result v0

    .line 156
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 159
    .local v1, oldX:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 161
    .local v2, oldY:I
    invoke-static {p0, p1, p2, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p1

    .end local p1           #layout:Landroid/text/Layout;
    if-ne v1, p1, :cond_149

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    if-eq v2, p1, :cond_14c

    .line 166
    :cond_149
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 169
    :cond_14c
    const/4 p0, 0x1

    goto/16 :goto_8

    .line 128
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    .local p2, event:Landroid/view/MotionEvent;
    :cond_14f
    const/4 p1, 0x0

    goto :goto_dc

    .line 141
    .local p1, cap:Z
    :cond_151
    const/4 p1, 0x0

    aget-object p1, v0, p1

    .end local p1           #cap:Z
    iget p1, p1, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 142
    .local p1, dx:F
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v1, v1, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .local v1, dy:F
    goto :goto_f2

    .line 87
    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_9
        :pswitch_40
        :pswitch_67
    .end packed-switch
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .registers 12
    .parameter "widget"
    .parameter "layout"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    .local v0, padding:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 41
    .local v2, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v1, p3

    sub-int v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    .end local v0           #padding:I
    move-result v1

    .line 44
    .local v1, bottom:I
    const v3, 0x7fffffff

    .line 45
    .local v3, left:I
    const/4 v5, 0x0

    .line 46
    .local v5, right:I
    const/4 v0, 0x0

    .line 47
    .local v0, a:Landroid/text/Layout$Alignment;
    const/4 v4, 0x1

    .line 49
    .local v4, ltr:Z
    move v2, v2

    .local v2, i:I
    :goto_1f
    if-gt v2, v1, :cond_47

    .line 50
    int-to-float v3, v3

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    .end local v3           #left:I
    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 51
    .restart local v3       #left:I
    int-to-float v5, v5

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineRight(I)F

    .end local v5           #right:I
    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 53
    .restart local v5       #right:I
    if-nez v0, :cond_42

    .line 54
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .end local v4           #ltr:Z
    if-lez v4, :cond_45

    const/4 v4, 0x1

    .line 49
    .restart local v4       #ltr:Z
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 55
    .end local v4           #ltr:Z
    :cond_45
    const/4 v4, 0x0

    goto :goto_42

    .line 59
    .restart local v4       #ltr:Z
    :cond_47
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result p1

    .end local p1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    .end local v1           #bottom:I
    add-int/2addr v1, p1

    .line 60
    .local v1, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 61
    .local v2, width:I
    const/4 p1, 0x0

    .line 65
    .local p1, diff:I
    sub-int v6, v5, v3

    sub-int v7, v2, v1

    if-ge v6, v7, :cond_66

    .line 66
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_79

    .line 67
    sub-int p1, v2, v1

    sub-int v0, v5, v3

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 73
    .end local v0           #a:Landroid/text/Layout$Alignment;
    :cond_66
    :goto_66
    sub-int v0, v2, v1

    sub-int v0, v5, v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 74
    sub-int p1, v3, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .end local p1           #diff:I
    move-result p2

    .line 76
    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 77
    return-void

    .line 68
    .restart local v0       #a:Landroid/text/Layout$Alignment;
    .restart local p1       #diff:I
    :cond_79
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_86

    const/4 v0, 0x1

    .end local v0           #a:Landroid/text/Layout$Alignment;
    :goto_7e
    if-ne v4, v0, :cond_66

    .line 69
    sub-int p1, v2, v1

    sub-int v0, v5, v3

    sub-int/2addr p1, v0

    goto :goto_66

    .line 68
    .restart local v0       #a:Landroid/text/Layout$Alignment;
    :cond_86
    const/4 v0, 0x0

    goto :goto_7e
.end method
