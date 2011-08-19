.class Lcom/android/camera/ui/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private final mComponent:Lcom/android/camera/ui/GLView;

.field private mPreferredHeight:I

.field private mPreferredWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLView;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/MeasureHelper;->mComponent:Lcom/android/camera/ui/GLView;

    .line 30
    return-void
.end method

.method private static getLength(II)I
    .locals 2
    .parameter "measureSpec"
    .parameter "prefered"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 47
    .local v0, specLength:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v1, p1

    .line 50
    :goto_0
    return v1

    :sswitch_0
    move v1, v0

    .line 48
    goto :goto_0

    .line 49
    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public measure(II)V
    .locals 4
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/MeasureHelper;->mComponent:Lcom/android/camera/ui/GLView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 40
    .local v0, p:Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/camera/ui/MeasureHelper;->mPreferredWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/android/camera/ui/MeasureHelper;->getLength(II)I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/MeasureHelper;->mPreferredHeight:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Lcom/android/camera/ui/MeasureHelper;->getLength(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/MeasureHelper;->setMeasuredSize(II)V

    .line 43
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/MeasureHelper;->mComponent:Lcom/android/camera/ui/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/GLView;->setMeasuredSize(II)V

    .line 56
    return-void
.end method

.method public setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/MeasureHelper;->mPreferredWidth:I

    .line 34
    iput p2, p0, Lcom/android/camera/ui/MeasureHelper;->mPreferredHeight:I

    .line 35
    return-object p0
.end method
