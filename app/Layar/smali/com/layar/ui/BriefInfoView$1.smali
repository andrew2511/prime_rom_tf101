.class Lcom/layar/ui/BriefInfoView$1;
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
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView$1;->this$0:Lcom/layar/ui/BriefInfoView;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$1;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v0}, Lcom/layar/ui/BriefInfoView;->access$7(Lcom/layar/ui/BriefInfoView;)Lcom/layar/core/POIsContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->clearFocusLock()V

    .line 132
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$1;->this$0:Lcom/layar/ui/BriefInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoView;->setLock(Z)V

    .line 133
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$1;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v0}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v0

    iget-boolean v0, v0, Lcom/layar/data/POI;->showSmallBiw:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$1;->this$0:Lcom/layar/ui/BriefInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$1;->this$0:Lcom/layar/ui/BriefInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoView;->setPOI(Lcom/layar/data/POI;)V

    .line 137
    :cond_0
    return-void
.end method
