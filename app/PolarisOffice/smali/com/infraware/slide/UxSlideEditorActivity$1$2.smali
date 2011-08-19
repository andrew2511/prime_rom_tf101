.class Lcom/infraware/slide/UxSlideEditorActivity$1$2;
.super Ljava/lang/Object;
.source "UxSlideEditorActivity.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/slide/UxSlideEditorActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/slide/UxSlideEditorActivity$1;


# direct methods
.method constructor <init>(Lcom/infraware/slide/UxSlideEditorActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/slide/UxSlideEditorActivity$1$2;->this$1:Lcom/infraware/slide/UxSlideEditorActivity$1;

    .line 444
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
    .line 449
    iget-object v0, p0, Lcom/infraware/slide/UxSlideEditorActivity$1$2;->this$1:Lcom/infraware/slide/UxSlideEditorActivity$1;

    invoke-static {v0}, Lcom/infraware/slide/UxSlideEditorActivity$1;->access$0(Lcom/infraware/slide/UxSlideEditorActivity$1;)Lcom/infraware/slide/UxSlideEditorActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 450
    iget-object v0, p0, Lcom/infraware/slide/UxSlideEditorActivity$1$2;->this$1:Lcom/infraware/slide/UxSlideEditorActivity$1;

    invoke-static {v0}, Lcom/infraware/slide/UxSlideEditorActivity$1;->access$0(Lcom/infraware/slide/UxSlideEditorActivity$1;)Lcom/infraware/slide/UxSlideEditorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/slide/UxSlideEditorActivity;->finish()V

    .line 451
    return-void
.end method
