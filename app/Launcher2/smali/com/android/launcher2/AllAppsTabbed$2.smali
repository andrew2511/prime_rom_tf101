.class Lcom/android/launcher2/AllAppsTabbed$2;
.super Ljava/lang/Object;
.source "AllAppsTabbed.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllAppsTabbed;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllAppsTabbed;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllAppsTabbed;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "tabId"

    .prologue
    .line 96
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-virtual {v4}, Lcom/android/launcher2/AllAppsTabbed;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 98
    .local v2, duration:I
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v4}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/AllAppsPagedView;->getAlpha()F

    move-result v0

    .line 99
    .local v0, alpha:F
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v4}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 101
    .local v1, alphaAnim:Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/launcher2/AllAppsTabbed$2$1;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher2/AllAppsTabbed$2$1;-><init>(Lcom/android/launcher2/AllAppsTabbed$2;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    return-void
.end method
