.class final Lcom/nvidia/tegrazone/AppActivity$2;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/AppActivity;->initSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/AppActivity;

.field private final synthetic val$searchClearBtn:Landroid/widget/Button;

.field private final synthetic val$searchTxt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/AppActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    iput-object p2, p0, Lcom/nvidia/tegrazone/AppActivity$2;->val$searchTxt:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nvidia/tegrazone/AppActivity$2;->val$searchClearBtn:Landroid/widget/Button;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 498
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity$2;->val$searchTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 502
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {v1, v0}, Lcom/nvidia/tegrazone/AppActivity;->access$0(Lcom/nvidia/tegrazone/AppActivity;Landroid/widget/Spinner;)V

    .line 507
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/AppActivity;->access$1(Lcom/nvidia/tegrazone/AppActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 508
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity$2;->val$searchTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/AppActivity;->clearList()V

    .line 510
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/AppActivity;->getList()V

    .line 511
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$2;->val$searchClearBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    :cond_1
    return v4
.end method
