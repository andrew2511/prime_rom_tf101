.class final Lcom/nvidia/tegrazone/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/HomeActivity;->buildFeatured()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/HomeActivity$2;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$2;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/HomeActivity;->access$0(Lcom/nvidia/tegrazone/HomeActivity;)I

    move-result v0

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$2;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$2;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$2;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    invoke-virtual {v0, p2, p3}, Lcom/nvidia/tegrazone/HomeActivity;->onAppClick(Landroid/view/View;I)V

    goto :goto_0
.end method
