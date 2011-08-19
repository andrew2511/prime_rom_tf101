.class Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;
.super Ljava/lang/Object;
.source "DefinitionContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/DefinitionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickFeedbackTouchListener"
.end annotation


# instance fields
.field private final textColor:I

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;I)V
    .locals 0
    .parameter
    .parameter "textColor"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput p2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;->textColor:I

    .line 686
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 691
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 693
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 695
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 698
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    iget v4, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;->textColor:I

    invoke-direct {v1, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 699
    .local v1, drawable:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 700
    .local v2, paint:Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 701
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 702
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    .end local v1           #drawable:Landroid/graphics/drawable/PaintDrawable;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 704
    .restart local v3       #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 707
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    iget v4, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;->textColor:I

    and-int/lit16 v4, v4, -0xab

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
