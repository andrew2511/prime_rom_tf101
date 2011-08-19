.class Lcom/layar/ui/StatusView$1;
.super Ljava/lang/Object;
.source "StatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/StatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/StatusView;


# direct methods
.method constructor <init>(Lcom/layar/ui/StatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    invoke-static {v0}, Lcom/layar/ui/StatusView;->access$0(Lcom/layar/ui/StatusView;)Lcom/layar/util/StatusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/util/StatusHelper;->getProgress()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/StatusView;->access$1(Lcom/layar/ui/StatusView;I)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    invoke-static {v0}, Lcom/layar/ui/StatusView;->access$3(Lcom/layar/ui/StatusView;)V

    .line 47
    iget-object v0, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    invoke-static {v0}, Lcom/layar/ui/StatusView;->access$4(Lcom/layar/ui/StatusView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    invoke-static {v1}, Lcom/layar/ui/StatusView;->access$5(Lcom/layar/ui/StatusView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    iget-object v1, p0, Lcom/layar/ui/StatusView$1;->this$0:Lcom/layar/ui/StatusView;

    invoke-static {v1}, Lcom/layar/ui/StatusView;->access$2(Lcom/layar/ui/StatusView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/layar/ui/StatusView;->access$1(Lcom/layar/ui/StatusView;I)V

    goto :goto_0
.end method
