.class Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 555
    iput-object p1, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 557
    iput-object p3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 558
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 550
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 561
    iget-object v5, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 562
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 564
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v5, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v5}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v6}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 568
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 569
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 572
    .local v1, iconView:Landroid/widget/ImageView;
    iget-object v5, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_42

    .line 573
    iget-object v5, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    :cond_42
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-gt v5, v6, :cond_5f

    .line 579
    const v5, 0x1080540

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 580
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 583
    :cond_5f
    return-object v3
.end method
