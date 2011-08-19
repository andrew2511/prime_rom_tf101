.class public Lcom/android/contacts/list/ContactListPinnedHeaderView;
.super Landroid/view/ViewGroup;
.source "ContactListPinnedHeaderView.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeaderBackgroundHeight:I

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object p1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    .line 59
    const/16 v1, 0x12

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextColor:I

    .line 61
    const/16 v1, 0x13

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextSize:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    .line 68
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 72
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 91
    sub-int v0, p4, p2

    .line 92
    .local v0, width:I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    iget v3, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 80
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->resolveSize(II)I

    move-result v0

    .line 82
    .local v0, width:I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 86
    iget v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setMeasuredDimension(II)V

    .line 87
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->forceLayout()V

    .line 120
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
