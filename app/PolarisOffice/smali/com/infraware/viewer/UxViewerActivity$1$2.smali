.class Lcom/infraware/viewer/UxViewerActivity$1$2;
.super Ljava/lang/Object;
.source "UxViewerActivity.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/viewer/UxViewerActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/viewer/UxViewerActivity$1;


# direct methods
.method constructor <init>(Lcom/infraware/viewer/UxViewerActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/viewer/UxViewerActivity$1$2;->this$1:Lcom/infraware/viewer/UxViewerActivity$1;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 1
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity$1$2;->this$1:Lcom/infraware/viewer/UxViewerActivity$1;

    invoke-static {v0}, Lcom/infraware/viewer/UxViewerActivity$1;->access$0(Lcom/infraware/viewer/UxViewerActivity$1;)Lcom/infraware/viewer/UxViewerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/viewer/UxViewerActivity;->access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 143
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity$1$2;->this$1:Lcom/infraware/viewer/UxViewerActivity$1;

    invoke-static {v0}, Lcom/infraware/viewer/UxViewerActivity$1;->access$0(Lcom/infraware/viewer/UxViewerActivity$1;)Lcom/infraware/viewer/UxViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/viewer/UxViewerActivity;->finish()V

    .line 144
    return-void
.end method
