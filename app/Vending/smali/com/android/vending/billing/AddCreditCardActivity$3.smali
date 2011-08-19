.class Lcom/android/vending/billing/AddCreditCardActivity$3;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/AddCreditCardActivity;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/AddCreditCardActivity;

.field final synthetic val$errorList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/AddCreditCardActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/vending/billing/AddCreditCardActivity$3;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iput-object p2, p0, Lcom/android/vending/billing/AddCreditCardActivity$3;->val$errorList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$3;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-static {v0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->access$400(Lcom/android/vending/billing/AddCreditCardActivity;Lcom/android/vending/billing/AddCreditCardActivity$State;)V

    .line 934
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$3;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$3;->val$errorList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->access$500(Lcom/android/vending/billing/AddCreditCardActivity;Ljava/util/List;)V

    .line 935
    return-void
.end method
