.class final Lcom/nvidia/tegrazone/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/HomeActivity;->getGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/HomeActivity$4;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$4;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$4;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->news:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$4;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/HomeActivity;->showDialog()V

    .line 319
    :cond_0
    return-void
.end method
