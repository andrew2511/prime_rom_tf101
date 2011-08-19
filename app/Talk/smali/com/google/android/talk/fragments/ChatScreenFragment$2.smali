.class Lcom/google/android/talk/fragments/ChatScreenFragment$2;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 849
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 850
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 851
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 858
    return-void
.end method
