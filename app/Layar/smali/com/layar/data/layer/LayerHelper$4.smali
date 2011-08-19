.class Lcom/layar/data/layer/LayerHelper$4;
.super Ljava/lang/Object;
.source "LayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerHelper;->showActionsDialog(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/ActionsDialogData;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action:Lcom/layar/data/PoiAction;

.field private final synthetic val$dialog:Lcom/layar/ui/SmartDialog;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;

.field private final synthetic val$listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;


# direct methods
.method constructor <init>(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/ui/SmartDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHelper$4;->val$listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    iput-object p2, p0, Lcom/layar/data/layer/LayerHelper$4;->val$action:Lcom/layar/data/PoiAction;

    iput-object p3, p0, Lcom/layar/data/layer/LayerHelper$4;->val$layer:Lcom/layar/data/layer/Layer20;

    iput-object p4, p0, Lcom/layar/data/layer/LayerHelper$4;->val$dialog:Lcom/layar/ui/SmartDialog;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/layar/data/layer/LayerHelper$4;->val$listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/layar/data/layer/LayerHelper$4;->val$listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    iget-object v1, p0, Lcom/layar/data/layer/LayerHelper$4;->val$action:Lcom/layar/data/PoiAction;

    iget-object v2, p0, Lcom/layar/data/layer/LayerHelper$4;->val$layer:Lcom/layar/data/layer/Layer20;

    invoke-interface {v0, v1, v2}, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;->onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerHelper$4;->val$dialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 612
    return-void
.end method
