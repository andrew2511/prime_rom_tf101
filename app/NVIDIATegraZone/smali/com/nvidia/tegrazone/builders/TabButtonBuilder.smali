.class public Lcom/nvidia/tegrazone/builders/TabButtonBuilder;
.super Ljava/lang/Object;
.source "TabButtonBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTabs(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 14
    move-object v0, p0

    .line 15
    .local v0, a:Landroid/app/Activity;
    const v3, 0x7f0a0094

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 16
    .local v1, tab1:Landroid/widget/LinearLayout;
    const v3, 0x7f0a0096

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 19
    .local v2, tab2:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 20
    new-instance v3, Lcom/nvidia/tegrazone/builders/TabButtonBuilder$1;

    invoke-direct {v3, v0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_0
    if-eqz v2, :cond_1

    .line 29
    new-instance v3, Lcom/nvidia/tegrazone/builders/TabButtonBuilder$2;

    invoke-direct {v3, v0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_1
    return-void
.end method
