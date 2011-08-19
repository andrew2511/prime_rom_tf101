.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private mActivePointerId:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mHeaderBottom:I

.field private final mHoverCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "c"

    .prologue
    const/16 v7, 0xc0

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mHoverCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 95
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 97
    iput-boolean v6, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 168
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 101
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 103
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 109
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 115
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 124
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0x60

    invoke-virtual {v1, v5, v4, v2, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 126
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 130
    .local v0, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iput v4, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 133
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 135
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceCapabilities()V

    .line 136
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "major"
    .parameter "minor"
    .parameter "angle"
    .parameter "paint"

    .prologue
    const/high16 v4, 0x4000

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 172
    const/high16 v0, 0x4334

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    return-void
.end method

.method private logInputDeviceCapabilities()V
    .registers 6

    .prologue
    .line 139
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 140
    .local v1, deviceIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_1c

    .line 141
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 142
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_19

    .line 143
    const-string v3, "Pointer"

    invoke-virtual {v0}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 146
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1c
    return-void
.end method

.method private logPointerCoords(IILandroid/view/MotionEvent$PointerCoords;I)V
    .registers 13
    .parameter "action"
    .parameter "index"
    .parameter "coords"
    .parameter "id"

    .prologue
    const v2, 0xff00

    const/4 v7, 0x1

    const/4 v4, 0x3

    .line 325
    and-int/lit16 v1, p1, 0xff

    packed-switch v1, :pswitch_data_10a

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, prefix:Ljava/lang/String;
    :goto_e
    const-string v1, "Pointer"

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, "Pointer "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, ") Pressure="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " Size="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " TouchMajor="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " TouchMinor="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " ToolMajor="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " ToolMinor="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " Orientation="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v4, 0x4334

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, "deg"

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " VScroll="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v3, " HScroll="

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 327
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_d1
    const-string v0, "DOWN"

    .line 328
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 330
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_d5
    const-string v0, "UP"

    .line 331
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 333
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_d9
    const-string v0, "MOVE"

    .line 334
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 336
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_dd
    const-string v0, "CANCEL"

    .line 337
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 339
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_e1
    const-string v0, "OUTSIDE"

    .line 340
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 342
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_e5
    and-int v1, p1, v2

    shr-int/lit8 v1, v1, 0x8

    if-ne p2, v1, :cond_ef

    .line 344
    const-string v0, "DOWN"

    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 346
    .end local v0           #prefix:Ljava/lang/String;
    :cond_ef
    const-string v0, "MOVE"

    .line 348
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 350
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_f3
    and-int v1, p1, v2

    shr-int/lit8 v1, v1, 0x8

    if-ne p2, v1, :cond_fd

    .line 352
    const-string v0, "UP"

    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 354
    .end local v0           #prefix:Ljava/lang/String;
    :cond_fd
    const-string v0, "MOVE"

    .line 356
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 358
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_101
    const-string v0, "HOVER MOVE"

    .line 359
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 361
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_105
    const-string v0, "SCROLL"

    .line 362
    .restart local v0       #prefix:Ljava/lang/String;
    goto/16 :goto_e

    .line 325
    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_d5
        :pswitch_d9
        :pswitch_dd
        :pswitch_e1
        :pswitch_e5
        :pswitch_f3
        :pswitch_101
        :pswitch_105
    .end packed-switch
.end method

.method private static shouldLogKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x1

    .line 556
    packed-switch p0, :pswitch_data_16

    .line 564
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_10
    move v0, v1

    :goto_11
    return v0

    :pswitch_12
    move v0, v1

    .line 562
    goto :goto_11

    .line 564
    :cond_14
    const/4 v0, 0x0

    goto :goto_11

    .line 556
    :pswitch_data_16
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .registers 16
    .parameter "event"

    .prologue
    .line 387
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    monitor-enter v11

    .line 388
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 393
    .local v3, action:I
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 403
    .local v2, NP:I
    if-eqz v3, :cond_14

    and-int/lit16 v12, v3, 0xff

    const/4 v13, 0x5

    if-ne v12, v13, :cond_84

    .line 405
    :cond_14
    const v12, 0xff00

    and-int/2addr v12, v3

    shr-int/lit8 v8, v12, 0x8

    .line 407
    .local v8, index:I
    if-nez v3, :cond_3f

    .line 408
    const/4 v9, 0x0

    .local v9, p:I
    :goto_1d
    if-ge v9, v2, :cond_31

    .line 409
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 410
    .local v10, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 411
    const/4 v12, 0x0

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v10, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 408
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 413
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_31
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 414
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 415
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 416
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    .line 419
    .end local v9           #p:I
    :cond_3f
    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 420
    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v13, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v12, v13, :cond_4f

    .line 421
    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 424
    :cond_4f
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 425
    .local v7, id:I
    :goto_53
    if-gt v2, v7, :cond_62

    .line 426
    new-instance v10, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 427
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v2, v2, 0x1

    .line 429
    goto :goto_53

    .line 431
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_62
    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v12, :cond_76

    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v13, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 433
    :cond_76
    iput v7, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 436
    :cond_78
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 437
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v12, 0x1

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v10, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 440
    .end local v7           #id:I
    .end local v8           #index:I
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 442
    .local v1, NI:I
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 443
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 446
    .local v0, N:I
    const/4 v5, 0x0

    .end local v2           #NP:I
    .local v5, historyPos:I
    :goto_98
    if-ge v5, v0, :cond_d5

    .line 447
    const/4 v6, 0x0

    .local v6, i:I
    :goto_9b
    if-ge v6, v1, :cond_d2

    .line 448
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 449
    .restart local v7       #id:I
    iget-boolean v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v12, :cond_cb

    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v10, v2

    .line 450
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_ae
    if-eqz v10, :cond_ce

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    move-object v4, v12

    .line 451
    .local v4, coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_b5
    invoke-virtual {p1, v6, v5, v4}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 452
    iget-boolean v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v12, :cond_bf

    .line 453
    invoke-direct {p0, v3, v6, v4, v7}, Lcom/android/internal/widget/PointerLocationView;->logPointerCoords(IILandroid/view/MotionEvent$PointerCoords;I)V

    .line 455
    :cond_bf
    if-eqz v10, :cond_c8

    .line 456
    iget v12, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v13, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    .line 447
    :cond_c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    .line 449
    .end local v4           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_cb
    const/4 v12, 0x0

    move-object v10, v12

    goto :goto_ae

    .line 450
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_ce
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mHoverCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v4, v12

    goto :goto_b5

    .line 446
    .end local v7           #id:I
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 460
    .end local v6           #i:I
    :cond_d5
    const/4 v6, 0x0

    .end local v0           #N:I
    .restart local v6       #i:I
    :goto_d6
    if-ge v6, v1, :cond_11f

    .line 461
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 462
    .restart local v7       #id:I
    iget-boolean v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v12, :cond_118

    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v10, v0

    .line 463
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_e9
    if-eqz v10, :cond_11b

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    move-object v4, v12

    .line 464
    .restart local v4       #coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_f0
    invoke-virtual {p1, v6, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 465
    iget-boolean v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v12, :cond_fa

    .line 466
    invoke-direct {p0, v3, v6, v4, v7}, Lcom/android/internal/widget/PointerLocationView;->logPointerCoords(IILandroid/view/MotionEvent$PointerCoords;I)V

    .line 468
    :cond_fa
    if-eqz v10, :cond_115

    .line 469
    iget v12, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v13, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    .line 470
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static {v10, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 471
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v12

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static {v10, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 460
    :cond_115
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 462
    .end local v4           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_118
    const/4 v12, 0x0

    move-object v10, v12

    goto :goto_e9

    .line 463
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11b
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mHoverCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v4, v12

    goto :goto_f0

    .line 475
    .end local v7           #id:I
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11f
    const/4 v12, 0x1

    if-eq v3, v12, :cond_12a

    const/4 v12, 0x3

    if-eq v3, v12, :cond_12a

    and-int/lit16 v12, v3, 0xff

    const/4 v13, 0x6

    if-ne v12, v13, :cond_14c

    .line 478
    :cond_12a
    const v12, 0xff00

    and-int/2addr v12, v3

    shr-int/lit8 v8, v12, 0x8

    .line 481
    .restart local v8       #index:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 482
    .restart local v7       #id:I
    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 483
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v12, 0x0

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v10, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 485
    const/4 v12, 0x1

    if-eq v3, v12, :cond_146

    const/4 v12, 0x3

    if-ne v3, v12, :cond_151

    .line 487
    :cond_146
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 488
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 503
    .end local v7           #id:I
    .end local v8           #index:I
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_14c
    :goto_14c
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->postInvalidate()V

    .line 504
    monitor-exit v11

    .line 505
    return-void

    .line 490
    .restart local v7       #id:I
    .restart local v8       #index:I
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_151
    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 491
    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v12, v7, :cond_164

    .line 492
    if-nez v8, :cond_16f

    const/4 v12, 0x1

    :goto_15e
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 494
    :cond_164
    const/high16 v12, 0x7fc0

    const/high16 v13, 0x7fc0

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    goto :goto_14c

    .line 504
    .end local v1           #NI:I
    .end local v3           #action:I
    .end local v5           #historyPos:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v8           #index:I
    .end local v10           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :catchall_16c
    move-exception v12

    monitor-exit v11
    :try_end_16e
    .catchall {:try_start_3 .. :try_end_16e} :catchall_16c

    throw v12

    .line 492
    .restart local v1       #NI:I
    .restart local v3       #action:I
    .restart local v5       #historyPos:I
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v8       #index:I
    .restart local v10       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_16f
    const/4 v12, 0x0

    goto :goto_15e
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 39
    .parameter "canvas"

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 184
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v33

    .line 185
    .local v33, w:I
    div-int/lit8 v27, v33, 0x7

    .line 186
    .local v27, itemW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v5, v5

    add-int/lit8 v20, v5, 0x1

    .line 187
    .local v20, base:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    move/from16 v21, v0

    .line 189
    .local v21, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 192
    .local v19, NP:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    move v5, v0

    if-ltz v5, :cond_2af

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 195
    .local v32, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    sub-int v5, v27, v5

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "P: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f80

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 202
    .local v18, N:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_a1

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-nez v5, :cond_a3

    :cond_a1
    if-nez v18, :cond_2fe

    .line 203
    :cond_a3
    move/from16 v0, v27

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x2

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "X: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v27, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 207
    mul-int/lit8 v5, v27, 0x2

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x3

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Y: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 228
    :goto_13a
    mul-int/lit8 v5, v27, 0x3

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x4

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Xv: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x3

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    mul-int/lit8 v5, v27, 0x4

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Yv: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x4

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    mul-int/lit8 v5, v27, 0x5

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x6

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    mul-int/lit8 v5, v27, 0x5

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x5

    int-to-float v5, v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x3f80

    sub-float v8, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Prs: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x5

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    mul-int/lit8 v5, v27, 0x6

    int-to-float v6, v5

    const/4 v7, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    mul-int/lit8 v5, v27, 0x6

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x6

    int-to-float v5, v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->size:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x3f80

    sub-float v8, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Size: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    .end local v18           #N:I
    .end local v32           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2af
    const/16 v30, 0x0

    .local v30, p:I
    :goto_2b1
    move/from16 v0, v30

    move/from16 v1, v19

    if-ge v0, v1, :cond_5c8

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 258
    .restart local v32       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 259
    .restart local v18       #N:I
    const/4 v6, 0x0

    .local v6, lastX:F
    const/4 v7, 0x0

    .line 260
    .local v7, lastY:F
    const/16 v25, 0x0

    .line 261
    .local v25, haveLast:Z
    const/16 v22, 0x0

    .line 262
    .local v22, drawn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0x80

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 263
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2e1
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_410

    .line 264
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    aget v8, v5, v26

    .line 265
    .local v8, x:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    aget v9, v5, v26

    .line 266
    .local v9, y:F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3ef

    .line 267
    const/16 v25, 0x0

    .line 263
    :goto_2fb
    add-int/lit8 v26, v26, 0x1

    goto :goto_2e1

    .line 212
    .end local v6           #lastX:F
    .end local v7           #lastY:F
    .end local v8           #x:F
    .end local v9           #y:F
    .end local v22           #drawn:Z
    .end local v25           #haveLast:Z
    .end local v26           #i:I
    .end local v30           #p:I
    :cond_2fe
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v18, v6

    aget v5, v5, v6

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float v23, v5, v6

    .line 213
    .local v23, dx:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v18, v6

    aget v5, v5, v6

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float v24, v5, v6

    .line 214
    .local v24, dy:F
    move/from16 v0, v27

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x2

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    :goto_348
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "dX: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v5

    move/from16 v1, v23

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v27, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    mul-int/lit8 v5, v27, 0x2

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x3

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    :goto_3a3
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "dY: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v5

    move/from16 v1, v24

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_13a

    .line 320
    .end local v18           #N:I
    .end local v19           #NP:I
    .end local v20           #base:I
    .end local v21           #bottom:I
    .end local v23           #dx:F
    .end local v24           #dy:F
    .end local v27           #itemW:I
    .end local v32           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v33           #w:I
    :catchall_3dd
    move-exception v5

    monitor-exit v36
    :try_end_3df
    .catchall {:try_start_7 .. :try_end_3df} :catchall_3dd

    throw v5

    .line 214
    .restart local v18       #N:I
    .restart local v19       #NP:I
    .restart local v20       #base:I
    .restart local v21       #bottom:I
    .restart local v23       #dx:F
    .restart local v24       #dy:F
    .restart local v27       #itemW:I
    .restart local v32       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v33       #w:I
    :cond_3e0
    :try_start_3e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto/16 :goto_348

    .line 220
    :cond_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto :goto_3a3

    .line 270
    .end local v23           #dx:F
    .end local v24           #dy:F
    .restart local v6       #lastX:F
    .restart local v7       #lastY:F
    .restart local v8       #x:F
    .restart local v9       #y:F
    .restart local v22       #drawn:Z
    .restart local v25       #haveLast:Z
    .restart local v26       #i:I
    .restart local v30       #p:I
    :cond_3ef
    if-eqz v25, :cond_40a

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 273
    const/16 v22, 0x1

    .line 275
    :cond_40a
    move v6, v8

    .line 276
    move v7, v9

    .line 277
    const/16 v25, 0x1

    goto/16 :goto_2fb

    .line 281
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_410
    if-eqz v22, :cond_442

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0x40

    const/16 v11, 0x80

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 283
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v34, v5, v8

    .line 284
    .local v34, xVel:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v35, v5, v8

    .line 285
    .local v35, yVel:F
    add-float v13, v6, v34

    add-float v14, v7, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    .end local v34           #xVel:F
    .end local v35           #yVel:F
    :cond_442
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_5c4

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-eqz v5, :cond_5c4

    .line 290
    const/4 v11, 0x0

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v12, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v5

    int-to-float v13, v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v14, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v11, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v12, 0x0

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v13, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v5

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 294
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v31, v0

    .line 295
    .local v31, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    .end local v6           #lastX:F
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    sub-int v8, v8, v31

    move-object v0, v5

    move v1, v6

    move/from16 v2, v31

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 296
    .end local v7           #lastY:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0xff

    sub-int v7, v7, v31

    const/16 v8, 0x80

    move-object v0, v5

    move v1, v6

    move/from16 v2, v31

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 300
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v12, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v13, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v14, v5, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v15, v5, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0xff

    sub-int v8, v8, v31

    move-object v0, v5

    move v1, v6

    move/from16 v2, v31

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 305
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v12, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v13, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v14, v5, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v15, v5, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v31

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 310
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    neg-float v5, v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    float-to-double v12, v5

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe6666666666666L

    mul-double/2addr v10, v12

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v28, v0

    .line 312
    .local v28, orientationVectorX:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    neg-float v5, v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    float-to-double v12, v5

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe6666666666666L

    mul-double/2addr v10, v12

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v29, v0

    .line 314
    .local v29, orientationVectorY:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v11, v5, v28

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v12, v5, v29

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v5, v28

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v5, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    .end local v28           #orientationVectorX:F
    .end local v29           #orientationVectorY:F
    .end local v31           #pressureLevel:I
    :cond_5c4
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2b1

    .line 320
    .end local v18           #N:I
    .end local v22           #drawn:Z
    .end local v25           #haveLast:Z
    .end local v26           #i:I
    .end local v32           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_5c8
    monitor-exit v36
    :try_end_5c9
    .catchall {:try_start_3e0 .. :try_end_5c9} :catchall_3dd

    .line 321
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 520
    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_d

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 529
    :goto_b
    const/4 v1, 0x1

    return v1

    .line 522
    :cond_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2a

    .line 523
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Joystick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 524
    :cond_2a
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_47

    .line 525
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 527
    :cond_47
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 534
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 535
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 536
    .local v0, repeatCount:I
    if-nez v0, :cond_26

    .line 537
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_24
    const/4 v1, 0x1

    .line 543
    .end local v0           #repeatCount:I
    :goto_25
    return v1

    .line 539
    .restart local v0       #repeatCount:I
    :cond_26
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 543
    .end local v0           #repeatCount:I
    :cond_49
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_25
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 548
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 549
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x1

    .line 552
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 164
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_12

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 514
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 571
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trackball: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 150
    return-void
.end method
