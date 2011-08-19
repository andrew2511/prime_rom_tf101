.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    }
.end annotation


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mCallButtonPadding:I

.field protected final mContext:Landroid/content/Context;

.field private mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDefaultPhotoViewSize:I

.field private final mFadingEdgeLength:I

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeaderBackgroundHeight:I

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:[C

.field private mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mLabelView:Landroid/widget/TextView;

.field private mLine1Height:I

.field private mLine2Height:I

.field private mLine3Height:I

.field private mLine4Height:I

.field private mNameBuffer:Landroid/database/CharArrayBuffer;

.field private mNameTextView:Landroid/widget/TextView;

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private final mPreferredHeight:I

.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHightlightColor:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSnippetView:Landroid/widget/TextView;

.field private mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

.field private mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field private mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalDividerMargin:I

.field private mVerticalDividerVisible:Z

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x1

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 114
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 115
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 116
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    .line 118
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 151
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    .line 164
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingTop:I

    .line 166
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingBottom:I

    .line 168
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingLeft:I

    .line 170
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    .line 172
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mFadingEdgeLength:I

    .line 174
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 176
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 178
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    .line 180
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    .line 182
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 184
    const/16 v1, 0x10

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHightlightColor:I

    .line 187
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    .line 189
    const/16 v1, 0x12

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    .line 191
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 197
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 199
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    :cond_0
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 467
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    if-nez v1, :cond_0

    .line 468
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    const v4, 0x10102af

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 472
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 475
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    .line 478
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 483
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    goto :goto_0
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    .line 461
    :cond_0
    return-void
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0
.end method

.method private indexOfWordPrefix(Landroid/database/CharArrayBuffer;[C)I
    .locals 9
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/4 v8, -0x1

    .line 963
    if-eqz p2, :cond_0

    array-length v6, p2

    if-nez v6, :cond_1

    :cond_0
    move v6, v8

    .line 1001
    :goto_0
    return v6

    .line 967
    :cond_1
    iget-object v5, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 968
    .local v5, string1:[C
    iget v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 969
    .local v0, count1:I
    array-length v1, p2

    .line 971
    .local v1, count2:I
    move v4, v1

    .line 972
    .local v4, size:I
    const/4 v2, 0x0

    .line 973
    .local v2, i:I
    :cond_2
    if-ge v2, v0, :cond_8

    .line 976
    :goto_1
    if-ge v2, v0, :cond_3

    aget-char v6, v5, v2

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 980
    :cond_3
    add-int v6, v2, v4

    if-le v6, v0, :cond_4

    move v6, v8

    .line 981
    goto :goto_0

    .line 986
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 987
    add-int v6, v2, v3

    aget-char v6, v5, v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    aget-char v7, p2, v3

    if-eq v6, v7, :cond_6

    .line 991
    :cond_5
    if-ne v3, v4, :cond_7

    move v6, v2

    .line 992
    goto :goto_0

    .line 986
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 996
    :cond_7
    :goto_3
    if-ge v2, v0, :cond_2

    aget-char v6, v5, v2

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 997
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v3           #j:I
    :cond_8
    move v6, v8

    .line 1001
    goto :goto_0
.end method

.method private setTextWithPrefixHighlighting(Landroid/widget/TextView;Landroid/database/CharArrayBuffer;)V
    .locals 6
    .parameter "textView"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 943
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-direct {p0, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->indexOfWordPrefix(Landroid/database/CharArrayBuffer;[C)I

    move-result v0

    .line 944
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 945
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v3, :cond_0

    .line 946
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHightlightColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 949
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Landroid/database/CharArrayBuffer;->data:[C

    iget v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v2, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V

    .line 950
    .local v2, string:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 951
    .local v1, name:Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    array-length v4, v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 952
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    .end local v1           #name:Landroid/text/SpannableString;
    .end local v2           #string:Ljava/lang/String;
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v3, p2, Landroid/database/CharArrayBuffer;->data:[C

    iget v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1, v3, v5, v4}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method private setTextWithPrefixHighlighting(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4
    .parameter "textView"
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 934
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p2, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 935
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setTextWithPrefixHighlighting(Landroid/widget/TextView;Landroid/database/CharArrayBuffer;)V

    .line 936
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 444
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 445
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 446
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 511
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 517
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 521
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 522
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 488
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 491
    :cond_0
    return-void
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 754
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 756
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 757
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 758
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mFadingEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 759
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 760
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 761
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 721
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 723
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 724
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 725
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mFadingEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 726
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 727
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 728
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 729
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 617
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 619
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mFadingEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 622
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 623
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 624
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 625
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 674
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 676
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 677
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mFadingEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 679
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 680
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 681
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 682
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 576
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_1

    .line 577
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10102af

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 582
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0

    .line 579
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 4

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_1

    .line 564
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 565
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/contact"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 785
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 787
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mFadingEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 790
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 791
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 792
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 793
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCallButton()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 653
    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 500
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 501
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 504
    :cond_0
    return-void
.end method

.method protected layoutLeftSide(IIII)I
    .locals 4
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "leftBound"

    .prologue
    .line 390
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object v1, v2

    .line 391
    .local v1, photoView:Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 393
    sub-int v2, p3, p2

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, p2, v2

    .line 394
    .local v0, photoTop:I
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    add-int/2addr v2, p4

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v1, p4, v0, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 399
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v3

    add-int/2addr p4, v2

    .line 401
    .end local v0           #photoTop:I
    :cond_0
    return p4

    .line 390
    .end local v1           #photoView:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    move-object v1, v2

    goto :goto_0
.end method

.method protected layoutRightSide(III)I
    .locals 6
    .parameter "height"
    .parameter "topBound"
    .parameter "rightBound"

    .prologue
    .line 410
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v0

    .line 412
    .local v0, buttonWidth:I
    sub-int/2addr p3, v0

    .line 413
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    add-int v3, p3, v0

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v4, p1, v4

    invoke-virtual {v2, p3, p2, v3, v4}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 418
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    .line 419
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V

    .line 420
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    sub-int/2addr p3, v2

    .line 421
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    sub-int v5, p1, v5

    invoke-virtual {v2, p3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 430
    .end local v0           #buttonWidth:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 432
    .local v1, iconWidth:I
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr v2, v1

    sub-int/2addr p3, v2

    .line 433
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    add-int v3, p3, v1

    invoke-virtual {v2, p3, p2, v3, p1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 439
    .end local v1           #iconWidth:I
    :cond_0
    return p3

    .line 427
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 295
    sub-int v2, p5, p3

    .line 296
    .local v2, height:I
    sub-int v8, p4, p2

    .line 299
    .local v8, width:I
    const/4 v6, 0x0

    .line 300
    .local v6, topBound:I
    move v0, v2

    .line 302
    .local v0, bottomBound:I
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v9, :cond_0

    .line 303
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/widget/TextView;->layout(IIII)V

    .line 309
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    add-int/2addr v6, v9

    .line 312
    :cond_0
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v9, :cond_1

    .line 313
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v11, v2, v11

    invoke-virtual {v9, v10, v11, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v0, v9

    .line 321
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6, v8, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v9, :cond_2

    .line 324
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 327
    :cond_2
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingTop:I

    add-int/2addr v6, v9

    .line 328
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingBottom:I

    sub-int/2addr v0, v9

    .line 335
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingLeft:I

    invoke-virtual {p0, v2, v6, v0, v9}, Lcom/android/contacts/list/ContactListItemView;->layoutLeftSide(IIII)I

    move-result v3

    .line 336
    .local v3, leftBound:I
    invoke-virtual {p0, v2, v6, v8}, Lcom/android/contacts/list/ContactListItemView;->layoutRightSide(III)I

    move-result v4

    .line 339
    .local v4, rightBound:I
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    sub-int/2addr v4, v9

    .line 342
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine4Height:I

    add-int v7, v9, v10

    .line 343
    .local v7, totalTextHeight:I
    add-int v9, v0, v6

    sub-int/2addr v9, v7

    div-int/lit8 v5, v9, 0x2

    .line 345
    .local v5, textTopBound:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 346
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v10, v5

    invoke-virtual {v9, v3, v5, v4, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 352
    :cond_3
    move v1, v3

    .line 353
    .local v1, dataLeftBound:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 354
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v3, v10, v4, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 360
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 361
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int v1, v3, v9

    .line 362
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v3, v10, v1, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 366
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    add-int/2addr v1, v9

    .line 369
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 370
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v1, v10, v4, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 376
    :cond_6
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 377
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLine4Height:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v3, v10, v4, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 382
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 227
    invoke-static {v5, p1}, Lcom/android/contacts/list/ContactListItemView;->resolveSize(II)I

    move-result v2

    .line 228
    .local v2, width:I
    const/4 v0, 0x0

    .line 229
    .local v0, height:I
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 231
    .local v1, preferredHeight:I
    iput v5, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    .line 232
    iput v5, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    .line 233
    iput v5, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    .line 234
    iput v5, p0, Lcom/android/contacts/list/ContactListItemView;->mLine4Height:I

    .line 237
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 239
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 244
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 249
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 254
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    .line 257
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 259
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine4Height:I

    .line 262
    :cond_4
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLine1Height:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mLine2Height:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mLine3Height:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mLine4Height:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 265
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v3, v5, v5}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 268
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 269
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 272
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 274
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingTop:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 276
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v3, :cond_7

    .line 277
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v0, v3

    .line 278
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v1, v3

    .line 281
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 283
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v3, :cond_8

    .line 284
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 287
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    add-int/2addr v0, v3

    .line 290
    :cond_8
    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 291
    return-void
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 595
    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 599
    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 601
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->forceLayout()V

    .line 1010
    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 925
    return-void
.end method

.method public setData([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 738
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 744
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 745
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/TextView;->setText([CII)V

    .line 746
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 530
    return-void
.end method

.method public setHighlightedPrefix([C)V
    .locals 0
    .parameter "upperCasePrefix"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 611
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 697
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "callButtonClickListener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 209
    return-void
.end method

.method public setPhoneticName([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 659
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 664
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 665
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/TextView;->setText([CII)V

    .line 666
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 802
    if-eqz p1, :cond_2

    .line 803
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 805
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 809
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    :cond_1
    :goto_0
    return-void

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 221
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 539
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 541
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 542
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 543
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    .line 554
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_0
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    .line 776
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setTextWithPrefixHighlighting(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextWithHighlightingFactory(Lcom/android/contacts/widget/TextWithHighlightingFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    .line 213
    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "unknownNameText"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 217
    return-void
.end method

.method public showCallButton(II)V
    .locals 4
    .parameter "id"
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    .line 636
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setId(I)V

    .line 637
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setBackgroundResource(I)V

    .line 639
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x108008d

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 640
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 641
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 642
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setTag(Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 647
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .parameter "cursor"
    .parameter "dataColumnIndex"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 920
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    .line 921
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;IZI)V
    .locals 5
    .parameter "cursor"
    .parameter "nameColumnIndex"
    .parameter "highlightingEnabled"
    .parameter "alternativeNameColumnIndex"

    .prologue
    .line 823
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 825
    .local v0, nameView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 826
    .local v1, size:I
    if-eqz v1, :cond_3

    .line 827
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-direct {p0, v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setTextWithPrefixHighlighting(Landroid/widget/TextView;Landroid/database/CharArrayBuffer;)V

    .line 843
    :goto_0
    return-void

    .line 829
    :cond_0
    if-eqz p3, :cond_2

    .line 830
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    if-nez v2, :cond_1

    .line 831
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    invoke-interface {v2}, Lcom/android/contacts/widget/TextWithHighlightingFactory;->createTextWithHighlighting()Lcom/android/contacts/widget/TextWithHighlighting;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    .line 834
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p4, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 835
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedTextBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v2, v3, v4}, Lcom/android/contacts/widget/TextWithHighlighting;->setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V

    .line 836
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 838
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0

    .line 841
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .parameter "cursor"
    .parameter "phoneticNameColumnIndex"

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 847
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 848
    .local v0, phoneticNameSize:I
    if-eqz v0, :cond_0

    .line 849
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresence(Landroid/database/Cursor;II)V
    .locals 4
    .parameter "cursor"
    .parameter "presenceColumnIndex"
    .parameter "capabilityColumnIndex"

    .prologue
    .line 859
    const/4 v1, 0x0

    .line 860
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 861
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 862
    .local v2, status:I
    const/4 v0, 0x0

    .line 863
    .local v0, chatCapability:I
    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 864
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/contacts/ContactPresenceIconUtil;->getChatCapabilityIcon(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 869
    .end local v0           #chatCapability:I
    .end local v2           #status:I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 870
    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 11
    .parameter "cursor"
    .parameter "summarySnippetColumnIndex"

    .prologue
    .line 876
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    if-gt v10, p2, :cond_0

    .line 877
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 913
    :goto_0
    return-void

    .line 881
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 882
    .local v7, snippet:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 883
    const/4 v3, 0x0

    .line 884
    .local v3, from:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 885
    .local v9, to:I
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 886
    .local v8, start:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    .line 887
    const/4 v7, 0x0

    .line 912
    .end local v3           #from:I
    .end local v8           #start:I
    .end local v9           #to:I
    :cond_1
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 889
    .restart local v3       #from:I
    .restart local v8       #start:I
    .restart local v9       #to:I
    :cond_2
    const/16 v10, 0xa

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 890
    .local v2, firstNl:I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 891
    add-int/lit8 v3, v2, 0x1

    .line 893
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 894
    .local v1, end:I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    .line 895
    const/16 v10, 0xa

    invoke-virtual {v7, v10, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 896
    .local v5, lastNl:I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 897
    move v9, v5

    .line 901
    .end local v5           #lastNl:I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .local v6, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .local v4, i:I
    :goto_2
    if-ge v4, v9, :cond_6

    .line 903
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    .local v0, c:C
    const/4 v10, 0x1

    if-eq v0, v10, :cond_5

    const/4 v10, 0x1

    if-eq v0, v10, :cond_5

    .line 906
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 909
    .end local v0           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
