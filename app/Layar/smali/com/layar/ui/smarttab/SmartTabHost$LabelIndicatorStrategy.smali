.class Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;
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
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method private constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p2, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 6

    .prologue
    .line 541
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v3}, Lcom/layar/ui/smarttab/SmartTabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 542
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030052

    .line 543
    iget-object v4, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v4}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v4

    .line 544
    const/4 v5, 0x0

    .line 542
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, tabIndicator:Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 547
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    return-object v1
.end method
