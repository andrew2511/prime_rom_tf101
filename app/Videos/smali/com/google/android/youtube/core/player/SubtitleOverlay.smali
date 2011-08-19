.class public Lcom/google/android/youtube/core/player/SubtitleOverlay;
.super Landroid/widget/FrameLayout;
.source "SubtitleOverlay.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEFAULT_FONT_SIZE_LEVEL:I = 0x2

.field private static final DEFAULT_FONT_SIZE_RATIO:F = 0.028125f

.field private static final FONT_SIZE_STEP:F = 1.4f

.field private static final MARGIN:I = 0x20

.field private static final PADDING:I = 0x4


# instance fields
.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private subtitle:Lcom/google/android/youtube/core/model/Subtitle;

.field private textSize:F

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 2
    .parameter "context"
    .parameter "player"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, "player cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    .line 51
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->createTextView(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method private createTextView(ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 4
    .parameter "visibility"
    .parameter "text"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x4

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    const/high16 v1, -0x7800

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getSubtitle()Lcom/google/android/youtube/core/model/Subtitle;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v4

    .line 117
    :goto_0
    return v1

    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/model/Subtitle;->getTextAt(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v3

    .line 105
    goto :goto_0

    .line 108
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v3

    .line 109
    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v3

    .line 115
    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public install()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    const/16 v1, 0x20

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v0, v1

    .line 73
    .local v0, zoom:F
    iget v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textSize:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->removeView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->createTextView(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textSize:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->measureChild(Landroid/view/View;II)V

    .line 81
    return-void
.end method

.method public setFontSizeLevel(I)V
    .locals 5
    .parameter "level"

    .prologue
    .line 126
    const v0, 0x3ce66666

    const-wide v1, 0x3ff6666660000000L

    const/4 v3, 0x2

    sub-int v3, p1, v3

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->textSize:F

    .line 128
    return-void
.end method

.method public setSubtitle(Lcom/google/android/youtube/core/model/Subtitle;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleOverlay;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    .line 132
    return-void
.end method
