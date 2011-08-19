.class public Lcom/layar/ui/MessageArea;
.super Landroid/widget/RelativeLayout;
.source "MessageArea.java"


# instance fields
.field private viewEditBox:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v1, p0, Lcom/layar/ui/MessageArea;->viewEditBox:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/layar/ui/MessageArea;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/layar/ui/MessageArea;->viewEditBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 47
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 32
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/layar/ui/MessageArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/MessageArea;->viewEditBox:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/layar/ui/MessageArea;->viewEditBox:Landroid/view/View;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "messageText widget missed"

    const-string v2, "EditText"

    const-string v3, "R.id.messageText"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 36
    return-void
.end method
