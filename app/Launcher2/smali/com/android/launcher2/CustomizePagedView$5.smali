.class Lcom/android/launcher2/CustomizePagedView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->animateIntoPosition(Landroid/view/View;FFLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$5;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/CustomizePagedView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 567
    return-void
.end method
