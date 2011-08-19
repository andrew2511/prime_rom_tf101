.class public Lcom/android/email/activity/MessageListItem;
.super Landroid/view/View;
.source "MessageListItem.java"


# static fields
.field private static sAttachmentIcon:Landroid/graphics/Bitmap;

.field private static sBadgePaddingRight:I

.field private static sBadgePaddingTop:I

.field private static final sBoldPaint:Landroid/text/TextPaint;

.field private static sCheckboxHitWidth:I

.field private static sColorTipHeight:I

.field private static sColorTipRightMarginOnNarrow:I

.field private static sColorTipRightMarginOnWide:I

.field private static sColorTipWidth:I

.field private static sDateIconWidthNarrow:I

.field private static sDateIconWidthWide:I

.field private static final sDatePaint:Landroid/text/TextPaint;

.field private static final sDefaultPaint:Landroid/text/TextPaint;

.field private static sFavoriteHitWidth:I

.field private static sFavoriteIconOff:Landroid/graphics/Bitmap;

.field private static sFavoriteIconOn:Landroid/graphics/Bitmap;

.field private static sFavoriteIconWidth:I

.field private static sFavoritePaddingRight:I

.field private static sInit:Z

.field private static sInviteIcon:Landroid/graphics/Bitmap;

.field private static sItemHeightNarrow:I

.field private static sItemHeightWide:I

.field private static sMinimumWidthWideMode:I

.field private static sPaddingLarge:I

.field private static sPaddingMedium:I

.field private static sPaddingSmall:I

.field private static sPaddingVerySmall:I

.field private static sSelectedIconOff:Landroid/graphics/Bitmap;

.field private static sSelectedIconOn:Landroid/graphics/Bitmap;

.field private static sSenderPaddingTopNarrow:I

.field private static sSenderWidth:I

.field private static sSubjectSnippetDivider:Ljava/lang/String;

.field private static sTextSize:I


# instance fields
.field mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MessagesAdapter;

.field public mColorChipPaint:Landroid/graphics/Paint;

.field private mCurentBackground:Landroid/graphics/drawable/Drawable;

.field private mDateFaveWidth:I

.field private mDownEvent:Z

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mFormattedSender:Ljava/lang/CharSequence;

.field public mHasAttachment:Z

.field public mHasInvite:Z

.field public mIsFavorite:Z

.field mMailboxId:J

.field mMessageId:J

.field private mMode:I

.field public mRead:Z

.field private mReadSelector:Landroid/graphics/drawable/Drawable;

.field public mSender:Ljava/lang/String;

.field private mSenderSnippetWidth:I

.field public mSnippet:Ljava/lang/String;

.field public mSnippetLineCount:I

