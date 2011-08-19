.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final UP:I = 0x2

.field private static sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 253
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 29
    .parameter "what"
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    .line 94
    .local v15, layout:Landroid/text/Layout;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v24

    add-int v19, v23, v24

    .line 96
    .local v19, padding:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    .line 97
    .local v6, areatop:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v23

    add-int v23, v23, v6

    sub-int v5, v23, v19

    .line 99
    .local v5, areabot:I
    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v17

    .line 100
    .local v17, linetop:I
    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v16

    .line 102
    .local v16, linebot:I
    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 103
    .local v12, first:I
    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 105
    .local v14, last:I
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move v1, v12

    move v2, v14

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 107
    .local v10, candidates:[Landroid/text/style/ClickableSpan;
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 108
    .local v4, a:I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 110
    .local v7, b:I
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 111
    .local v21, selStart:I
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 113
    .local v20, selEnd:I
    if-gez v21, :cond_5f

    .line 114
    sget-object v23, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    if-ltz v23, :cond_5f

    .line 115
    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v20

    move/from16 v21, v20

    .line 119
    :cond_5f
    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_69

    .line 120
    const v20, 0x7fffffff

    move/from16 v21, v20

    .line 121
    :cond_69
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_72

    .line 122
    const/16 v20, -0x1

    move/from16 v21, v20

    .line 124
    :cond_72
    packed-switch p1, :pswitch_data_138

    .line 185
    :cond_75
    :goto_75
    const/16 v23, 0x0

    :goto_77
    return v23

    .line 126
    :pswitch_78
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_81

    .line 127
    const/16 v23, 0x0

    goto :goto_77

    .line 130
    :cond_81
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/ClickableSpan;

    .line 132
    .local v18, link:[Landroid/text/style/ClickableSpan;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a1

    .line 133
    const/16 v23, 0x0

    goto :goto_77

    .line 135
    :cond_a1
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_75

    .line 141
    .end local v18           #link:[Landroid/text/style/ClickableSpan;
    :pswitch_ad
    const/4 v9, -0x1

    .line 142
    .local v9, beststart:I
    const/4 v8, -0x1

    .line 144
    .local v8, bestend:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_b0
    move-object v0, v10

    array-length v0, v0

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_de

    .line 145
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 147
    .local v11, end:I
    move v0, v11

    move/from16 v1, v20

    if-lt v0, v1, :cond_ce

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_db

    .line 148
    :cond_ce
    if-le v11, v8, :cond_db

    .line 149
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 150
    move v8, v11

    .line 144
    :cond_db
    add-int/lit8 v13, v13, 0x1

    goto :goto_b0

    .line 155
    .end local v11           #end:I
    :cond_de
    if-ltz v9, :cond_75

    .line 156
    move-object/from16 v0, p3

    move v1, v8

    move v2, v9

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 157
    const/16 v23, 0x1

    goto :goto_77

    .line 163
    .end local v8           #bestend:I
    .end local v9           #beststart:I
    .end local v13           #i:I
    :pswitch_ea
    const v9, 0x7fffffff

    .line 164
    .restart local v9       #beststart:I
    const v8, 0x7fffffff

    .line 166
    .restart local v8       #bestend:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_f1
    move-object v0, v10

    array-length v0, v0

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_124

    .line 167
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 169
    .local v22, start:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_110

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_121

    .line 170
    :cond_110
    move/from16 v0, v22

    move v1, v9

    if-ge v0, v1, :cond_121

    .line 171
    move/from16 v9, v22

    .line 172
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 166
    :cond_121
    add-int/lit8 v13, v13, 0x1

    goto :goto_f1

    .line 177
    .end local v22           #start:I
    :cond_124
    const v23, 0x7fffffff

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_75

    .line 178
    move-object/from16 v0, p3

    move v1, v9

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 179
    const/16 v23, 0x1

    goto/16 :goto_77

    .line 124
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_78
        :pswitch_ad
        :pswitch_ea
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .prologue
    .line 246
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_b

    .line 247
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    .line 249
    :cond_b
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 66
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "movementMetaState"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p3, :sswitch_data_24

    .line 52
    :cond_4
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 44
    :sswitch_9
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v1, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 47
    goto :goto_8

    .line 41
    nop

    :sswitch_data_24
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 230
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 231
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 7
    .parameter "view"
    .parameter "text"
    .parameter "dir"

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 238
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_10

    .line 239
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 243
    :goto_f
    return-void

    .line 241
    :cond_10
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 191
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 193
    .local v0, action:I
    if-eq v0, v9, :cond_a

    if-nez v0, :cond_5e

    .line 195
    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 196
    .local v5, x:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 198
    .local v6, y:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v5, v7

    .line 199
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    .line 201
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    add-int/2addr v5, v7

    .line 202
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 204
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 205
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 206
    .local v2, line:I
    int-to-float v7, v5

    invoke-virtual {v1, v2, v7}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 208
    .local v4, off:I
    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 210
    .local v3, link:[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-eqz v7, :cond_5b

    .line 211
    if-ne v0, v9, :cond_49

    .line 212
    aget-object v7, v3, v8

    invoke-virtual {v7, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_47
    :goto_47
    move v7, v9

    .line 225
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #link:[Landroid/text/style/ClickableSpan;
    .end local v4           #off:I
    .end local v5           #x:I
    .end local v6           #y:I
    :goto_48
    return v7

    .line 213
    .restart local v1       #layout:Landroid/text/Layout;
    .restart local v2       #line:I
    .restart local v3       #link:[Landroid/text/style/ClickableSpan;
    .restart local v4       #off:I
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_49
    if-nez v0, :cond_47

    .line 214
    aget-object v7, v3, v8

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aget-object v8, v3, v8

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {p2, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_47

    .line 221
    :cond_5b
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 225
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #link:[Landroid/text/style/ClickableSpan;
    .end local v4           #off:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_5e
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_48
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 84
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    const/4 v0, 0x1

    .line 61
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_8
.end method
