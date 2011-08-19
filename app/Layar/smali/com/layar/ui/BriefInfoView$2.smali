.class Lcom/layar/ui/BriefInfoView$2;
.super Ljava/lang/Object;
.source "BriefInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/BriefInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/BriefInfoView;


# direct methods
.method constructor <init>(Lcom/layar/ui/BriefInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$9(Lcom/layar/ui/BriefInfoView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v1

    iget-boolean v1, v1, Lcom/layar/data/POI;->showBiwOnClick:Z

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$7(Lcom/layar/ui/BriefInfoView;)Lcom/layar/core/POIsContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v2}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/layar/core/POIsContainer;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 150
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layar/ui/BriefInfoView;->setLock(Z)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v1

    iget-object v1, v1, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v1

    iget-object v1, v1, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 153
    .local v0, action:Lcom/layar/data/PoiAction;
    iget-boolean v1, v0, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v1}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v1

    iget v1, v1, Lcom/layar/data/POI;->geodistance:I

    iget v2, v0, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    if-gt v1, v2, :cond_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView$2;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v2}, Lcom/layar/ui/BriefInfoView;->access$6(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/layer/Layer20;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/layar/ui/BriefInfoView;->onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0
.end method
