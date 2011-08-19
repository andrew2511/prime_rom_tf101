.class Lcom/ecareme/pixwe/media/HudLayer$11;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$11;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 293
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$11;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$11;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ecareme/pixwe/view/common/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$11;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$11;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 324
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$11;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
