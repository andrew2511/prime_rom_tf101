.class Lcom/layar/ui/AutoTriggerDialog$1;
.super Ljava/lang/Object;
.source "AutoTriggerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AutoTriggerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AutoTriggerDialog;


# direct methods
.method constructor <init>(Lcom/layar/ui/AutoTriggerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-static {v0}, Lcom/layar/ui/AutoTriggerDialog;->access$1(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-static {v0}, Lcom/layar/ui/AutoTriggerDialog;->access$1(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-static {v1}, Lcom/layar/ui/AutoTriggerDialog;->access$0(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/layer/Layer20;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-static {v2}, Lcom/layar/ui/AutoTriggerDialog;->access$2(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/BasePOI;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-static {v3}, Lcom/layar/ui/AutoTriggerDialog;->access$3(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/PoiAction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layar/data/ActionHelper;->executeAutoTrigger(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/PoiAction;Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog$1;->this$0:Lcom/layar/ui/AutoTriggerDialog;

    invoke-virtual {v0}, Lcom/layar/ui/AutoTriggerDialog;->cancel()V

    .line 99
    return-void
.end method
