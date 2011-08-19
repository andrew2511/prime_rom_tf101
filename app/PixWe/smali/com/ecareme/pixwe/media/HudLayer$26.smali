.class Lcom/ecareme/pixwe/media/HudLayer$26;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$26;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$26;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 485
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$26;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$10(Lcom/ecareme/pixwe/media/HudLayer;)V

    .line 486
    return-void
.end method
