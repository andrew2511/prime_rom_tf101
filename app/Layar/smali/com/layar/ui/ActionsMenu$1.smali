.class Lcom/layar/ui/ActionsMenu$1;
.super Ljava/lang/Object;
.source "ActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/ActionsMenu;->getView(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/ActionsMenu;

.field private final synthetic val$item:Lcom/layar/data/PoiAction;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;


# direct methods
.method constructor <init>(Lcom/layar/ui/ActionsMenu;Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/ActionsMenu$1;->this$0:Lcom/layar/ui/ActionsMenu;

    iput-object p2, p0, Lcom/layar/ui/ActionsMenu$1;->val$item:Lcom/layar/data/PoiAction;

    iput-object p3, p0, Lcom/layar/ui/ActionsMenu$1;->val$layer:Lcom/layar/data/layer/Layer20;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/layar/ui/ActionsMenu$1;->this$0:Lcom/layar/ui/ActionsMenu;

    invoke-static {v0}, Lcom/layar/ui/ActionsMenu;->access$0(Lcom/layar/ui/ActionsMenu;)Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/layar/ui/ActionsMenu$1;->this$0:Lcom/layar/ui/ActionsMenu;

    invoke-static {v0}, Lcom/layar/ui/ActionsMenu;->access$0(Lcom/layar/ui/ActionsMenu;)Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/ActionsMenu$1;->val$item:Lcom/layar/data/PoiAction;

    iget-object v2, p0, Lcom/layar/ui/ActionsMenu$1;->val$layer:Lcom/layar/data/layer/Layer20;

    invoke-interface {v0, v1, v2}, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;->onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    .line 173
    :cond_0
    return-void
.end method
