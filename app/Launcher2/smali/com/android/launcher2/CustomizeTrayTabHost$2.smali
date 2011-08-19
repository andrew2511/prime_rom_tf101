.class Lcom/android/launcher2/CustomizeTrayTabHost$2;
.super Ljava/lang/Object;
.source "CustomizeTrayTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizeTrayTabHost;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizeTrayTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizeTrayTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 10
    .parameter "tabId"

    .prologue
    .line 103
    iget-object v5, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/CustomizeTrayTabHost;->getCustomizeFilterForTabTag(Ljava/lang/String;)Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    move-result-object v3

    .line 105
    .local v3, newType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;
    iget-object v5, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-static {v5}, Lcom/android/launcher2/CustomizeTrayTabHost;->access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CustomizePagedView;->getCustomizationFilter()Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    move-result-object v5

    if-eq v3, v5, :cond_0

    .line 107
    iget-object v5, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-virtual {v5}, Lcom/android/launcher2/CustomizeTrayTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 108
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 109
    .local v2, duration:I
    iget-object v5, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-static {v5}, Lcom/android/launcher2/CustomizeTrayTabHost;->access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CustomizePagedView;->getAlpha()F

    move-result v0

    .line 110
    .local v0, alpha:F
    iget-object v5, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-static {v5}, Lcom/android/launcher2/CustomizeTrayTabHost;->access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 112
    .local v1, alphaAnim:Landroid/animation/ValueAnimator;
    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    new-instance v5, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;-><init>(Lcom/android/launcher2/CustomizeTrayTabHost$2;Lcom/android/launcher2/CustomizePagedView$CustomizationType;I)V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    .end local v0           #alpha:F
    .end local v1           #alphaAnim:Landroid/animation/ValueAnimator;
    .end local v2           #duration:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
