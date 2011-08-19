.class final Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$1;
.super Ljava/lang/Object;
.source "FeaturedPanelManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$1;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$1;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->updatePanelContents()V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
