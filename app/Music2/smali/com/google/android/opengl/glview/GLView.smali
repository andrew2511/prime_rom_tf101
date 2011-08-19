.class public Lcom/google/android/opengl/glview/GLView;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;,
        Lcom/google/android/opengl/glview/GLView$EventTracker;
    }
.end annotation


# static fields
.field public static final ET_HANDLED:I = 0x1

.field public static final ET_QUIT_TRACKER:I = 0x2

.field public static final ET_UNHANDLED:I = 0x0

.field public static final FLAG_CLICKABLE:I = 0x10

.field public static final FLAG_EXPANDIBLEH:I = 0x20

.field public static final FLAG_EXPANDIBLEV:I = 0x40

.field public static final FLAG_HIGHLIGHTABLE:I = 0x2

.field public static final FLAG_HIGHLIGHTED:I = 0x1

.field public static final FLAG_SELECTABLE:I = 0x8

.field public static final FLAG_SELECTED:I = 0x4

.field public static final GESTURE_CANCEL:I = 0x7

.field public static final GESTURE_DOWN:I = 0x0

.field public static final GESTURE_FLING:I = 0x5

.field public static final GESTURE_LONGPRESS:I = 0x3

.field public static final GESTURE_SCALE:I = 0x9

.field public static final GESTURE_SCALE_BEGIN:I = 0x8

.field public static final GESTURE_SCALE_END:I = 0xa

.field public static final GESTURE_SCROLL:I = 0x4

.field public static final GESTURE_SHOWPRESS:I = 0x1

.field public static final GESTURE_SINGLETAPUP:I = 0x2

.field public static final GESTURE_UP:I = 0x6

.field public static final GRAVITY_BOTTOM:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x9

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x1

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x8

.field public static final GRAVITY_HORIZONTAL_MASK:I = 0x7

.field public static final GRAVITY_LEFT:I = 0x0

.field public static final GRAVITY_RIGHT:I = 0x2

.field public static final GRAVITY_TOP:I = 0x0

.field public static final GRAVITY_VERTICAL_MASK:I = 0x38

.field public static final MESSAGE_CLICK:I = 0x0

.field public static final MESSAGE_LONGPRESS:I = 0x2

.field public static final MESSAGE_NEW_VIEW_LAYOUT:I = 0x1

.field public static final MESSAGE_SCROLL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;


# instance fields
.field private mAlpha:F

.field private mFlags:I

.field private mH:F

.field private mId:I

.field private mParent:Lcom/google/android/opengl/glview/GLView;

.field private mW:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 464
    new-instance v0, Lcom/google/android/opengl/glview/GLView$1;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/GLView$1;-><init>()V

    sput-object v0, Lcom/google/android/opengl/glview/GLView;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 71
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    .line 72
    return-void
.end method

