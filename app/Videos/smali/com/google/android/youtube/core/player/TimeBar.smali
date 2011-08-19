.class public Lcom/google/android/youtube/core/player/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x78000000

.field private static final V_PADDING:I = 0x24


# instance fields
.field private final bgBar:Landroid/graphics/Rect;

.field private final bgPaint:Landroid/graphics/Paint;

.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPercent:I

.field private currentTime:J

.field private final listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

.field private final playedBar:Landroid/graphics/Rect;

.field private final playedPaint:Landroid/graphics/Paint;

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private final scrubber:Landroid/graphics/Bitmap;

.field private scrubberCorrection:I

.field private scrubberLeft:I

.field private final scrubberPadding:I

.field private scrubberTop:I

.field private scrubbing:Z

.field private showBuffered:Z

.field private showScrubber:Z

.field private final timeBounds:Landroid/graphics/Rect;

.field private final timeTextPaint:Landroid/graphics/Paint;

.field private totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/TimeBar$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/TimeBar$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgBar:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressPaint:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x7800

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const v1, -0x313132

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const-string v1, "0:00:00"

    const/4 v2, 0x0

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    .line 94
    return-void
.end method

.method private clampScrubber()V
    .locals 4

    .prologue
    .line 171
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 172
    .local v0, half:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v0

    .line 173
    .local v1, max:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v0

    .line 174
    .local v2, min:I
    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    .line 175
    return-void
.end method

.method private getScrubberTime()J
    .locals 4

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:J

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private inScrubber(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 164
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 165
    .local v1, scrubberRight:I
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 166
    .local v0, scrubberBottom:I
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 10
    .parameter "millis"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    long-to-int v4, p1

    div-int/lit16 v3, v4, 0x3e8

    .line 266
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 267
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 268
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 269
    .local v0, hours:I
    if-lez v0, :cond_0

    .line 270
    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private update()V
    .locals 7

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:J

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 108
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    .line 112
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 201
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 202
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 208
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->showBuffered:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 217
    :cond_1
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 222
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 227
    return-void
.end method

.method public getBarHeight()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public getPreferredHeight()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isScrubbing()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 184
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 185
    sub-int v3, p4, p2

    .line 186
    .local v3, w:I
    sub-int v0, p5, p3

    .line 187
    .local v0, h:I
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->bgBar:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int v1, v4, v5

    .line 190
    .local v1, margin:I
    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 191
    .local v2, progressY:I
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    .line 196
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 197
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 233
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 235
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v2, v6

    .line 261
    :goto_0
    return v2

    .line 237
    :pswitch_0
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    if-eqz v2, :cond_0

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/core/player/TimeBar;->inScrubber(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    .line 239
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberCorrection:I

    .line 240
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/TimeBar$Listener;->onScrubbingStart()V

    move v2, v5

    .line 241
    goto :goto_0

    .line 245
    :pswitch_1
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-eqz v2, :cond_0

    .line 246
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberCorrection:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    .line 247
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->clampScrubber()V

    .line 248
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getScrubberTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:J

    .line 249
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    move v2, v5

    .line 250
    goto :goto_0

    .line 254
    :pswitch_2
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getScrubberTime()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/player/TimeBar$Listener;->onScrubbindEnd(J)V

    .line 256
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    move v2, v5

    .line 257
    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetTime()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/youtube/core/player/TimeBar;->setTime(III)V

    .line 142
    return-void
.end method

.method public setBufferedPercent(I)V
    .locals 0
    .parameter "bufferedPercent"

    .prologue
    .line 145
    iput p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    .line 146
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 147
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 131
    return-void
.end method

.method public setShowBuffered(Z)V
    .locals 0
    .parameter "showBuffered"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->showBuffered:Z

    .line 156
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 157
    return-void
.end method

.method public setShowScrubber(Z)V
    .locals 0
    .parameter "showScrubber"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    .line 151
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 152
    return-void
.end method

.method public setTime(III)V
    .locals 2
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "bufferedPercent"

    .prologue
    .line 134
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:J

    .line 135
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:J

    .line 136
    iput p3, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    .line 137
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 138
    return-void
.end method
