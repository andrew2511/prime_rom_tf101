.class public Lcom/asus/reader/ui/PageSeekBar2;
.super Landroid/widget/RelativeLayout;
.source "PageSeekBar2.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;,
        Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutWidth:I

.field private mMax:I

.field private mNumberOfPoints:I

.field private mNumberTextView:Landroid/widget/ImageView;

.field private mOnKeyUpInterceptor:Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;

.field private mOnSeekBarChangeListener:Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;

.field private mPageNumberText:Landroid/widget/TextView;

.field private mPortion:F

.field private mProgress:I

.field private mSeekBar:Lcom/asus/reader/ui/MySeekBar;

.field private mThumbView:Landroid/widget/ImageView;

.field private mWidthOfSeekBar:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/reader/ui/PageSeekBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object p1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mContext:Landroid/content/Context;

    .line 61
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 62
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, attr_name:Ljava/lang/String;
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, attr_value:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "The index "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " with value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v6, "PageSeekBar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v6, "layout_width"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const/4 v6, 0x0

    const-string v7, "px"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 74
    .local v5, width:F
    const-string v6, "PageSeekBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The width is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    .line 76
    iget v6, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    const/16 v7, 0x55

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/asus/reader/ui/PageSeekBar2;->mWidthOfSeekBar:I

    .line 61
    .end local v5           #width:F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 79
    .end local v0           #attr_name:Ljava/lang/String;
    .end local v1           #attr_value:Ljava/lang/String;
    .end local v2           #builder:Ljava/lang/StringBuilder;
    :cond_1
    iget v6, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    if-nez v6, :cond_2

    .line 80
    const/16 v6, 0x1f4

    iput v6, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    .line 82
    :cond_2
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 83
    .local v4, inflater:Landroid/view/LayoutInflater;
    sget-boolean v6, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-eqz v6, :cond_3

    instance-of v6, p1, Lcom/asus/reader/book/BookViewActivity;

    if-eqz v6, :cond_3

    .line 84
    const v6, 0x7f030009

    invoke-virtual {v4, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    :goto_1
    invoke-direct {p0}, Lcom/asus/reader/ui/PageSeekBar2;->init()V

    .line 88
    return-void

    .line 86
    :cond_3
    const v6, 0x7f030008

    invoke-virtual {v4, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/asus/reader/ui/PageSeekBar2;)Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnKeyUpInterceptor:Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/16 v3, 0x19

    .line 91
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 93
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/MySeekBar;

    iput-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    .line 94
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1}, Lcom/asus/reader/ui/MySeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mWidthOfSeekBar:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 96
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 97
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1, v0}, Lcom/asus/reader/ui/MySeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1, p0}, Lcom/asus/reader/ui/MySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 99
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1, p0}, Lcom/asus/reader/ui/MySeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mThumbView:Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    .line 104
    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mWidthOfSeekBar:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberOfPoints:I

    .line 105
    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberOfPoints:I

    invoke-direct {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setNumberOfPoint(I)V

    .line 106
    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    if-nez v1, :cond_0

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setMax(I)V

    .line 107
    :cond_0
    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mWidthOfSeekBar:I

    const/16 v2, 0x25

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberOfPoints:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPortion:F

    .line 108
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    iget v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberOfPoints:I

    div-int/lit8 v2, v2, 0x32

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/MySeekBar;->setKeyProgressIncrement(I)V

    .line 109
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    new-instance v2, Lcom/asus/reader/ui/PageSeekBar2$1;

    invoke-direct {v2, p0}, Lcom/asus/reader/ui/PageSeekBar2$1;-><init>(Lcom/asus/reader/ui/PageSeekBar2;)V

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/MySeekBar;->setInterceptKeyListener(Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;)V

    .line 116
    return-void
.end method

.method private setNumberOfPoint(I)V
    .locals 5
    .parameter "points"

    .prologue
    .line 206
    const/4 v2, 0x1

    sub-int v2, p1, v2

    int-to-float v0, v2

    .line 207
    .local v0, newMax:F
    iget-object v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v2}, Lcom/asus/reader/ui/MySeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v3}, Lcom/asus/reader/ui/MySeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 209
    .local v1, newProgress:I
    const-string v2, "PageSeekBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The new points="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pre-points="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v4}, Lcom/asus/reader/ui/MySeekBar;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "PageSeekBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v4}, Lcom/asus/reader/ui/MySeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",new progrss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/MySeekBar;->setMax(I)V

    .line 213
    iget-object v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v2, v1}, Lcom/asus/reader/ui/MySeekBar;->setProgress(I)V

    .line 214
    return-void
