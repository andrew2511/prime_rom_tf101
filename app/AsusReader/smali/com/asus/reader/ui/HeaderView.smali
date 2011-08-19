.class public Lcom/asus/reader/ui/HeaderView;
.super Landroid/widget/RelativeLayout;
.source "HeaderView.java"


# instance fields
.field public mClearButton:Landroid/widget/Button;

.field public mHeaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
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


# virtual methods
.method public clickButton()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/asus/reader/ui/HeaderView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/asus/reader/ui/HeaderView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 37
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/HeaderView;->mClearButton:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/HeaderView;->mHeaderText:Landroid/widget/TextView;

    .line 31
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/HeaderView;->setTag(Ljava/lang/Object;)V

    .line 32
    return-void
.end method
