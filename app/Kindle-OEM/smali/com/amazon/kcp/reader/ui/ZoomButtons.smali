.class public Lcom/amazon/kcp/reader/ui/ZoomButtons;
.super Landroid/widget/LinearLayout;
.source "ZoomButtons.java"


# instance fields
.field private zoomInButton:Landroid/widget/ImageButton;

.field private zoomOutButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getZoomInButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ZoomButtons;->zoomInButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getZoomOutButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ZoomButtons;->zoomOutButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 37
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ZoomButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ZoomButtons;->zoomInButton:Landroid/widget/ImageButton;

    .line 38
    const v0, 0x7f0c00dc

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ZoomButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ZoomButtons;->zoomOutButton:Landroid/widget/ImageButton;

    .line 39
    return-void
.end method