.end method


# virtual methods
.method public changeDayNightMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->removeAllViews()V

    .line 278
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 279
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget-boolean v1, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-eqz v1, :cond_0

    .line 280
    const v1, 0x7f030009

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 283
    :goto_0
    invoke-direct {p0}, Lcom/asus/reader/ui/PageSeekBar2;->init()V

    .line 284
    return-void

    .line 282
    :cond_0
    const v1, 0x7f030008

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v0}, Lcom/asus/reader/ui/MySeekBar;->getKeyProgressIncrement()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1}, Lcom/asus/reader/ui/MySeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/16 v6, 0x500

    const/16 v5, 0x55

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, refresh:Z
    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->getWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    if-eq v3, v4, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    .line 150
    iget v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mWidthOfSeekBar:I

    .line 151
    invoke-direct {p0}, Lcom/asus/reader/ui/PageSeekBar2;->init()V

    .line 152
    const/4 v2, 0x1

    .line 164
    :cond_0
    :goto_0
    int-to-float v3, p2

    iget v4, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPortion:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 173
    .local v0, modified_progress:I
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 174
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 175
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    mul-int/2addr v3, p2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    .line 178
    iget v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x4011333333333333L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 185
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnSeekBarChangeListener:Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnSeekBarChangeListener:Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;

    iget v4, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    invoke-interface {v3, v4, p3}, Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;->onProgressChanged(IZ)V

    .line 190
    .end local v0           #modified_progress:I
    :cond_2
    return-void

    .line 153
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->getWidth()I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/asus/reader/pdf/PDFActivity;

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/asus/reader/ui/PageSeekBar2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 158
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 159
    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mLayoutWidth:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mWidthOfSeekBar:I

    .line 161
    invoke-direct {p0}, Lcom/asus/reader/ui/PageSeekBar2;->init()V

    .line 162
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    const/4 v1, 0x4

    .line 129
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberTextView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mPageNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnSeekBarChangeListener:Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnSeekBarChangeListener:Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;

    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    invoke-interface {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;->onStopTrackingTouch(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public registerOnSeekBarChangeListener()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v0, p0}, Lcom/asus/reader/ui/MySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 261
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/MySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/MySeekBar;->setEnabled(Z)V

    .line 263
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 3
    .parameter "increment"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1}, Lcom/asus/reader/ui/MySeekBar;->getMax()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/MySeekBar;->setKeyProgressIncrement(I)V

    .line 121
    return-void
.end method

.method public setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 220
    iput p1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    .line 221
    iget-object v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v1}, Lcom/asus/reader/ui/MySeekBar;->getProgress()I

    move-result v0

    .line 222
    .local v0, progress:I
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x1

    iput v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v2}, Lcom/asus/reader/ui/MySeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    goto :goto_0
.end method

.method public setOnKeyUpInterceptor(Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnKeyUpInterceptor:Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;

    .line 274
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mOnSeekBarChangeListener:Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;

    .line 270
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 240
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    if-le p1, v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iput p1, p0, Lcom/asus/reader/ui/PageSeekBar2;->mProgress:I

    .line 244
    iget v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mMax:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/reader/ui/PageSeekBar2;->mNumberOfPoints:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 245
    .local v0, interval:F
    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 246
    .local v1, mapProgress:I
    iget-object v2, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    invoke-virtual {v2, v1}, Lcom/asus/reader/ui/MySeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public unregisterOnSeekBarChangeListener()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/MySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    new-instance v1, Lcom/asus/reader/ui/PageSeekBar2$2;

    invoke-direct {v1, p0}, Lcom/asus/reader/ui/PageSeekBar2$2;-><init>(Lcom/asus/reader/ui/PageSeekBar2;)V

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/MySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v0, p0, Lcom/asus/reader/ui/PageSeekBar2;->mSeekBar:Lcom/asus/reader/ui/MySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/MySeekBar;->setEnabled(Z)V

    .line 257
    return-void
.end method
