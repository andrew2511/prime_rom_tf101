.class Lcom/ecareme/pixwe/media/HudLayer$47;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->buildMoreOptions()V
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1098
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1099
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1100
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1101
    const/4 v2, 0x1

    .line 1103
    .local v2, foundDataToDisplay:Z
    if-nez v0, :cond_1

    .line 1104
    const/4 v2, 0x0

    .line 1114
    :goto_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 1115
    if-eqz v2, :cond_0

    .line 1116
    const v4, 0x7f060014

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1117
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/ecareme/pixwe/media/HudLayer$47$1;

    invoke-direct {v5, p0, v1}, Lcom/ecareme/pixwe/media/HudLayer$47$1;-><init>(Lcom/ecareme/pixwe/media/HudLayer$47;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1123
    :cond_0
    return-void

    .line 1106
    :cond_1
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$47;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ecareme/pixwe/media/DetailMode;->populateDetailModeStrings(Landroid/content/Context;Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1107
    .local v3, strings:[Ljava/lang/CharSequence;
    if-nez v3, :cond_2

    .line 1108
    const/4 v2, 0x0

    goto :goto_0

    .line 1110
    :cond_2
    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
