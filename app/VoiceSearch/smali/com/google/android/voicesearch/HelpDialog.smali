.class public Lcom/google/android/voicesearch/HelpDialog;
.super Landroid/app/Dialog;
.source "HelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;,
        Lcom/google/android/voicesearch/HelpDialog$HintAdapter;,
        Lcom/google/android/voicesearch/HelpDialog$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_DELAY_MILLIS:I = 0x1770

.field private static final AUTO_SCROLL_DELAY_MILLIS_FIRST_RUN:I = 0x2ee0

.field private static final AUTO_SCROLL_INTERVAL_MILLIS:I = 0xdac

.field private static final BOLD_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final YOUTUBE_PACKAGE:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YOUTUBE_URL_PREFIX:Ljava/lang/String; = "http://www.youtube.com/"


# instance fields
.field private mActionArea:Landroid/widget/LinearLayout;

.field private mActionDescription:Landroid/widget/TextSwitcher;

.field private mActionGallery:Landroid/widget/Gallery;

.field private mActionGalleryContainer:Landroid/view/ViewGroup;

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mCheckBoxText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/widget/TextView;

.field private mInLeft:Landroid/view/animation/Animation;

.field private mInRight:Landroid/view/animation/Animation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastSelection:I

.field private mLeftArrow:Landroid/widget/ImageButton;

.field private mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;

.field private mLoadingSpinner:Landroid/view/View;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mOptionalContent:Landroid/widget/LinearLayout;

.field private mOutLeft:Landroid/view/animation/Animation;

.field private mOutRight:Landroid/view/animation/Animation;

.field private mRightArrow:Landroid/widget/ImageButton;

.field private volatile mScrollActive:Z

.field private mScrollToNextAction:Ljava/lang/Runnable;

.field private mShowCheckBox:Z

.field private mSpeakAgainButton:Landroid/widget/Button;

.field private mVideoLink:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "<b>(.*)</b>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/HelpDialog;->BOLD_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 155
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 130
    iput v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I

    .line 132
    iput-boolean v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mShowCheckBox:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    .line 141
    new-instance v0, Lcom/google/android/voicesearch/HelpDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/HelpDialog$1;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    .line 156
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    .line 160
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    .line 161
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/HelpDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/HelpDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/voicesearch/HelpDialog;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->getTitleAction()Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->getSearchAction()Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/HelpDialog;->formatDisplayText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/HelpDialog;->formatActionText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->hideSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/GservicesHelper;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    return-object v0
.end method

.method private formatActionText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09076a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v7, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 450
    array-length v3, v2

    move v4, v7

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    .line 451
    instance-of v5, v0, Landroid/text/Annotation;

    if-eqz v5, :cond_1

    .line 452
    check-cast v0, Landroid/text/Annotation;

    .line 454
    invoke-virtual {v0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 459
    if-eqz p2, :cond_0

    .line 460
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_1
    return-object v0

    .line 463
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 450
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 471
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/HelpDialog;->BOLD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 473
    if-eqz p2, :cond_3

    .line 474
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 477
    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 481
    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method private formatDisplayText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 395
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 405
    const/4 v1, -0x1

    .line 408
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, v10, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 409
    array-length v4, v3

    move v5, v10

    move v6, v10

    move v7, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v1, v3, v5

    .line 410
    instance-of v8, v1, Landroid/text/Annotation;

    if-eqz v8, :cond_3

    .line 411
    move-object v0, v1

    check-cast v0, Landroid/text/Annotation;

    move-object p0, v0

    .line 412
    invoke-virtual {p0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "action"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 413
    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 414
    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 415
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 416
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v1, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 419
    add-int/lit8 v1, v6, 0x1

    if-nez v6, :cond_2

    move v6, v9

    .line 409
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    move v6, v1

    goto :goto_0

    .line 427
    :cond_0
    if-ne v6, v11, :cond_1

    .line 428
    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v3, v7, 0x1

    const-string v4, "\n"

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    :cond_1
    return-object v2

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    move v1, v6

    move v6, v7

    goto :goto_1
.end method

.method private getSearchAction()Lcom/google/android/voicesearch/Hints$HintData;
    .locals 5

    .prologue
    .line 554
    new-instance v0, Lcom/google/android/voicesearch/Hints$HintData;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090782

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090722

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 558
    return-object v0
.end method

.method private getTitleAction()Lcom/google/android/voicesearch/Hints$HintData;
    .locals 5

    .prologue
    .line 543
    new-instance v0, Lcom/google/android/voicesearch/Hints$HintData;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09071f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090769

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 547
    return-object v0
.end method

.method private hideSpinner()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLoadingSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    return-void
.end method

.method private scheduleHintsCreationTask()V
    .locals 2

    .prologue
    .line 621
    new-instance v0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;-><init>(Lcom/google/android/voicesearch/HelpDialog;Lcom/google/android/voicesearch/HelpDialog$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 622
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLoadingSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->setContentView(I)V

    .line 167
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLoadingSpinner:Landroid/view/View;

    .line 168
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    .line 169
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    .line 170
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionArea:Landroid/widget/LinearLayout;

    .line 172
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mSpeakAgainButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mSpeakAgainButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$2;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCancelButton:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$3;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$4;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;

    .line 204
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$5;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$6;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$6;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/Hints;->shouldShowHintsOnSearch(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxText:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    .line 234
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$7;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$7;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 244
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;

    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$8;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$8;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;

    .line 280
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGalleryContainer:Landroid/view/ViewGroup;

    .line 285
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    .line 286
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->scheduleHintsCreationTask()V

    .line 287
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$9;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$9;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$10;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$10;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;

    .line 353
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInLeft:Landroid/view/animation/Animation;

    .line 354
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInRight:Landroid/view/animation/Animation;

    .line 355
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutLeft:Landroid/view/animation/Animation;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutRight:Landroid/view/animation/Animation;

    .line 357
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->showSpinner()V

    .line 358
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/Hints;->shouldShowHintsOnSearch(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mShowCheckBox:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mShowCheckBox:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGalleryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 369
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v2, v3}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 371
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->shouldShowFirstRunMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const/16 v0, 0x2ee0

    .line 381
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    .line 382
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->updateLayout()V

    .line 385
    return-void

    :cond_0
    move v1, v4

    .line 364
    goto :goto_0

    :cond_1
    move v1, v4

    .line 365
    goto :goto_1

    .line 379
    :cond_2
    const/16 v0, 0x1770

    goto :goto_2
.end method

.method public setHelpDialogListener(Lcom/google/android/voicesearch/HelpDialog$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;

    .line 389
    return-void
.end method

.method public setShowCheckBox(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 519
    iput-boolean p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mShowCheckBox:Z

    .line 521
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mShowCheckBox:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCheckBoxText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mShowCheckBox:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 522
    goto :goto_0

    :cond_3
    move v1, v3

    .line 525
    goto :goto_1
.end method

.method public stopAutoScroll()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    .line 437
    return-void
.end method

.method public updateLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 485
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 487
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 490
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 495
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 500
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 501
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    move v1, v5

    .line 503
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasSmallScreen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 506
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 514
    :goto_1
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 501
    goto :goto_0

    .line 510
    :cond_3
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 512
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method
