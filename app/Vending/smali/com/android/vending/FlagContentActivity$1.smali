.class Lcom/android/vending/FlagContentActivity$1;
.super Ljava/lang/Object;
.source "FlagContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/FlagContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/FlagContentActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/FlagContentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v1}, Lcom/android/vending/FlagContentActivity;->access$100(Lcom/android/vending/FlagContentActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->forRadioId(I)Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/FlagContentActivity;->access$002(Lcom/android/vending/FlagContentActivity;Lcom/android/vending/model/ModifyCommentRequest$FlagType;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 91
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v0}, Lcom/android/vending/FlagContentActivity;->access$000(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->requireUserComment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v1}, Lcom/android/vending/FlagContentActivity;->access$200(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/controller/DialogAccessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/FlagContentActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$1;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v0}, Lcom/android/vending/FlagContentActivity;->access$300(Lcom/android/vending/FlagContentActivity;)V

    goto :goto_0
.end method
