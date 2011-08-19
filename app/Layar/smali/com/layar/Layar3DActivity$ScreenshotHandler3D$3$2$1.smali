.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$1;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$1;->this$3:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$1;->this$3:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/Layar3DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1027
    const v1, 0x7f0900bc

    .line 1028
    const/4 v2, 0x1

    .line 1026
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 1029
    return-void
.end method
