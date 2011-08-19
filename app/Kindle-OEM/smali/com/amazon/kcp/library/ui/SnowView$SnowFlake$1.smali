.class Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;
.super Ljava/lang/Object;
.source "SnowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->newAnimationListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->access$200(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    iget-object v1, v1, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->this$0:Lcom/amazon/kcp/library/ui/SnowView;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/SnowView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    invoke-static {v1}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->access$400(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->access$302(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;F)F

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->access$202(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;F)F

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->access$500(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;->this$1:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->setAnimation(Landroid/view/animation/Animation;)V

    .line 182
    return-void
.end method
