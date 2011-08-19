.class Lcom/google/android/gm/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lcom/google/android/gm/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f0e0065

    invoke-virtual {p0}, Lcom/google/android/gm/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/NumberPickerButton;->mNumberPicker:Lcom/google/android/gm/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/gm/NumberPicker;->cancelIncrement()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const v0, 0x7f0e0067

    invoke-virtual {p0}, Lcom/google/android/gm/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/NumberPickerButton;->mNumberPicker:Lcom/google/android/gm/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/gm/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/NumberPickerButton;->cancelLongpress()V

    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 66
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/NumberPickerButton;->cancelLongpress()V

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gm/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gm/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lcom/google/android/gm/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gm/NumberPickerButton;->mNumberPicker:Lcom/google/android/gm/NumberPicker;

    .line 50
    return-void
.end method
