.class Lcom/nuance/xt9/input/HandWritingContainerView$1;
.super Ljava/lang/Object;
.source "HandWritingContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/HandWritingContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/HandWritingContainerView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/HandWritingContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/xt9/input/HandWritingContainerView$1;->this$0:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asus.com.xt9.input.toggle_fullscreen_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingContainerView$1;->this$0:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/HandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
