.class Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;
.super Ljava/lang/Object;
.source "SmartTabHost.java"

# interfaces
.implements Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/smarttab/SmartTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method private constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p2, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 562
    iput-object p3, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    invoke-direct {p0, p1, p2, p3}, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 8

    .prologue
    .line 566
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v5}, Lcom/layar/ui/smarttab/SmartTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 568
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v5}, Lcom/layar/ui/smarttab/SmartTabHost;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 569
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030052

    .line 570
    iget-object v6, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v6}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v6

    .line 571
    const/4 v7, 0x0

    .line 569
    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 573
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 574
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    const v5, 0x7f020136

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 577
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 579
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 580
    .local v1, iconView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    return-object v3
.end method
