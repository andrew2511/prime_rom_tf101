.class Lcom/ecareme/pixwe/media/HudLayer$58;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->updateShareMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;

.field private final synthetic val$info:Landroid/content/pm/ResolveInfo;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$58;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/HudLayer$58;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/ecareme/pixwe/media/HudLayer$58;->val$info:Landroid/content/pm/ResolveInfo;

    .line 1933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$58;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$58;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$58;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$17(Lcom/ecareme/pixwe/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1936
    return-void
.end method