.method private final dumpStateImp(Ljava/lang/String;)V
    .locals 5
    .parameter "indent"

    .prologue
    .line 208
    const-string v2, "GLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 211
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/google/android/opengl/glview/GLView;->dumpStateImp(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add a child to a simple view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final centerX()F
    .locals 3

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .locals 3

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 233
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLView;->childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V

    .line 236
    :cond_0
    return-void
.end method

.method public final clearFlags(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    .line 80
    return-void
.end method

.method public contains(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 309
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convertFromParent(Lcom/google/android/opengl/glview/Point;)V
    .locals 0
    .parameter "pt"

    .prologue
    .line 427
    return-void
.end method

.method public convertToParent(Lcom/google/android/opengl/glview/Point;)V
    .locals 0
    .parameter "pt"

    .prologue
    .line 423
    return-void
.end method

.method public createTracker(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 3
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 475
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 476
    .local v1, y:F
    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/GLView;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v2

    .line 479
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final dumpState()V
    .locals 1

    .prologue
    .line 177
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLView;->dumpStateImp(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public final expandable(Z)Z
    .locals 1
    .parameter "horizontal"

    .prologue
    .line 324
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public findViewById(I)Lcom/google/android/opengl/glview/GLView;
    .locals 4
    .parameter "id"

    .prologue
    .line 113
    iget v3, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    if-ne p1, v3, :cond_0

    move-object v3, p0

    .line 123
    :goto_0
    return-object v3

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 117
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 118
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    .line 119
    .local v1, found:Lcom/google/android/opengl/glview/GLView;
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 120
    goto :goto_0

    .line 117
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v1           #found:Lcom/google/android/opengl/glview/GLView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public freeOpenGlResources()V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 385
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 386
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method protected gestureCancel(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 610
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 577
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;

    invoke-direct {v0, p0, p0}, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;-><init>(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected gestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"
    .parameter "e1"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureLongPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScale(Landroid/view/MotionEvent;F)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"
    .parameter "scaleFactor"

    .prologue
    .line 618
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScaleBegin(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 614
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScaleEnd(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 622
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"
    .parameter "e1"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureShowPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 584
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureSingleTapUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha()F
    .locals 3

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 258
    .local v0, alpha:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 259
    .local v2, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->getAlpha()F

    move-result v1

    .line 261
    .local v1, parentAlpha:F
    mul-float/2addr v0, v1

    .line 264
    .end local v1           #parentAlpha:F
    :cond_0
    return v0
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public final getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/google/android/opengl/glview/Point;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/Point;-><init>()V

    .line 406
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->centerX()F

    move-result v1

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->x:F

    .line 407
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->centerY()F

    move-result v1

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->y:F

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->localToGlobal(Lcom/google/android/opengl/glview/Point;)V

    .line 409
    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    return v0
.end method

.method public getMinLength(Z)F
    .locals 1
    .parameter "horizontal"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    goto :goto_0
.end method

.method public getNextListener()Lcom/google/android/opengl/glview/Listener;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method public getParent()Lcom/google/android/opengl/glview/GLView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method public getTransformer()Lcom/google/android/opengl/glview/Transformer;
    .locals 2

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 662
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v1

    .line 665
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final height()F
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    return v0
.end method

.method public highlight(Z)V
    .locals 1
    .parameter "setHighlighted"

    .prologue
    .line 626
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/opengl/glview/GLView;->maskFlagsTree(IZ)V

    .line 627
    return-void
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method protected final internalLayout(ZFF)V
    .locals 0
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iput p2, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    .line 245
    iput p3, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p2, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    .line 248
    iput p3, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    goto :goto_0
.end method

.method protected final internalSetExtent(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 224
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    .line 225
    iput p2, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    .line 226
    return-void
.end method

.method public layout(ZFF)V
    .locals 0
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->internalLayout(ZFF)V

    .line 240
    return-void
.end method

.method protected final layout(ZFFFI)V
    .locals 6
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"
    .parameter "childLength"
    .parameter "gravity"

    .prologue
    .line 335
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    and-int/lit8 v0, p5, 0x7

    packed-switch v0, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p3

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 359
    return-void

    .line 340
    :pswitch_1
    sub-float v0, p3, p4

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 341
    goto :goto_0

    .line 343
    :pswitch_2
    sub-float v0, p3, p4

    add-float/2addr p2, v0

    goto :goto_0

    .line 346
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    and-int/lit8 v0, p5, 0x38

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 351
    :sswitch_1
    float-to-double v0, p2

    sub-float v2, p3, p4

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p2, v0

    .line 352
    goto :goto_0

    .line 354
    :sswitch_2
    sub-float v0, p3, p4

    add-float/2addr p2, v0

    goto :goto_0

    :cond_2
    move v0, p4

    .line 358
    goto :goto_1

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final length(Z)F
    .locals 1
    .parameter "horizontal"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    goto :goto_0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getNextListener()Lcom/google/android/opengl/glview/Listener;

    move-result-object v0

    .line 647
    .local v0, listener:Lcom/google/android/opengl/glview/Listener;
    if-eqz v0, :cond_0

    .line 648
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/Listener;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 650
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final localToGlobal(Lcom/google/android/opengl/glview/Point;)V
    .locals 1
    .parameter "pt"

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->convertToParent(Lcom/google/android/opengl/glview/Point;)V

    .line 415
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 416
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->localToGlobal(Lcom/google/android/opengl/glview/Point;)V

    .line 419
    :cond_0
    return-void
.end method

.method public final maskFlags(IZ)V
    .locals 0
    .parameter "flags"
    .parameter "set"

    .prologue
    .line 83
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    goto :goto_0
.end method

.method public maskFlagsTree(IZ)V
    .locals 3
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 634
    invoke-virtual {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->maskFlags(IZ)V

    .line 635
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 636
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 637
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/opengl/glview/GLView;->maskFlagsTree(IZ)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 4
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, animating:Z
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 370
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 371
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v3

    or-int/2addr v0, v3

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return v0
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 3
    .parameter "glCanvas"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 378
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 379
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method public removeFromParent()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    .line 160
    .local v0, p:Lcom/google/android/opengl/glview/GLView;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    .line 161
    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLView;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 163
    .end local v0           #p:Lcom/google/android/opengl/glview/GLView;
    :cond_0
    return-void
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t remove a child from a simple view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDraw()V
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 392
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->requestDraw()V

    .line 395
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 399
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->requestLayout()V

    .line 402
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 436
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLView;->requestRectangleOnScreen(FFFF)V

    .line 439
    :cond_0
    return-void
.end method

.method public requestScrollTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 446
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FF)V

    .line 449
    :cond_0
    return-void
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 9
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v6

    .line 541
    .local v6, childCount:I
    const/4 v1, 0x1

    sub-int v8, v6, v1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 542
    invoke-virtual {p0, v8}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 543
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->createTracker(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v7

    .line 544
    .local v7, et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz v7, :cond_0

    move-object v1, v7

    .line 573
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    :goto_1
    return-object v1

    .line 541
    .restart local v0       #child:Lcom/google/android/opengl/glview/GLView;
    .restart local v7       #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 549
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 573
    const/4 v1, 0x0

    goto :goto_1

    .line 551
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 553
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureShowPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 555
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureSingleTapUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 557
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureLongPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 559
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/opengl/glview/GLView;->gestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 561
    :pswitch_5
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/opengl/glview/GLView;->gestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 563
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 565
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureCancel(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 567
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureScaleBegin(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 569
    :pswitch_9
    invoke-virtual {p0, p2, p4}, Lcom/google/android/opengl/glview/GLView;->gestureScale(Landroid/view/MotionEvent;F)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 571
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/glview/GLView;->gestureScaleEnd(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v1

    goto :goto_1

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public select(Z)V
    .locals 1
    .parameter "setSelected"

    .prologue
    .line 630
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/opengl/glview/GLView;->maskFlagsTree(IZ)V

    .line 631
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 253
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 254
    return-void
.end method

.method public final setContentRect(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p4}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 221
    return-void
.end method

.method public final setExpandable(ZZ)V
    .locals 1
    .parameter "horizontal"
    .parameter "expandable"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/google/android/opengl/glview/GLView;->maskFlags(IZ)V

    .line 329
    return-void

    .line 328
    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public final setFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    .line 76
    return-void
.end method

.method public setParent(Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    .line 171
    return-void
.end method

.method public final start(Z)F
    .locals 1
    .parameter "horizontal"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    goto :goto_0
.end method

.method public final testAndFlags(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final testOrFlags(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, clazz:Ljava/lang/String;
    const-string v0, "class "

    .line 184
    .local v0, classPrefix:Ljava/lang/String;
    const-string v4, "class "

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const-string v4, "class "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_0
    const-string v2, "com.google.android.opengl.glview."

    .line 188
    .local v2, prefix:Ljava/lang/String;
    const-string v4, "com.google.android.opengl.glview."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    const-string v4, "com.google.android.opengl.glview."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " o: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mZ:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), e: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    const-string v5, " highlighted"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    const-string v5, " highlightable"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    const-string v5, " selected"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    const-string v5, " selectable"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_7

    const-string v5, " clickable"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_8

    const-string v5, " expandableH"

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9

    const-string v5, " expandableV"

    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 191
    :cond_2
    const-string v3, "com.google.android.opengl.albumwall."

    .line 192
    .local v3, prefix2:Ljava/lang/String;
    const-string v4, "com.google.android.opengl.albumwall."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const-string v4, "com.google.android.opengl.albumwall."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 196
    .end local v3           #prefix2:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_1

    :cond_4
    const-string v5, ""

    goto :goto_2

    :cond_5
    const-string v5, ""

    goto :goto_3

    :cond_6
    const-string v5, ""

    goto :goto_4

    :cond_7
    const-string v5, ""

    goto :goto_5

    :cond_8
    const-string v5, ""

    goto :goto_6

    :cond_9
    const-string v5, ""

    goto :goto_7
.end method

.method public visit(ILjava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "visitor"

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 655
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 656
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/opengl/glview/GLView;->visit(ILjava/lang/Object;)V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_0
    return-void
.end method

.method public final width()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    return v0
.end method

.method public final x()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    return v0
.end method

.method public final y()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    return v0
.end method

.method public final z()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mZ:F

    return v0
.end method
