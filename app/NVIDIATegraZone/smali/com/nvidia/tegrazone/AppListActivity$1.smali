.class final Lcom/nvidia/tegrazone/AppListActivity$1;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/AppListActivity;->initSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/AppListActivity;

.field private final synthetic val$searchClearBtn:Landroid/widget/Button;

.field private final synthetic val$searchTxt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/AppListActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    iput-object p2, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->val$searchTxt:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->val$searchClearBtn:Landroid/widget/Button;

    .line 288
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

    .line 291
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->val$searchTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 294
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {v1, v0}, Lcom/nvidia/tegrazone/AppListActivity;->access$0(Lcom/nvidia/tegrazone/AppListActivity;Landroid/widget/Spinner;)V

    .line 298
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/AppListActivity;->access$1(Lcom/nvidia/tegrazone/AppListActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 299
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    iget-object v0, v0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->val$searchTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/AppListActivity;->clearList()V

    .line 301
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    .line 302
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$1;->val$searchClearBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    :cond_1
    return v4
.end method
