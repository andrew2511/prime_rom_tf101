.class Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar$1;
.super Landroid/os/Handler;
.source "UiWordMainToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->access$1(Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEnable(Z)V

    .line 92
    :cond_0
    return-void
.end method
