.class Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "CanvasConversationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/CanvasConversationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowBuilder"
.end annotation


# static fields
.field private static sBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final mCount:I

.field private final mDragDesc:Ljava/lang/String;

.field private mDragDescX:I

.field private mDragDescY:I

.field private final mTouchX:I

.field private final mTouchY:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 2
    .parameter "view"
    .parameter "count"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1501
    iput-object p1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    .line 1502
    iput p2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mCount:I

    .line 1503
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-static {v0, v1, p2}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    .line 1508
    iput p3, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchX:I

    .line 1509
    iput p4, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchY:I

    .line 1510
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 1524
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 1527
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1535
    :goto_0
    return-void

    .line 1530
    :cond_0
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1531
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1532
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1400()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1200()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1533
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescY:I

    int-to-float v2, v2

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1400()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 1514
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1515
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1516
    .local v0, height:I
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1000()I

    move-result v2

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1100()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescX:I

    .line 1517
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1200()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$500(II)I

    move-result v2

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$1300()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescY:I

    .line 1518
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 1519
    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchX:I

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchY:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1520
    return-void
.end method
