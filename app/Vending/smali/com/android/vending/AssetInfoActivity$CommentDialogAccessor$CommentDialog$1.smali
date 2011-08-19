.class Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;-><init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

.field final synthetic val$commentBox:Landroid/widget/TextView;

.field final synthetic val$this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2409
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->val$this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2411
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2412
    .local v0, comment:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2413
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-interface {v1, v2, v3}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    .line 2419
    :cond_0
    return-void
.end method
