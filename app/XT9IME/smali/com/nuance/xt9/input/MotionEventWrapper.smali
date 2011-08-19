.class public Lcom/nuance/xt9/input/MotionEventWrapper;
.super Ljava/lang/Object;
.source "MotionEventWrapper.java"


# static fields
.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter "me"
    .parameter "pointerId"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public static final getHistoricalX(Landroid/view/MotionEvent;II)F
    .locals 1
    .parameter "me"
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    return v0
.end method

.method public static final getHistoricalY(Landroid/view/MotionEvent;II)F
    .locals 1
    .parameter "me"
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    return v0
.end method

.method public static final getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "me"

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static final getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter "me"
    .parameter "pointerIndex"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static final getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "me"
    .parameter "pointerIndex"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static final getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "me"
    .parameter "pointerIndex"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
