.class public Lcom/google/android/gm/CanvasConversationHeaderView;
.super Landroid/view/View;
.source "CanvasConversationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;,
        Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;,
        Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;
    }
.end annotation


# static fields
.field private static ATTACHMENT:Landroid/graphics/Bitmap;

.field private static ATTACHMENT_HEIGHT:I

.field private static ATTACHMENT_WIDTH:I

.field private static CHECKED_TEXT_COLOR:I

.field private static CHECKMARK_LEFT_PADDINGS:[I

.field static CHECKMARK_OFF:Landroid/graphics/Bitmap;

.field private static CHECKMARK_ON:Landroid/graphics/Bitmap;

.field private static CHECKMARK_RIGHT_PADDINGS:[I

.field private static CHECKMARK_WIDTH:I

.field private static COLLAPSED_LABELS_HEIGHT:I

.field private static CONVERSATION_HEIGHTS:[I

.field private static DEFAULT_TEXT_COLOR:I

.field private static DRAFT_TEXT_COLOR:I

.field private static FULL_CELL_WIDTH:I

.field private static HALF_CELL_WIDTH:I

.field private static IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

.field private static IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

.field private static IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

.field private static LABELS_BOTTOM_PADDING:I

.field private static LEFT_PADDING:I

.field private static LIGHT_TEXT_COLOR:I

.field private static MIDDLE_PADDING:I

.field private static MINIMUM_WIDTH_NORMAL_MODE:I

.field private static MINIMUM_WIDTH_WIDE_MODE:I

.field private static MORE_LABELS:Landroid/graphics/Bitmap;

.field private static ONLY_TO_ME:Landroid/graphics/Bitmap;

.field private static RIGHT_PADDINGS:[I

.field private static SENDERS_FONT_SIZES:[I

.field private static SENDERS_WIDTH_RATIO:F

.field private static SENDER_WIDTH_ELLIPSIZE_ADJUSTMENT:I

.field private static STAR_LEFT_PADDINGS:[I

.field private static STAR_OFF:Landroid/graphics/Bitmap;

.field private static STAR_ON:Landroid/graphics/Bitmap;

.field private static STAR_RIGHT_PADDINGS:[I

.field private static STAR_WIDTH:I

.field private static SUBJECT_FONT_SIZES:[I

.field private static SUBJECT_LENGTHS:[I

.field private static TOP_PADDING:I

.field private static TOTAL_LABEL_WIDTH:I

.field private static TOTAL_LABEL_WIDTH_NARROW:I

.field private static TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

.field private static VERTICAL_TEXT_PADDINGS:[I

.field private static sCheckmarkLeftPadding:I

.field private static sCheckmarkRightPadding:I

.field private static sDateAscent:I

.field private static sDateFontSize:I

.field private static sFadedActivatedColor:I

.field private static sFadedColor:I

.field private static sLabelsAscent:I

.field private static sLabelsFontSize:I

.field private static sLabelsPaint:Landroid/text/TextPaint;

.field private static sLayoutCount:I

.field private static sLightTextStyle:Landroid/text/style/CharacterStyle;

.field static sMode:I

.field private static sNormalTextStyle:Landroid/text/style/CharacterStyle;

.field private static sPaint:Landroid/text/TextPaint;

.field private static sRightPadding:I

.field private static sSendersAscent:I

.field private static sSendersFontSize:I

.field private static sStarLeftPadding:I

.field private static sStarRightPadding:I

.field private static sSubjectFontSize:I

.field private static sTimer:Lcom/google/android/gm/perf/Timer;

.field private static sVerticalTextPadding:I


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z

.field mCheckmarkX:I

.field mCheckmarkY:I

.field private final mContext:Landroid/content/Context;

.field mDateX:I

.field mDateY:I

.field private mDisplayedLabel:Ljava/lang/CharSequence;

.field private mDownEvent:Z

.field private mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

.field private mLabelsHeight:I

.field mLabelsX:I

.field mLabelsY:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field mPaperclipX:I

.field mPaperclipY:I

.field mPersonalLevelX:I

.field mPersonalLevelY:I

.field private mReadBackground:Landroid/graphics/drawable/Drawable;

.field private mScaledDensity:I

.field private mSelectedActivatedBackground:Landroid/graphics/drawable/Drawable;

.field private mSelectedBackground:Landroid/graphics/drawable/Drawable;

.field private mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

.field mSendersX:I

.field mSendersY:I

.field private mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

.field mStarX:I

.field mStarY:I

.field mSubjectX:I

.field mSubjectY:I

.field private mUnreadBackground:Landroid/graphics/drawable/Drawable;

.field private mViewMode:Lcom/google/android/gm/ViewMode;

.field private mViewWidth:I

.field private mWideReadBackground:Landroid/graphics/drawable/Drawable;

.field private mWideReadSelectedBackground:Landroid/graphics/drawable/Drawable;

.field private mWideUnreadBackground:Landroid/graphics/drawable/Drawable;

.field private mWideUnreadSelectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    .line 64
    const v0, 0x3e99999a

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_WIDTH_RATIO:F

    .line 87
    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    .line 143
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    .line 144
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    .line 210
    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    .line 211
    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    .line 214
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 215
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 200
    iput-boolean v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    .line 364
    iput-object p1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    .line 365
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 367
    .local v1, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 369
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 370
    .local v0, density:F
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 373
    .local v2, scaledDensity:F
    const v3, 0x7f0c0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    .line 374
    const v3, 0x7f0c0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->TOP_PADDING:I

    .line 375
    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->MIDDLE_PADDING:I

    .line 376
    const v3, 0x7f0c0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->FULL_CELL_WIDTH:I

    .line 377
    const v3, 0x7f0c0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    .line 378
    const v3, 0x7f0c0012

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->TOTAL_LABEL_WIDTH:I

    .line 379
    const v3, 0x7f0c0013

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->TOTAL_LABEL_WIDTH_NARROW:I

    .line 381
    const v3, 0x7f0c000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->LABELS_BOTTOM_PADDING:I

    .line 382
    const v3, 0x7f0c000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->COLLAPSED_LABELS_HEIGHT:I

    .line 383
    const v3, 0x7f0c0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDER_WIDTH_ELLIPSIZE_ADJUSTMENT:I

    .line 386
    const v3, 0x7f0c0014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->MINIMUM_WIDTH_WIDE_MODE:I

    .line 387
    const v3, 0x7f0c0015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->MINIMUM_WIDTH_NORMAL_MODE:I

    .line 391
    const/high16 v3, 0x7f0a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CONVERSATION_HEIGHTS:[I

    .line 393
    const v3, 0x7f0a0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_LEFT_PADDINGS:[I

    .line 395
    const v3, 0x7f0a0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_RIGHT_PADDINGS:[I

    .line 397
    const v3, 0x7f0a0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_LEFT_PADDINGS:[I

    .line 399
    const v3, 0x7f0a0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_RIGHT_PADDINGS:[I

    .line 401
    const v3, 0x7f0a0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->RIGHT_PADDINGS:[I

    .line 403
    const v3, 0x7f0a0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->VERTICAL_TEXT_PADDINGS:[I

    .line 405
    const v3, 0x7f0a0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_FONT_SIZES:[I

    .line 407
    const v3, 0x7f0a0008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->getDensityDependentArray([IF)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_FONT_SIZES:[I

    .line 409
    const v3, 0x7f0a0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_LENGTHS:[I

    .line 412
    const v3, 0x7f020011

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    .line 414
    const v3, 0x7f020012

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_ON:Landroid/graphics/Bitmap;

    .line 416
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_WIDTH:I

    .line 417
    const v3, 0x7f020015

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_OFF:Landroid/graphics/Bitmap;

    .line 419
    const v3, 0x7f020018

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    .line 421
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_WIDTH:I

    .line 422
    const v3, 0x7f020036

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->ONLY_TO_ME:Landroid/graphics/Bitmap;

    .line 423
    const v3, 0x7f020039

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    .line 424
    const v3, 0x7f020037

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

    .line 426
    const v3, 0x7f02003a

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    .line 428
    const v3, 0x7f020038

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

    .line 430
    const v3, 0x7f020045

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->MORE_LABELS:Landroid/graphics/Bitmap;

    .line 432
    const v3, 0x7f02002e

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 433
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT_WIDTH:I

    .line 434
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT_HEIGHT:I

    .line 437
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->DEFAULT_TEXT_COLOR:I

    .line 438
    const v3, 0x7f0b0011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKED_TEXT_COLOR:I

    .line 439
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->LIGHT_TEXT_COLOR:I

    .line 440
    const v3, 0x7f0b0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->DRAFT_TEXT_COLOR:I

    .line 443
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    .line 444
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->LIGHT_TEXT_COLOR:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sLightTextStyle:Landroid/text/style/CharacterStyle;

    .line 447
    const v3, 0x7f0c0010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsFontSize:I

    .line 448
    const v3, 0x7f0c0011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    .line 451
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 452
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 453
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    .line 454
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 455
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsAscent:I

    .line 459
    .end local v0           #density:F
    .end local v2           #scaledDensity:F
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    .line 460
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->TOTAL_LABEL_WIDTH:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->TOTAL_LABEL_WIDTH_NARROW:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getCheckmarkWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersAscent:I

    return v0
.end method

.method static synthetic access$1400()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->FULL_CELL_WIDTH:I

    return v0
.end method

.method static synthetic access$300()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsAscent:I

    return v0
.end method

.method static synthetic access$500(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->LABELS_BOTTOM_PADDING:I

    return v0
.end method

.method static synthetic access$800()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->MORE_LABELS:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(ILandroid/graphics/Bitmap;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(ILandroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method private addItem(Landroid/content/ClipData;Ljava/lang/Object;)V
    .locals 2
    .parameter "data"
    .parameter "item"

    .prologue
    .line 1379
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1380
    return-void
.end method

.method private adjustWidthsAndTexts(Z)Z
    .locals 14
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationHeaderViewModel;->isDataValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->viewWidth:I

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    if-ne v0, v1, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 876
    :goto_0
    return v0

    .line 778
    :cond_0
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    packed-switch v0, :pswitch_data_0

    .line 792
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 793
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    .line 800
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 801
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 802
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_LENGTHS:[I

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZ)V

    .line 804
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    .line 806
    const/4 v0, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 807
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 808
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 809
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationHeaderViewModel;->clearSenderFragments()V

    .line 810
    const/4 v0, 0x0

    .line 811
    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    .line 812
    if-eqz v1, :cond_4

    .line 813
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 814
    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    .line 816
    :cond_1
    array-length v11, v1

    const/4 v4, 0x0

    move v12, v4

    move v5, v0

    :goto_2
    if-ge v12, v11, :cond_5

    aget-object v0, v1, v12

    .line 817
    check-cast v0, Landroid/text/style/CharacterStyle;

    .line 818
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 819
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 820
    if-le v6, v5, :cond_2

    .line 821
    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    .line 829
    :cond_2
    if-eqz p1, :cond_3

    .line 830
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move v7, v13

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    .line 816
    :goto_3
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    move v5, v13

    goto :goto_2

    .line 780
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->MIDDLE_PADDING:I

    sub-int/2addr v0, v1

    .line 781
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    int-to-float v2, v0

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_WIDTH_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 782
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    .line 783
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    .line 784
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLinesCount:I

    goto/16 :goto_1

    .line 788
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    .line 789
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLinesCount:I

    goto/16 :goto_1

    .line 832
    :cond_3
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v8, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move v7, v13

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    goto :goto_3

    :cond_4
    move v5, v0

    .line 837
    :cond_5
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 838
    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->sLightTextStyle:Landroid/text/style/CharacterStyle;

    .line 839
    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    .line 842
    :cond_6
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 843
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 844
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 848
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget v5, p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    .line 849
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget v1, p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    add-int/lit8 v6, v1, 0x2

    .line 850
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget-object v7, p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 851
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget v1, p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    .line 852
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget-boolean v8, p1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    .line 855
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 856
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    .line 857
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    if-eqz v8, :cond_a

    :goto_4
    sub-int v1, v2, v1

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    .line 861
    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v9, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    .line 863
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 864
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->DRAFT_TEXT_COLOR:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    .line 870
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    if-gt v0, v1, :cond_9

    .line 871
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    .line 875
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->layoutSubject()V

    .line 876
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 857
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private calculateCoordinates(Lcom/google/android/gm/perf/Timer;)V
    .locals 26
    .parameter "timer"

    .prologue
    .line 889
    if-eqz p1, :cond_0

    .line 890
    const-string v22, "CCHV.coordinates"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 892
    :cond_0
    sget-object v22, Lcom/google/android/gm/CanvasConversationHeaderView;->CONVERSATION_HEIGHTS:[I

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    .line 893
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getCheckmarkWidth()I

    move-result v23

    add-int v11, v22, v23

    .line 894
    .local v11, leftContentBorder:I
    const/4 v12, 0x0

    .line 897
    .local v12, rightContentBorder:I
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    packed-switch v22, :pswitch_data_0

    .line 908
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    move/from16 v22, v0

    sget-object v23, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(ILandroid/graphics/Bitmap;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarY:I

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    move-object/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureTotalDisplayWidth(I)I

    move-result v22

    sub-int v22, v12, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsX:I

    .line 912
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsAscent:I

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsY:I

    .line 913
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    packed-switch v22, :pswitch_data_1

    .line 923
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateWidth:I

    move/from16 v22, v0

    sub-int v22, v12, v22

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-nez v23, :cond_2

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    div-int/lit8 v23, v23, 0x2

    :goto_2
    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    .line 927
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    packed-switch v22, :pswitch_data_2

    .line 944
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclipWidth:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    move/from16 v22, v0

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPaperclipWidth()I

    move-result v23

    sub-int v22, v22, v23

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPaperclipHorizontalPadding()I

    move-result v23

    sub-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipX:I

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    add-int v22, v22, v23

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPaperclipHeight()I

    move-result v23

    sub-int v22, v22, v23

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPaperclipVerticalPadding()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipY:I

    .line 952
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    sget v24, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    mul-int v23, v23, v24

    add-int v14, v22, v23

    .line 955
    .local v14, sendersHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/StaticLayout;->getHeight()I

    move-result v18

    .line 956
    .local v18, subjectHeight:I
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    packed-switch v22, :pswitch_data_3

    .line 974
    :goto_4
    const/16 v20, 0x0

    .line 975
    .local v20, totalWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    move v8, v0

    .line 976
    .local v8, fixedWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersY:I

    move v15, v0

    .line 977
    .local v15, sendersY:I
    const/4 v5, 0x1

    .line 978
    .local v5, currentLine:I
    const/4 v6, 0x0

    .line 979
    .local v6, ellipsize:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    .line 980
    .local v13, senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    move-object v0, v13

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    move-object/from16 v17, v0

    .line 981
    .local v17, style:Landroid/text/style/CharacterStyle;
    move-object v0, v13

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    move/from16 v16, v0

    .line 982
    .local v16, start:I
    iget v7, v13, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    .line 983
    .local v7, end:I
    move-object v0, v13

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    move/from16 v21, v0

    .line 984
    .local v21, width:I
    iget-boolean v10, v13, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    .line 985
    .local v10, isFixed:Z
    sget-object v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 988
    if-eqz v6, :cond_3

    if-nez v10, :cond_3

    .line 989
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object v1, v13

    iput-boolean v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->shouldDisplay:Z

    goto :goto_5

    .line 899
    .end local v5           #currentLine:I
    .end local v6           #ellipsize:Z
    .end local v7           #end:I
    .end local v8           #fixedWidth:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isFixed:Z
    .end local v13           #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .end local v14           #sendersHeight:I
    .end local v15           #sendersY:I
    .end local v16           #start:I
    .end local v17           #style:Landroid/text/style/CharacterStyle;
    .end local v18           #subjectHeight:I
    .end local v20           #totalWidth:I
    .end local v21           #width:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sRightPadding:I

    sub-int v22, v22, v23

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getStarWidth()I

    move-result v23

    sub-int v12, v22, v23

    .line 900
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sStarLeftPadding:I

    add-int v22, v22, v12

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarX:I

    goto/16 :goto_0

    .line 904
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sRightPadding:I

    sub-int v12, v22, v23

    .line 905
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getStarWidth()I

    move-result v22

    sub-int v22, v12, v22

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sStarLeftPadding:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarX:I

    goto/16 :goto_0

    .line 916
    :pswitch_2
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsFontSize:I

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->LABELS_BOTTOM_PADDING:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsHeight:I

    goto/16 :goto_1

    .line 919
    :pswitch_3
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->COLLAPSED_LABELS_HEIGHT:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsHeight:I

    goto/16 :goto_1

    .line 923
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 929
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsAscent:I

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsFontSize:I

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    goto/16 :goto_3

    .line 932
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsAscent:I

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    mul-int/lit8 v23, v23, 0x3

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarY:I

    goto/16 :goto_3

    .line 937
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsAscent:I

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    mul-int/lit8 v23, v23, 0x4

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateAscent:I

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    mul-int/lit8 v23, v23, 0x3

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarY:I

    goto/16 :goto_3

    .line 958
    .restart local v14       #sendersHeight:I
    .restart local v18       #subjectHeight:I
    :pswitch_7
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersX:I

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v22

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersAscent:I

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersY:I

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->MIDDLE_PADDING:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSubjectX:I

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSubjectY:I

    goto/16 :goto_4

    .line 965
    :pswitch_8
    add-int v19, v14, v18

    .line 966
    .local v19, totalHeight:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersX:I

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v22

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersAscent:I

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersY:I

    .line 968
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSubjectX:I

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersY:I

    move/from16 v22, v0

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersAscent:I

    add-int v22, v22, v23

    add-int v22, v22, v14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mSubjectY:I

    goto/16 :goto_4

    .line 994
    .end local v19           #totalHeight:I
    .restart local v5       #currentLine:I
    .restart local v6       #ellipsize:Z
    .restart local v7       #end:I
    .restart local v8       #fixedWidth:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #isFixed:Z
    .restart local v13       #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .restart local v15       #sendersY:I
    .restart local v16       #start:I
    .restart local v17       #style:Landroid/text/style/CharacterStyle;
    .restart local v20       #totalWidth:I
    .restart local v21       #width:I
    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object v1, v13

    iput-object v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 995
    if-eqz v10, :cond_4

    .line 996
    sub-int v8, v8, v21

    .line 998
    :cond_4
    add-int v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move v1, v5

    move v2, v8

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/CanvasConversationHeaderView;->canFitFragment(IIILcom/google/android/gm/ConversationHeaderViewModel;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1001
    if-nez v20, :cond_8

    .line 1002
    const/4 v6, 0x1

    .line 1019
    :cond_5
    :goto_6
    if-eqz v6, :cond_7

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move/from16 v22, v0

    sub-int v21, v22, v20

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    move/from16 v22, v0

    move v0, v5

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1024
    sub-int v21, v21, v8

    .line 1028
    :cond_6
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDER_WIDTH_ELLIPSIZE_ADJUSTMENT:I

    sub-int v4, v21, v22

    .line 1029
    .local v4, avail:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move v0, v4

    int-to-float v0, v0

    move/from16 v24, v0

    sget-object v25, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v22 .. v25}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    iput-object v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 1034
    .end local v4           #avail:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersX:I

    move/from16 v22, v0

    add-int v22, v22, v20

    move/from16 v0, v22

    move-object v1, v13

    iput v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->x:I

    .line 1035
    iput v15, v13, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->y:I

    .line 1036
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object v1, v13

    iput-boolean v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->shouldDisplay:Z

    .line 1037
    add-int v20, v20, v21

    .line 1038
    goto/16 :goto_5

    .line 1005
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    move/from16 v22, v0

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1006
    add-int/lit8 v5, v5, 0x1

    .line 1007
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    add-int v22, v22, v23

    add-int v15, v15, v22

    .line 1008
    const/16 v20, 0x0

    .line 1011
    add-int v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 1012
    const/4 v6, 0x1

    goto/16 :goto_6

    .line 1015
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_6

    .line 1041
    .end local v7           #end:I
    .end local v10           #isFixed:Z
    .end local v13           #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .end local v16           #start:I
    .end local v17           #style:Landroid/text/style/CharacterStyle;
    .end local v21           #width:I
    :cond_a
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    packed-switch v22, :pswitch_data_4

    .line 1062
    :cond_b
    :goto_7
    if-eqz p1, :cond_c

    .line 1063
    const-string v22, "CCHV.coordinates"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 1065
    :cond_c
    return-void

    .line 1043
    :pswitch_9
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sCheckmarkLeftPadding:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkX:I

    .line 1044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    move/from16 v22, v0

    sget-object v23, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(ILandroid/graphics/Bitmap;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkY:I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mPersonalLevelX:I

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mScaledDensity:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(ILandroid/graphics/Bitmap;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mPersonalLevelY:I

    goto :goto_7

    .line 1053
    :pswitch_a
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    sget v23, Lcom/google/android/gm/CanvasConversationHeaderView;->sCheckmarkLeftPadding:I

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkX:I

    .line 1054
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->TOP_PADDING:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkY:I

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1056
    sget v22, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mPersonalLevelX:I

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkY:I

    move/from16 v22, v0

    sget-object v23, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mPersonalLevelY:I

    goto/16 :goto_7

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 913
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 927
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 956
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 1041
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private calculateTextsAndBitmaps(Lcom/google/android/gm/perf/Timer;)V
    .locals 18
    .parameter "timer"

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    const-string v3, "CCHV.txtsbmps"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 553
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    move-object v3, v0

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget-wide v6, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    move v3, v0

    if-eqz v3, :cond_a

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKED_TEXT_COLOR:I

    move v10, v3

    .line 557
    .local v10, fontColor:I
    :goto_1
    const/4 v9, 0x0

    .line 558
    .local v9, fontChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    if-eq v3, v10, :cond_1

    .line 559
    const/4 v9, 0x1

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iput v10, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    .line 563
    :cond_1
    if-eqz p1, :cond_2

    .line 564
    const-string v3, "CCHV.labelDisplayer"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 566
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    const-string v4, "^u"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 567
    .local v12, isUnread:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gm/ConversationHeaderViewModel;->isDataValid(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDisplayedLabel:Ljava/lang/CharSequence;

    move-object v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 576
    :cond_3
    if-eqz p1, :cond_4

    .line 577
    const-string v3, "CCHV.labelDisplayer"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 582
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->updateBackground()V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    move-object v4, v0

    if-nez v4, :cond_b

    const/4 v4, -0x1

    :goto_2
    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->viewMode:I

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gm/ConversationHeaderViewModel;->isDataValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->viewWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    move v4, v0

    if-eq v3, v4, :cond_5

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    move v4, v0

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    sub-int/2addr v4, v5

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sRightPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getCheckmarkWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-nez v5, :cond_c

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getStarWidth()I

    move-result v5

    :goto_3
    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move/from16 v17, v0

    .line 601
    .local v17, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->dateWidth:I

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-nez v6, :cond_d

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    :goto_4
    add-int/2addr v5, v6

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->FULL_CELL_WIDTH:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclipWidth:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    invoke-virtual {v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureTotalDisplayWidth(I)I

    move-result v13

    .line 613
    .local v13, labelsWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    sub-int v5, v17, v13

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->FULL_CELL_WIDTH:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 617
    .end local v13           #labelsWidth:I
    .end local v17           #width:I
    :cond_5
    if-eqz p1, :cond_6

    .line 618
    const-string v3, "CCHV.sendersubj"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 622
    :cond_6
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->adjustWidthsAndTexts(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 624
    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->updateFonts(ZZ)V

    .line 627
    :cond_7
    if-eqz p1, :cond_8

    .line 628
    const-string v3, "CCHV.sendersubj"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 629
    const-string v3, "CCHV.txtsbmps"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 730
    .end local v9           #fontChanged:Z
    .end local v10           #fontColor:I
    :cond_8
    :goto_5
    return-void

    .line 553
    .end local v12           #isUnread:Z
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 556
    :cond_a
    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->DEFAULT_TEXT_COLOR:I

    move v10, v3

    goto/16 :goto_1

    .line 583
    .restart local v9       #fontChanged:Z
    .restart local v10       #fontColor:I
    .restart local v12       #isUnread:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v4

    goto/16 :goto_2

    .line 595
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 601
    .restart local v17       #width:I
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 637
    .end local v17           #width:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    const-string v5, "^t"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    :goto_6
    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    move v4, v0

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    sub-int/2addr v4, v5

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sRightPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getCheckmarkWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-nez v5, :cond_13

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getStarWidth()I

    move-result v5

    :goto_7
    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move/from16 v17, v0

    .line 661
    .restart local v17       #width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    if-eqz v3, :cond_14

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPaperclipWidth()I

    move-result v4

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclipWidth:I

    .line 666
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclipWidth:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-wide v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->dateMs:J

    .line 672
    .local v4, dateMs:J
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 673
    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v9, v0

    .end local v9           #fontChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-nez v6, :cond_15

    const/4 v6, 0x1

    :goto_9
    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    sget v10, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    .end local v10           #fontColor:I
    invoke-virtual {v8, v10}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureTotalDisplayWidth(I)I

    move-result v8

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPaperclipWidth()I

    move-result v10

    sub-int/2addr v8, v10

    int-to-float v8, v8

    invoke-static/range {v3 .. v8}, Lcom/google/android/gm/Utils;->getTimeString(Landroid/content/Context;JZLandroid/text/TextPaint;F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    .end local v4           #dateMs:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->dateWidth:I

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->dateWidth:I

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-nez v6, :cond_16

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->HALF_CELL_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    :goto_a
    add-int/2addr v5, v6

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->FULL_CELL_WIDTH:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v14, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 685
    .local v14, personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->isImportant(Ljava/util/Map;)Z

    move-result v11

    .line 687
    .local v11, isImportant:Z
    sget-object v3, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-ne v14, v3, :cond_18

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    if-eqz v11, :cond_17

    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

    :goto_b
    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    .line 699
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    invoke-virtual {v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureTotalDisplayWidth(I)I

    move-result v13

    .line 704
    .restart local v13       #labelsWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    sub-int v5, v17, v13

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->FULL_CELL_WIDTH:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    .line 708
    if-eqz p1, :cond_10

    .line 709
    const-string v3, "CCHV.sendersubj"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 714
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subject:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 715
    .local v16, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    iget-object v15, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->snippet:Ljava/lang/String;

    .line 716
    .local v15, snippet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0d0153

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    .line 718
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->createSubjectSpans(Z)V

    .line 722
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->adjustWidthsAndTexts(Z)Z

    .line 724
    if-eqz p1, :cond_11

    .line 725
    const-string v3, "CCHV.sendersubj"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 726
    const-string v3, "CCHV.txtsbmps"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 729
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gm/ConversationHeaderViewModel;->validate(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 638
    .end local v11           #isImportant:Z
    .end local v13           #labelsWidth:I
    .end local v14           #personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .end local v15           #snippet:Ljava/lang/String;
    .end local v16           #subject:Ljava/lang/String;
    .end local v17           #width:I
    .restart local v9       #fontChanged:Z
    .restart local v10       #fontColor:I
    :cond_12
    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_OFF:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 654
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 664
    .restart local v17       #width:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclipWidth:I

    goto/16 :goto_8

    .line 674
    .end local v9           #fontChanged:Z
    .restart local v4       #dateMs:J
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 677
    .end local v4           #dateMs:J
    .end local v10           #fontColor:I
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 688
    .restart local v11       #isImportant:Z
    .restart local v14       #personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    :cond_17
    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->ONLY_TO_ME:Landroid/graphics/Bitmap;

    goto/16 :goto_b

    .line 689
    :cond_18
    sget-object v3, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-ne v14, v3, :cond_1a

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    if-eqz v11, :cond_19

    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    :goto_d
    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_c

    :cond_19
    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 692
    :cond_1a
    if-eqz v11, :cond_f

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object v3, v0

    sget-object v4, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_c
.end method

.method private static canFitFragment(IIILcom/google/android/gm/ConversationHeaderViewModel;)Z
    .locals 4
    .parameter "width"
    .parameter "line"
    .parameter "fixedWidth"
    .parameter "header"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 881
    iget v0, p3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersLinesCount:I

    if-ne p1, v0, :cond_1

    .line 882
    add-int v0, p0, p2

    iget v1, p3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    if-gt v0, v1, :cond_0

    move v0, v3

    .line 884
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 882
    goto :goto_0

    .line 884
    :cond_1
    iget v0, p3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersWidth:I

    if-gt p0, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private createSubjectSpans(Z)V
    .locals 11
    .parameter "isUnread"

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 743
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subject:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/gm/CanvasConversationHeaderView;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, subject:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->snippet:Ljava/lang/String;

    .line 745
    .local v1, snippet:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0153

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v1, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    .line 747
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v8, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 749
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->DEFAULT_TEXT_COLOR:I

    if-ne v3, v4, :cond_1

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->LIGHT_TEXT_COLOR:I

    move v0, v3

    .line 751
    .local v0, fontColor:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v6, v6, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 753
    return-void

    .line 747
    .end local v0           #fontColor:I
    :cond_0
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_0

    .line 749
    :cond_1
    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKED_TEXT_COLOR:I

    move v0, v3

    goto :goto_1
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V
    .locals 7
    .parameter "canvas"
    .parameter "s"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1274
    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, p3

    int-to-float v5, p4

    move-object v0, p1

    move-object v1, p2

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1275
    return-void
.end method

.method private filterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1097
    .line 1098
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 1100
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1101
    if-lez v1, :cond_0

    .line 1102
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1103
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/google/android/gm/Utils;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static getCheckmarkWidth()I
    .locals 2

    .prologue
    .line 1068
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_WIDTH:I

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sCheckmarkLeftPadding:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sCheckmarkRightPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDensityDependentArray([IF)[I
    .locals 3
    .parameter "values"
    .parameter "density"

    .prologue
    .line 466
    array-length v2, p1

    new-array v1, v2, [I

    .line 467
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 468
    aget v2, p1, v0

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    aput v2, v1, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-object v1
.end method

.method private static getPadding(II)I
    .locals 1
    .parameter "space"
    .parameter "length"

    .prologue
    .line 349
    sub-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static getPadding(ILandroid/graphics/Bitmap;I)I
    .locals 1
    .parameter "space"
    .parameter "bitmap"
    .parameter "align"

    .prologue
    .line 353
    packed-switch p2, :pswitch_data_0

    .line 359
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 355
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v0

    goto :goto_0

    .line 357
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v0

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getPaperclipHeight()I
    .locals 1

    .prologue
    .line 1080
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static getPaperclipHorizontalPadding()I
    .locals 1

    .prologue
    .line 1084
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT_WIDTH:I

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static getPaperclipVerticalPadding()I
    .locals 1

    .prologue
    .line 1088
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT_HEIGHT:I

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static getPaperclipWidth()I
    .locals 1

    .prologue
    .line 1076
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static getStarWidth()I
    .locals 2

    .prologue
    .line 1072
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_WIDTH:I

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sStarLeftPadding:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sStarRightPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewMode(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 1179
    const/4 v0, 0x2

    .line 1180
    .local v0, mode:I
    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->MINIMUM_WIDTH_NORMAL_MODE:I

    if-le p1, v1, :cond_0

    .line 1181
    const/4 v0, 0x1

    .line 1183
    :cond_0
    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->MINIMUM_WIDTH_WIDE_MODE:I

    if-le p1, v1, :cond_1

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :cond_1
    return v0
.end method

.method private layoutSubject()V
    .locals 10

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 756
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sSubjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 757
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 758
    iget-object v9, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v9, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    .line 760
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLinesCount:I

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 761
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLinesCount:I

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    .line 762
    .local v8, end:I
    iget-object v9, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v9, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    .line 766
    .end local v8           #end:I
    :cond_0
    return-void
.end method

.method private measureHeight(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1152
    .line 1153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1156
    const/high16 v2, 0x4000

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 1168
    :goto_0
    return v0

    .line 1161
    :cond_0
    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->CONVERSATION_HEIGHTS:[I

    aget v2, v2, p2

    .line 1162
    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_1

    .line 1165
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .parameter

    .prologue
    .line 1124
    .line 1125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1128
    const/high16 v2, 0x4000

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 1141
    :goto_0
    return v0

    .line 1133
    :cond_0
    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    .line 1134
    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_1

    .line 1137
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private onWidthChanged()V
    .locals 3

    .prologue
    .line 522
    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    invoke-direct {p0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getViewMode(I)I

    move-result v0

    .line 523
    .local v0, mode:I
    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    if-eq v0, v1, :cond_0

    .line 524
    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    .line 526
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 527
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_LEFT_PADDINGS:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sCheckmarkLeftPadding:I

    .line 528
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_RIGHT_PADDINGS:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sCheckmarkRightPadding:I

    .line 529
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_LEFT_PADDINGS:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sStarLeftPadding:I

    .line 530
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_RIGHT_PADDINGS:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sStarRightPadding:I

    .line 531
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->RIGHT_PADDINGS:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sRightPadding:I

    .line 532
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->VERTICAL_TEXT_PADDINGS:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sVerticalTextPadding:I

    .line 533
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_FONT_SIZES:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    .line 534
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 535
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersAscent:I

    .line 536
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_FONT_SIZES:[I

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    aget v1, v1, v2

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sSubjectFontSize:I

    .line 538
    :cond_0
    return-void
.end method

.method private setCheckedActivatedBackground()V
    .locals 2

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedActivatedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedActivatedBackground:Landroid/graphics/drawable/Drawable;

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedActivatedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1363
    :goto_0
    return-void

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 1361
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private stopDragMode()V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->onStopDragMode()V

    .line 1422
    return-void
.end method

.method private toggleStar()V
    .locals 7

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    .line 1371
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->maxMessageId:J

    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v6, v6, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;->toggleStar(ZJJLjava/util/Map;)V

    .line 1373
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    :goto_1
    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    .line 1374
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarX:I

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarY:I

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarX:I

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_WIDTH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarY:I

    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gm/CanvasConversationHeaderView;->postInvalidate(IIII)V

    .line 1376
    return-void

    .line 1369
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1373
    :cond_1
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_OFF:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private touchCheckmark(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1425
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->LEFT_PADDING:I

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getCheckmarkWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private touchStar(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1429
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sRightPadding:I

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->getStarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1292
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    const-string v1, "^u"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1294
    if-eqz v0, :cond_7

    .line 1295
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1296
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideUnreadSelectedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideUnreadSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideUnreadSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    :goto_0
    return-void

    .line 1303
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideUnreadBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1304
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideUnreadBackground:Landroid/graphics/drawable/Drawable;

    .line 1307
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideUnreadBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1310
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_5

    .line 1311
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setCheckedActivatedBackground()V

    goto :goto_0

    .line 1313
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mUnreadBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 1314
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mUnreadBackground:Landroid/graphics/drawable/Drawable;

    .line 1317
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mUnreadBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1321
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 1322
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_a

    .line 1323
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideReadSelectedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 1324
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideReadSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 1327
    :cond_9
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideReadSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1329
    :cond_a
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideReadBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideReadBackground:Landroid/graphics/drawable/Drawable;

    .line 1333
    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mWideReadBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1336
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_d

    .line 1337
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setCheckedActivatedBackground()V

    goto :goto_0

    .line 1339
    :cond_d
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mReadBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    .line 1340
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mReadBackground:Landroid/graphics/drawable/Drawable;

    .line 1343
    :cond_e
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mReadBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private updateFonts(ZZ)V
    .locals 0
    .parameter "isUnread"
    .parameter "fontChanged"

    .prologue
    .line 733
    if-eqz p2, :cond_0

    .line 737
    invoke-direct {p0, p1}, Lcom/google/android/gm/CanvasConversationHeaderView;->createSubjectSpans(Z)V

    .line 738
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->layoutSubject()V

    .line 740
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/ViewMode;)V
    .locals 3
    .parameter "cursor"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "account"
    .parameter "displayedLabel"
    .parameter "selectedConversationSet"
    .parameter "viewMode"

    .prologue
    .line 479
    iput-object p2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 480
    iput-object p3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    .line 481
    iput-object p4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    .line 482
    iput-object p5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDisplayedLabel:Ljava/lang/CharSequence;

    .line 483
    iput-object p6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 484
    iput-object p7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 485
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gm/ConversationHeaderViewModel;->forConversationId(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationHeaderViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->requestLayout()V

    .line 489
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1480
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1485
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1482
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->stopDragMode()V

    .line 1483
    const/4 v0, 0x1

    goto :goto_0

    .line 1480
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 1192
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_ON:Landroid/graphics/Bitmap;

    .line 1193
    :goto_0
    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCheckmarkY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1196
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1199
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPersonalLevelX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPersonalLevelY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1205
    :cond_0
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sSendersFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1206
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1207
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1208
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    .line 1209
    iget-boolean v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->shouldDisplay:Z

    if-eqz v1, :cond_1

    .line 1210
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1211
    iget-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1212
    iget-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1213
    iget-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->x:I

    int-to-float v2, v2

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->y:I

    int-to-float v0, v0

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1192
    :cond_2
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1215
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    iget v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    iget v4, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->x:I

    int-to-float v4, v4

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->y:I

    int-to-float v5, v0

    sget-object v6, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1222
    :cond_4
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sSubjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1223
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1224
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1226
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSubjectX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSubjectY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1227
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1231
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsX:I

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    invoke-virtual {v2, v3}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureTotalDisplayWidth(I)I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsY:I

    iget v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsHeight:I

    sget v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sMode:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->drawLabels(Landroid/graphics/Canvas;IIII)V

    .line 1236
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1237
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1238
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1239
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    iget v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateY:I

    sget-object v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/CanvasConversationHeaderView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V

    .line 1242
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclipWidth:I

    if-lez v0, :cond_5

    .line 1243
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1245
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    if-eqz v0, :cond_7

    .line 1247
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_8

    .line 1248
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    if-ne v0, v8, :cond_6

    .line 1249
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    .line 1251
    :cond_6
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    .line 1252
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1271
    :cond_7
    :goto_2
    return-void

    .line 1256
    :cond_8
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    if-ne v0, v8, :cond_9

    .line 1257
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    .line 1260
    :cond_9
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    .line 1261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1263
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1266
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1268
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 493
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    if-eqz v1, :cond_0

    .line 494
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    const-string v2, "CCHV.layout"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 497
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 499
    sub-int v0, p4, p2

    .line 500
    .local v0, width:I
    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    if-eq v0, v1, :cond_1

    .line 501
    iput v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    .line 502
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->onWidthChanged()V

    .line 504
    :cond_1
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    invoke-direct {p0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->calculateTextsAndBitmaps(Lcom/google/android/gm/perf/Timer;)V

    .line 505
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    invoke-direct {p0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->calculateCoordinates(Lcom/google/android/gm/perf/Timer;)V

    .line 507
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    if-eqz v1, :cond_2

    .line 508
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    const-string v2, "CCHV.layout"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 509
    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    .line 510
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v1}, Lcom/google/android/gm/perf/Timer;->dumpResults()V

    .line 511
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    .line 512
    const/4 v1, 0x0

    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    iput v2, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->viewWidth:I

    .line 516
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/google/android/gm/CanvasConversationHeaderView;->measureWidth(I)I

    move-result v1

    .line 1113
    .local v1, width:I
    invoke-direct {p0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getViewMode(I)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->measureHeight(II)I

    move-result v0

    .line 1114
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setMeasuredDimension(II)V

    .line 1115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 1434
    const/4 v0, 0x0

    .line 1436
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1437
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1438
    .local v2, y:I
    iput v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchX:I

    .line 1439
    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchY:I

    .line 1440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1466
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 1467
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1470
    :cond_1
    return v0

    .line 1442
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDownEvent:Z

    .line 1443
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchCheckmark(FF)Z

    move-result v3

    if-nez v3, :cond_2

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchStar(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1444
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1449
    :pswitch_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDownEvent:Z

    goto :goto_0

    .line 1453
    :pswitch_3
    iget-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDownEvent:Z

    if-eqz v3, :cond_0

    .line 1454
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchCheckmark(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1456
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 1461
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1457
    :cond_4
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchStar(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1459
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleStar()V

    goto :goto_1

    .line 1440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 543
    iput-object p1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 544
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_0
    return-void
.end method

.method public setFaded(Z)V
    .locals 1
    .parameter "faded"

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iput-boolean p1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    .line 1540
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->postInvalidate()V

    .line 1541
    return-void
.end method

.method public startDragMode()V
    .locals 6

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1415
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->onStartDragMode()V

    .line 1401
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v1

    .line 1402
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f001e

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1406
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1407
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    .line 1408
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->addItem(Landroid/content/ClipData;Ljava/lang/Object;)V

    .line 1409
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->addItem(Landroid/content/ClipData;Ljava/lang/Object;)V

    .line 1410
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->addItem(Landroid/content/ClipData;Ljava/lang/Object;)V

    goto :goto_1

    .line 1414
    :cond_2
    new-instance v0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchX:I

    iget v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchY:I

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;-><init>(Landroid/view/View;III)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/google/android/gm/CanvasConversationHeaderView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method public toggleCheckMark()V
    .locals 7

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    .line 1282
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->maxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/ConversationSelectionSet;->toggle(JJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->requestLayout()V

    .line 1289
    return-void

    .line 1281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
