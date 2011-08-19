.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 948
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->viewRadarButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0, v1}, Lcom/layar/ui/StatusView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v1

    iget-object v1, v1, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/layar/ui/RotateLayout;->draw(Landroid/graphics/Canvas;)V

    .line 953
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->layoutReady:Z

    .line 956
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->viewRadarButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0, v2}, Lcom/layar/ui/StatusView;->setVisibility(I)V

    .line 959
    return-void
.end method