.field private final mSnippetLines:[Ljava/lang/CharSequence;

.field private mSnippetWidth:I

.field public mSubject:Ljava/lang/String;

.field public mText:Ljava/lang/CharSequence;

.field public mTimestamp:J

.field private mUnreadSelector:Landroid/graphics/drawable/Drawable;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWideReadSelector:Landroid/graphics/drawable/Drawable;

.field private mWideUnreadSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 89
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    .line 90
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    .line 91
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 113
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 115
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 116
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 149
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 113
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 115
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 116
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 149
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 113
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 115
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 116
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 149
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private calculateDrawingData()V
    .locals 24

    .prologue
    .line 282
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 283
    .local v22, ssb:Landroid/text/SpannableStringBuilder;
    const/16 v17, 0x0

    .line 284
    .local v17, hasSubject:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 286
    .local v21, ss:Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move v7, v0

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_0
    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 288
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 289
    const/16 v17, 0x1

    .line 291
    .end local v21           #ss:Landroid/text/SpannableString;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 292
    if-eqz v17, :cond_1

    .line 293
    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubjectSnippetDivider:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 297
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListItem;->mText:Ljava/lang/CharSequence;

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 300
    sget v6, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    sget v7, Lcom/android/email/activity/MessageListItem;->sDateIconWidthWide:I

    add-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageListItem;->mDateFaveWidth:I

    .line 304
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mDateFaveWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    sget v7, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageListItem;->mSenderSnippetWidth:I

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSenderSnippetWidth:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSenderSnippetWidth:I

    move v6, v0

    sget v7, Lcom/android/email/activity/MessageListItem;->sSenderWidth:I

    sub-int/2addr v6, v7

    sget v7, Lcom/android/email/activity/MessageListItem;->sPaddingLarge:I

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    .line 313
    :cond_3
    new-instance v5, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mText:Ljava/lang/CharSequence;

    move-object v8, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    move v10, v0

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v5 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 316
    .local v5, layout:Landroid/text/StaticLayout;
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    .line 319
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_8

    .line 320
    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v23

    .line 321
    .local v23, start:I
    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_7

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v16

    .line 323
    .local v16, end:I
    move/from16 v0, v23

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 319
    .end local v16           #end:I
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 286
    .end local v5           #layout:Landroid/text/StaticLayout;
    .end local v18           #i:I
    .end local v23           #start:I
    .restart local v21       #ss:Landroid/text/SpannableString;
    :cond_4
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 302
    .end local v21           #ss:Landroid/text/SpannableString;
    :cond_5
    sget v6, Lcom/android/email/activity/MessageListItem;->sDateIconWidthNarrow:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageListItem;->mDateFaveWidth:I

    goto/16 :goto_1

    .line 325
    .restart local v5       #layout:Landroid/text/StaticLayout;
    .restart local v16       #end:I
    .restart local v18       #i:I
    .restart local v23       #start:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mText:Ljava/lang/CharSequence;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    sget-object v8, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    move v9, v0

    int-to-float v9, v9

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v8, v9, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v18

    goto :goto_3

    .line 329
    .end local v16           #end:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mText:Ljava/lang/CharSequence;

    move-object v7, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    move-object v0, v7

    move/from16 v1, v23

    move v2, v8

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v18

    goto :goto_3

    .line 334
    .end local v23           #start:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move v6, v0

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v6

    .line 335
    .local v19, senderPaint:Landroid/text/TextPaint;
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    sget v6, Lcom/android/email/activity/MessageListItem;->sSenderWidth:I

    move/from16 v20, v6

    .line 337
    .local v20, senderWidth:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 338
    const-string v6, ""

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    .line 344
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, date:Ljava/lang/String;
    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget v7, Lcom/android/email/activity/MessageListItem;->sDateIconWidthWide:I

    int-to-float v7, v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v15, v6, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 347
    return-void

    .line 334
    .end local v15           #date:Ljava/lang/String;
    .end local v19           #senderPaint:Landroid/text/TextPaint;
    .end local v20           #senderWidth:I
    :cond_9
    sget-object v6, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v6

    goto :goto_4

    .line 335
    .restart local v19       #senderPaint:Landroid/text/TextPaint;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSenderSnippetWidth:I

    move v6, v0

    move/from16 v20, v6

    goto :goto_5

    .line 340
    .restart local v20       #senderWidth:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    move-object v6, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v0, v6

    move-object/from16 v1, v19

    move v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method private getViewMode(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 234
    const/4 v0, 0x1

    .line 235
    .local v0, mode:I
    sget v1, Lcom/android/email/activity/MessageListItem;->sMinimumWidthWideMode:I

    if-le p1, v1, :cond_0

    .line 236
    const/4 v0, 0x2

    .line 238
    :cond_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 155
    sget-boolean v1, Lcom/android/email/activity/MessageListItem;->sInit:Z

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 158
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    .line 160
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    .line 162
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    .line 164
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBadgePaddingTop:I

    .line 166
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBadgePaddingRight:I

    .line 168
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSenderPaddingTopNarrow:I

    .line 170
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateIconWidthWide:I

    .line 172
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateIconWidthNarrow:I

    .line 174
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSenderWidth:I

    .line 176
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingLarge:I

    .line 178
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingMedium:I

    .line 180
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingSmall:I

    .line 182
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingVerySmall:I

    .line 184
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSize:I

    .line 186
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sItemHeightWide:I

    .line 188
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sItemHeightNarrow:I

    .line 190
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMinimumWidthWideMode:I

    .line 192
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    .line 194
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipHeight:I

    .line 196
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipRightMarginOnNarrow:I

    .line 198
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipRightMarginOnWide:I

    .line 201
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 202
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/email/activity/MessageListItem;->sTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 203
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 204
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 205
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/email/activity/MessageListItem;->sTextSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 206
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 207
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/email/activity/MessageListItem;->sTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 210
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 211
    const v1, 0x7f02002b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    .line 212
    const v1, 0x7f02002d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    .line 213
    const v1, 0x7f02001a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    .line 215
    const v1, 0x7f02001b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    .line 217
    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    .line 219
    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOn:Landroid/graphics/Bitmap;

    .line 222
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    .line 223
    sput-boolean v3, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 225
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private measureHeight(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "mode"

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 374
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 376
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 378
    move v0, v2

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 382
    sget v0, Lcom/android/email/activity/MessageListItem;->sItemHeightWide:I

    .line 386
    :goto_1
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 389
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 384
    :cond_2
    sget v0, Lcom/android/email/activity/MessageListItem;->sItemHeightNarrow:I

    goto :goto_1
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/MessagesAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 532
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListItem;->setSelected(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->updateBackground()V

    .line 400
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 401
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 42
    .parameter "canvas"

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageListItem;->calculateDrawingData()V

    .line 409
    :cond_0
    sget v38, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    .line 411
    .local v38, snippetX:I
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/android/email/activity/MessageListItem;->sPaddingVerySmall:I

    add-int v34, v5, v6

    .line 412
    .local v34, lineHeight:I
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v30

    .line 413
    .local v30, fontMetrics:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 414
    .local v22, ascent:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v26, v0

    .line 417
    .local v26, descent:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 419
    sget v5, Lcom/android/email/activity/MessageListItem;->sSenderWidth:I

    sget v6, Lcom/android/email/activity/MessageListItem;->sPaddingLarge:I

    add-int/2addr v5, v6

    add-int v38, v38, v5

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    move v5, v0

    sub-int v5, v5, v26

    sub-int v5, v5, v22

    div-int/lit8 v37, v5, 0x2

    .line 422
    .local v37, senderY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    move v5, v0

    mul-int/lit8 v6, v34, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v39, v5, v22

    .line 429
    .local v39, snippetY:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    sget v5, Lcom/android/email/activity/MessageListItem;->sColorTipRightMarginOnWide:I

    move/from16 v36, v5

    .line 432
    .local v36, rightMargin:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    move v5, v0

    sub-int v5, v5, v36

    sget v6, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    sub-int v41, v5, v6

    .line 433
    .local v41, x:I
    move/from16 v0, v41

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    sget v5, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    add-int v5, v5, v41

    int-to-float v8, v5

    sget v5, Lcom/android/email/activity/MessageListItem;->sColorTipHeight:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 437
    .end local v36           #rightMargin:I
    .end local v41           #x:I
    :cond_1
    sget v5, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v23, v5, 0x2

    .line 438
    .local v23, checkboxLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    move v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v24, v5, 0x2

    .line 439
    .local v24, checkboxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSelectedIconOn:Landroid/graphics/Bitmap;

    :goto_2
    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    sget-object v8, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget v5, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    int-to-float v9, v5

    move/from16 v0, v37

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move v5, v0

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object v11, v5

    :goto_3
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_9

    const/4 v5, 0x0

    move/from16 v40, v5

    .line 448
    .local v40, subjectEnd:I
    :goto_4
    const/16 v35, 0x0

    .line 449
    .local v35, lineStart:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move v5, v0

    if-eqz v5, :cond_a

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object v11, v5

    .line 450
    .local v11, subjectPaint:Landroid/text/TextPaint;
    :goto_5
    const/16 v31, 0x0

    .local v31, i:I
    :goto_6
    const/4 v5, 0x2

    move/from16 v0, v31

    move v1, v5

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    move v5, v0

    move/from16 v0, v31

    move v1, v5

    if-ge v0, v1, :cond_b

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v6, v5, v31

    .line 452
    .local v6, line:Ljava/lang/CharSequence;
    move/from16 v27, v38

    .line 453
    .local v27, drawX:I
    if-eqz v6, :cond_4

    .line 454
    const/4 v14, 0x0

    .line 455
    .local v14, defaultPaintStart:I
    move/from16 v0, v35

    move/from16 v1, v40

    if-gt v0, v1, :cond_3

    .line 456
    sub-int v8, v40, v35

    .line 457
    .local v8, boldPaintEnd:I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v8, v5, :cond_2

    .line 458
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 461
    :cond_2
    const/4 v7, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 462
    move v14, v8

    .line 463
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    const/4 v7, 0x0

    invoke-virtual {v11, v6, v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    add-float/2addr v5, v7

    move v0, v5

    float-to-int v0, v0

    move/from16 v27, v0

    .line 465
    .end local v8           #boldPaintEnd:I
    :cond_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v12, p1

    move-object v13, v6

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 467
    add-int v39, v39, v34

    .line 468
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int v35, v35, v5

    .line 450
    .end local v14           #defaultPaintStart:I
    :cond_4
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 424
    .end local v6           #line:Ljava/lang/CharSequence;
    .end local v11           #subjectPaint:Landroid/text/TextPaint;
    .end local v23           #checkboxLeft:I
    .end local v24           #checkboxTop:I
    .end local v27           #drawX:I
    .end local v31           #i:I
    .end local v35           #lineStart:I
    .end local v37           #senderY:I
    .end local v39           #snippetY:I
    .end local v40           #subjectEnd:I
    :cond_5
    move/from16 v0, v22

    neg-int v0, v0

    move v5, v0

    sget v6, Lcom/android/email/activity/MessageListItem;->sSenderPaddingTopNarrow:I

    add-int v37, v5, v6

    .line 425
    .restart local v37       #senderY:I
    add-int v5, v37, v34

    sget v6, Lcom/android/email/activity/MessageListItem;->sPaddingVerySmall:I

    add-int v39, v5, v6

    .restart local v39       #snippetY:I
    goto/16 :goto_0

    .line 430
    :cond_6
    sget v5, Lcom/android/email/activity/MessageListItem;->sColorTipRightMarginOnNarrow:I

    move/from16 v36, v5

    goto/16 :goto_1

    .line 439
    .restart local v23       #checkboxLeft:I
    .restart local v24       #checkboxTop:I
    :cond_7
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 443
    :cond_8
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    move-object v11, v5

    goto/16 :goto_3

    .line 447
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v40, v5

    goto/16 :goto_4

    .line 449
    .restart local v35       #lineStart:I
    .restart local v40       #subjectEnd:I
    :cond_a
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    move-object v11, v5

    goto/16 :goto_5

    .line 474
    .restart local v11       #subjectPaint:Landroid/text/TextPaint;
    .restart local v31       #i:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 475
    sget v25, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    .line 479
    .local v25, datePaddingRight:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    move v5, v0

    sub-int v5, v5, v25

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    move-object v9, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lcom/android/email/activity/MessageListItem;->sPaddingMedium:I

    sub-int v33, v5, v6

    .line 483
    .local v33, left:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    move v5, v0

    if-eqz v5, :cond_c

    .line 484
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v33, v33, v5

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    move v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v32, v5, 0x2

    .line 487
    .local v32, iconTop:I
    sget v5, Lcom/android/email/activity/MessageListItem;->sPaddingSmall:I

    sub-int v33, v33, v5

    .line 492
    :goto_8
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v33

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v7, v0

    sget-object v8, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 494
    .end local v32           #iconTop:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 495
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v33, v33, v5

    .line 496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    move v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v32, v5, 0x2

    .line 498
    .restart local v32       #iconTop:I
    sget v5, Lcom/android/email/activity/MessageListItem;->sPaddingSmall:I

    sub-int v33, v33, v5

    .line 503
    :goto_9
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v33

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v7, v0

    sget-object v8, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 507
    .end local v32           #iconTop:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    move v5, v0

    sub-int v5, v5, v25

    move v0, v5

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v20, v0

    sget-object v21, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    move v5, v0

    sget v6, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    sub-int v28, v5, v6

    .line 512
    .local v28, faveLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 513
    sget v5, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    sub-int v28, v28, v5

    .line 517
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    move v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v29, v5, 0x2

    .line 518
    .local v29, faveTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageListItem;->mMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 519
    sget v5, Lcom/android/email/activity/MessageListItem;->sSenderPaddingTopNarrow:I

    add-int v29, v29, v5

    .line 521
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    move v5, v0

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    :goto_b
    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v7, v0

    sget-object v8, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 523
    return-void

    .line 477
    .end local v25           #datePaddingRight:I
    .end local v28           #faveLeft:I
    .end local v29           #faveTop:I
    .end local v33           #left:I
    :cond_f
    sget v25, Lcom/android/email/activity/MessageListItem;->sPaddingLarge:I

    .restart local v25       #datePaddingRight:I
    goto/16 :goto_7

    .line 489
    .restart local v33       #left:I
    :cond_10
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v37, v5

    sget v6, Lcom/android/email/activity/MessageListItem;->sBadgePaddingTop:I

    add-int v32, v5, v6

    .line 490
    .restart local v32       #iconTop:I
    sget v5, Lcom/android/email/activity/MessageListItem;->sBadgePaddingRight:I

    sub-int v33, v33, v5

    goto/16 :goto_8

    .line 500
    .end local v32           #iconTop:I
    :cond_11
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v37, v5

    sget v6, Lcom/android/email/activity/MessageListItem;->sBadgePaddingTop:I

    add-int v32, v5, v6

    .line 501
    .restart local v32       #iconTop:I
    sget v5, Lcom/android/email/activity/MessageListItem;->sBadgePaddingRight:I

    sub-int v33, v33, v5

    goto/16 :goto_9

    .line 515
    .end local v32           #iconTop:I
    .restart local v28       #faveLeft:I
    :cond_12
    sget v5, Lcom/android/email/activity/MessageListItem;->sPaddingLarge:I

    sub-int v28, v28, v5

    goto :goto_a

    .line 521
    .restart local v29       #faveTop:I
    :cond_13
    sget-object v5, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 351
    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-nez v1, :cond_2

    .line 352
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 353
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListItem;->getViewMode(I)I

    move-result v0

    .line 354
    .local v0, mode:I
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-eq v0, v1, :cond_1

    .line 356
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 357
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    .line 359
    :cond_1
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    invoke-direct {p0, p2, v1}, Lcom/android/email/activity/MessageListItem;->measureHeight(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 361
    .end local v0           #mode:I
    :cond_2
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageListItem;->setMeasuredDimension(II)V

    .line 362
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 542
    .local v3, touchX:I
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    .line 543
    .local v0, checkRight:I
    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v5, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    sub-int v2, v4, v5

    .line 545
    .local v2, starLeft:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 573
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_5

    .line 574
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 579
    :goto_1
    return v1

    .line 547
    :pswitch_1
    if-lt v3, v0, :cond_1

    if-le v3, v2, :cond_0

    .line 548
    :cond_1
    iput-boolean v7, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    .line 549
    if-lt v3, v0, :cond_2

    if-le v3, v2, :cond_0

    .line 550
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 556
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    goto :goto_0

    .line 560
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v4, :cond_0

    .line 561
    if-ge v3, v0, :cond_3

    .line 562
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 563
    const/4 v1, 0x1

    goto :goto_0

    .line 564
    :cond_3
    if-le v3, v2, :cond_0

    .line 565
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-nez v4, :cond_4

    move v4, v7

    :goto_2
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 566
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    invoke-virtual {v4, p0, v5}, Lcom/android/email/activity/MessagesAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    .line 567
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v4, v6

    .line 565
    goto :goto_2

    .line 576
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method updateBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 245
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v1, :cond_4

    .line 246
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-ne v1, v2, :cond_2

    .line 247
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    .line 274
    .local v0, newBackground:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 279
    :cond_1
    return-void

    .line 253
    .end local v0           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v0       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 260
    .end local v0           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-ne v1, v2, :cond_6

    .line 261
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    .line 262
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    .line 265
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v0       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 267
    .end local v0           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    .line 268
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v0       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
