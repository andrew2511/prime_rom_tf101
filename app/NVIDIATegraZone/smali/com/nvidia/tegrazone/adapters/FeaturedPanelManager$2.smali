.class final Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$2;
.super Ljava/util/TimerTask;
.source "FeaturedPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$2;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    .line 63
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$2;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    iget-object v0, v0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    return-void
.end method
