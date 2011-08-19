.class Lcom/layar/Layar3DActivity$2;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Layar3DActivity;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    iget-boolean v0, v0, Lcom/layar/Layar3DActivity;->running:Z

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->isFocusLock()Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    invoke-static {v0}, Lcom/layar/Layar3DActivity;->access$5(Lcom/layar/Layar3DActivity;)V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    invoke-static {v0}, Lcom/layar/Layar3DActivity;->access$6(Lcom/layar/Layar3DActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    invoke-static {v0}, Lcom/layar/Layar3DActivity;->access$6(Lcom/layar/Layar3DActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/Layar3DActivity$2;->this$0:Lcom/layar/Layar3DActivity;

    invoke-static {v1}, Lcom/layar/Layar3DActivity;->access$7(Lcom/layar/Layar3DActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
