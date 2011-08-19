.class Lcom/infraware/common/UxDocViewerBase$1;
.super Ljava/lang/Object;
.source "UxDocViewerBase.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/UxDocViewerBase;->onSdCardStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/UxDocViewerBase;


# direct methods
.method constructor <init>(Lcom/infraware/common/UxDocViewerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/UxDocViewerBase$1;->this$0:Lcom/infraware/common/UxDocViewerBase;

    .line 221
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
    .line 225
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase$1;->this$0:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 226
    iget-object v0, p0, Lcom/infraware/common/UxDocViewerBase$1;->this$0:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->finish()V

    .line 227
    return-void
.end method
