.class Lcom/layar/data/layer/LayerHelper$3;
.super Ljava/lang/Object;
.source "LayerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerHelper;->showShareDialog(Landroid/content/Context;Lcom/layar/data/ShareDialogData;)Lcom/layar/ui/SmartDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$data:Lcom/layar/data/ShareDialogData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/layar/data/ShareDialogData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHelper$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 518
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    iget-object v0, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 520
    .local v0, handler:Lcom/layar/data/layer/LayerHandler;
    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v2

    .line 521
    .local v2, mLayer:Lcom/layar/data/layer/Layer20;
    iget-object v3, p0, Lcom/layar/data/layer/LayerHelper$3;->val$context:Landroid/content/Context;

    const-class v4, Lcom/layar/ShareSocialActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 522
    const-string v3, "layer:name"

    iget-object v4, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v3, "layer:title"

    .line 524
    iget-object v4, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    iget-object v4, v4, Lcom/layar/data/ShareDialogData;->userText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    .line 523
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v3, "screen:titleId"

    const v4, 0x7f0900b0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string v3, "share:type"

    const-string v4, "action"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v3, "share:title"

    iget-object v4, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    iget-object v4, v4, Lcom/layar/data/ShareDialogData;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v3, "share:description"

    iget-object v4, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    iget-object v4, v4, Lcom/layar/data/ShareDialogData;->description:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v3, "share:imageURL"

    iget-object v4, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    iget-object v4, v4, Lcom/layar/data/ShareDialogData;->icon:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v3, "share:link"

    iget-object v4, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    iget-object v4, v4, Lcom/layar/data/ShareDialogData;->link:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v3, p0, Lcom/layar/data/layer/LayerHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 535
    return-void

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/layar/data/layer/LayerHelper$3;->val$data:Lcom/layar/data/ShareDialogData;

    iget-object v4, v4, Lcom/layar/data/ShareDialogData;->userText:Ljava/lang/String;

    goto :goto_0
.end method
