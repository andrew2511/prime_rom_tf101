.class public Lcom/asus/reader/ui/CategoryItem;
.super Landroid/widget/RelativeLayout;
.source "CategoryItem.java"


# instance fields
.field private mCateAdd:Landroid/widget/ImageButton;

.field private mCateCount:Landroid/widget/TextView;

.field private mCateText:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field private mIslandscape:Z

.field private mPosition:I

.field private mStates:I

.field private mSubPosition:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput v1, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/ui/CategoryItem;->mSubPosition:I

    .line 22
    iput v1, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    .line 25
    iput v1, p0, Lcom/asus/reader/ui/CategoryItem;->mType:I

    .line 31
    iput-object p1, p0, Lcom/asus/reader/ui/CategoryItem;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v1, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/ui/CategoryItem;->mSubPosition:I

    .line 22
    iput v1, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    .line 25
    iput v1, p0, Lcom/asus/reader/ui/CategoryItem;->mType:I

    .line 36
    iput-object p1, p0, Lcom/asus/reader/ui/CategoryItem;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private drawBackgroundPressed()V
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawCategoryItemPressed()V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawVibeGroupPressed()V

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawVibeChildPressed()V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawCategoryItem()V
    .locals 3

    .prologue
    const v2, 0x7f020057

    const v1, 0x7f02000a

    .line 160
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_1

    .line 163
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, v2}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 166
    :cond_0
    const v0, 0x7f02006a

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_2

    .line 169
    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 171
    :cond_2
    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_4

    .line 176
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_3

    .line 177
    invoke-virtual {p0, v2}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 179
    :cond_3
    const v0, 0x7f02006b

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 181
    :cond_4
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_5

    .line 182
    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 184
    :cond_5
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_7

    .line 189
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_6

    .line 190
    const v0, 0x7f020058

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 192
    :cond_6
    const v0, 0x7f020068

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 194
    :cond_7
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_8

    .line 195
    const v0, 0x7f020008

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 197
    :cond_8
    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawCategoryItemPressed()V
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_1

    .line 255
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_0

    .line 256
    const v0, 0x7f020056

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    const v0, 0x7f02006b

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_2

    .line 261
    const v0, 0x7f020006

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 263
    :cond_2
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private drawVibeChild()V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_0

    .line 232
    const v0, 0x7f02005f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 234
    :cond_0
    const v0, 0x7f020064

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_1

    .line 238
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 240
    :cond_1
    const v0, 0x7f020065

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_2

    .line 244
    const v0, 0x7f02005d

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 246
    :cond_2
    const v0, 0x7f020062

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawVibeChildPressed()V
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_0

    .line 276
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    const v0, 0x7f020065

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private drawVibeGroup()V
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_0

    .line 208
    const v0, 0x7f02006a

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 210
    :cond_0
    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_1

    .line 214
    const v0, 0x7f02006b

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 216
    :cond_1
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_2

    .line 220
    const v0, 0x7f020068

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 222
    :cond_2
    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawVibeGroupPressed()V
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    if-eqz v0, :cond_0

    .line 269
    const v0, 0x7f02006b

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private makeViewLayout(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marginRight"
    .parameter "marginBottom"

    .prologue
    .line 307
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 314
    return-object v0
.end method


# virtual methods
.method public bindCategoryItem(Ljava/lang/String;ZI)V
    .locals 4
    .parameter "label"
    .parameter "islandscape"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 105
    iput v3, p0, Lcom/asus/reader/ui/CategoryItem;->mType:I

    .line 106
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setTag(Ljava/lang/Object;)V

    .line 107
    iput-boolean p2, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    .line 109
    if-gez p3, :cond_0

    .line 110
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateCount:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    const/16 v1, 0x1e

    const/16 v2, 0x6e

    invoke-direct {p0, v1, v3, v2, v3}, Lcom/asus/reader/ui/CategoryItem;->makeViewLayout(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawCategoryItem()V

    .line 119
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateCount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateCount:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bindVibeGroup(Ljava/lang/String;Z)V
    .locals 4
    .parameter "label"
    .parameter "islandscape"

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/reader/ui/CategoryItem;->mType:I

    .line 97
    iput-boolean p2, p0, Lcom/asus/reader/ui/CategoryItem;->mIslandscape:Z

    .line 98
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateCount:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    const/16 v1, 0x1e

    const/16 v2, 0x32

    invoke-direct {p0, v1, v3, v2, v3}, Lcom/asus/reader/ui/CategoryItem;->makeViewLayout(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawVibeGroup()V

    .line 102
    return-void
.end method

.method public drawBackground()V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawCategoryItem()V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawVibeGroup()V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawVibeChild()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    return v0
.end method

.method public getSubPosition()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mSubPosition:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateAdd:Landroid/widget/ImageButton;

    .line 44
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateCount:Landroid/widget/TextView;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CategoryItem;->setTag(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public reSetStates(I)V
    .locals 1
    .parameter "new_states"

    .prologue
    .line 138
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    iput p1, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    .line 140
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryItem;->drawBackground()V

    .line 142
    :cond_1
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    iput p1, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/ui/CategoryItem;->mSubPosition:I

    .line 51
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/asus/reader/ui/CategoryItem;->drawBackgroundPressed()V

    .line 301
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 302
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryItem;->drawBackground()V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .parameter "states"

    .prologue
    .line 134
    iput p1, p0, Lcom/asus/reader/ui/CategoryItem;->mStates:I

    .line 135
    return-void
.end method

.method public showAddButton(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 122
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateAdd:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 124
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/reader/ui/CategoryItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateAdd:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 128
    iget v0, p0, Lcom/asus/reader/ui/CategoryItem;->mPosition:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryItem;->mCateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/reader/ui/CategoryItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
