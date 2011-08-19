.class public Lcom/android/camera/ui/ZoomPicker;
.super Landroid/widget/LinearLayout;
.source "ZoomPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDecrement:Z

.field private mDecrementButton:Landroid/widget/Button;

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Landroid/widget/Button;

.field private mListener:Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSmoothZoomSupported:Z

.field private mZoomIndex:I

.field private mZoomMax:I

.field private mZoomRatios:[F

.field private mZoomText:Ljava/lang/String;

.field private mZoomTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v0, "ZoomPicker"

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mBuilder:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mFormatter:Ljava/util/Formatter;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mFormatterArgs:[Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/android/camera/ui/ZoomPicker$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ZoomPicker$1;-><init>(Lcom/android/camera/ui/ZoomPicker;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mRunnable:Ljava/lang/Runnable;

    .line 85
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomText:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ZoomPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/ZoomPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomPicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mIncrementButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/ZoomPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ZoomPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomPicker;->mSmoothZoomSupported:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ZoomPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ZoomPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomMax:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mListener:Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ZoomPicker;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomPicker;->changeZoomIndex(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ZoomPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ZoomPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/ZoomPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ZoomPicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mDecrementButton:Landroid/widget/Button;

    return-object v0
.end method

.method private changeZoomIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 171
    iget v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomMax:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 172
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomIndex:I

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mListener:Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mListener:Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    iget v1, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomIndex:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomPicker;->updateView()V

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private formatZoomRatio(F)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mFormatterArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%2.1fx"

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPicker;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPicker;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomTextView:Landroid/widget/TextView;

    .line 184
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomIndex:I

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomRatios:[F

    iget v4, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomIndex:I

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ZoomPicker;->formatZoomRatio(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomPicker;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v3, Lcom/android/camera/ui/ZoomPicker$2;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/ZoomPicker$2;-><init>(Lcom/android/camera/ui/ZoomPicker;)V

    .line 115
    .local v3, incrementTouchListener:Landroid/view/View$OnTouchListener;
    new-instance v1, Lcom/android/camera/ui/ZoomPicker$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ZoomPicker$3;-><init>(Lcom/android/camera/ui/ZoomPicker;)V

    .line 137
    .local v1, decrementTouchListener:Landroid/view/View$OnTouchListener;
    const v4, 0x7f0a001a

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ZoomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/ui/ZoomPicker;->mIncrementButton:Landroid/widget/Button;

    .line 138
    .local v2, incrementButton:Landroid/widget/Button;
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    const v4, 0x7f0a0018

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ZoomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mDecrementButton:Landroid/widget/Button;

    .line 140
    .local v0, decrementButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mIncrementButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker;->mDecrementButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/ui/ZoomPicker;->mListener:Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    .line 145
    return-void
.end method

.method public setSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoomSupported"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomPicker;->mSmoothZoomSupported:Z

    .line 168
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 159
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomIndex:I

    .line 163
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomPicker;->updateView()V

    .line 164
    return-void
.end method

.method public setZoomRatios([F)V
    .locals 2
    .parameter "zoomRatios"

    .prologue
    .line 153
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomMax:I

    .line 154
    iput-object p1, p0, Lcom/android/camera/ui/ZoomPicker;->mZoomRatios:[F

    .line 155
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomPicker;->updateView()V

    .line 156
    return-void
.end method
