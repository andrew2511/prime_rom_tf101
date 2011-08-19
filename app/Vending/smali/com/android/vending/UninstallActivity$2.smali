.class Lcom/android/vending/UninstallActivity$2;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity;->setupUninstallStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity;Landroid/widget/RadioGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$2;->this$0:Lcom/android/vending/UninstallActivity;

    iput-object p2, p0, Lcom/android/vending/UninstallActivity$2;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$2;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Lcom/android/vending/model/UninstallReasonRequest$Reason;->forRadioId(I)Lcom/android/vending/model/UninstallReasonRequest$Reason;

    move-result-object v0

    .line 261
    .local v0, reason:Lcom/android/vending/model/UninstallReasonRequest$Reason;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v1

    new-instance v2, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;

    iget-object v3, p0, Lcom/android/vending/UninstallActivity$2;->this$0:Lcom/android/vending/UninstallActivity;

    iget-object v3, v3, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;-><init>(Ljava/lang/String;Lcom/android/vending/model/UninstallReasonRequest$Reason;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 263
    sget-object v1, Lcom/android/vending/model/UninstallReasonRequest$Reason;->MALICIOUS:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$2;->this$0:Lcom/android/vending/UninstallActivity;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity$2;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v2}, Lcom/android/vending/UninstallActivity;->access$300(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/controller/DialogAccessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/UninstallActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$2;->this$0:Lcom/android/vending/UninstallActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/UninstallActivity;->setResult(I)V

    .line 267
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$2;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-virtual {v1}, Lcom/android/vending/UninstallActivity;->finish()V

    goto :goto_0
.end method
