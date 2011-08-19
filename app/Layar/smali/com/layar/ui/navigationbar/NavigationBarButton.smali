.class public Lcom/layar/ui/navigationbar/NavigationBarButton;
.super Landroid/widget/LinearLayout;
.source "NavigationBarButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "resImage"
    .parameter "resString"

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x4000

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0, v3}, Lcom/layar/ui/navigationbar/NavigationBarButton;->setOrientation(I)V

    .line 24
    invoke-virtual {p0, v3}, Lcom/layar/ui/navigationbar/NavigationBarButton;->setFocusable(Z)V

    .line 26
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 30
    const/4 v2, 0x7

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 31
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 32
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 34
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 35
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 37
    const/high16 v2, 0x4140

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 38
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBarButton;->addView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/layar/ui/navigationbar/NavigationBarButton;->addView(Landroid/view/View;)V

    .line 43
    const v2, 0x7f0200d3

    invoke-virtual {p0, v2}, Lcom/layar/ui/navigationbar/NavigationBarButton;->setBackgroundResource(I)V

    .line 45
    sget v2, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    sget v3, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {p0, v4, v2, v4, v3}, Lcom/layar/ui/navigationbar/NavigationBarButton;->setPadding(IIII)V

    .line 46
    return-void
.end method
