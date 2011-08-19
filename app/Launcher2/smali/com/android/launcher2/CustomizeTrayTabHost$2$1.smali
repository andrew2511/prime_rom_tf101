.class Lcom/android/launcher2/CustomizeTrayTabHost$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizeTrayTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizeTrayTabHost$2;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CustomizeTrayTabHost$2;

.field final synthetic val$duration:I

.field final synthetic val$newType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizeTrayTabHost$2;Lcom/android/launcher2/CustomizePagedView$CustomizationType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->this$1:Lcom/android/launcher2/CustomizeTrayTabHost$2;

    iput-object p2, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->val$newType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    iput p3, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->val$duration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->this$1:Lcom/android/launcher2/CustomizeTrayTabHost$2;

    iget-object v2, v2, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-static {v2}, Lcom/android/launcher2/CustomizeTrayTabHost;->access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->val$newType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CustomizePagedView;->setCustomizationFilter(Lcom/android/launcher2/CustomizePagedView$CustomizationType;)V

    .line 118
    iget-object v2, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->this$1:Lcom/android/launcher2/CustomizeTrayTabHost$2;

    iget-object v2, v2, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-static {v2}, Lcom/android/launcher2/CustomizeTrayTabHost;->access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CustomizePagedView;->getAlpha()F

    move-result v0

    .line 119
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->this$1:Lcom/android/launcher2/CustomizeTrayTabHost$2;

    iget-object v2, v2, Lcom/android/launcher2/CustomizeTrayTabHost$2;->this$0:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-static {v2}, Lcom/android/launcher2/CustomizeTrayTabHost;->access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;

    move-result-object v2

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 121
    .local v1, alphaAnim:Landroid/animation/ValueAnimator;
    iget v2, p0, Lcom/android/launcher2/CustomizeTrayTabHost$2$1;->val$duration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 123
    return-void
.end method
