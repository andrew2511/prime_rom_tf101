.class Lcom/ecareme/pixwe/media/HudLayer$59;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;

.field private final synthetic val$resolvedIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$59;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/HudLayer$59;->val$resolvedIntent:Landroid/content/Intent;

    .line 1947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$59;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$59;->val$resolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1950
    return-void
.end method
