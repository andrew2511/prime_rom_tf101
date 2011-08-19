.class Lcom/infraware/sheet/UxSheetEditorActivity$2;
.super Ljava/lang/Object;
.source "UxSheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/sheet/UxSheetEditorActivity;->InitFunctionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/sheet/UxSheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/sheet/UxSheetEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/sheet/UxSheetEditorActivity$2;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$2;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 566
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$2;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->sendSheetFocusEvent()V

    .line 567
    const/4 v0, 0x1

    goto :goto_0
.end method
