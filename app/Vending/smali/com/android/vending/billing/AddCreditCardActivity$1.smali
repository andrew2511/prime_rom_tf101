.class Lcom/android/vending/billing/AddCreditCardActivity$1;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/AddCreditCardActivity;->displayCheckoutTosDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/AddCreditCardActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/AddCreditCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/vending/billing/AddCreditCardActivity$1;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 560
    packed-switch p2, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 562
    :pswitch_0
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$1;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->access$002(Lcom/android/vending/billing/AddCreditCardActivity;Z)Z

    goto :goto_0

    .line 566
    :pswitch_1
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$1;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-static {v0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->access$002(Lcom/android/vending/billing/AddCreditCardActivity;Z)Z

    .line 567
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$1;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-static {v0}, Lcom/android/vending/billing/AddCreditCardActivity;->access$100(Lcom/android/vending/billing/AddCreditCardActivity;)V

    .line 568
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$1;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->setResult(I)V

    .line 569
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$1;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-virtual {v0}, Lcom/android/vending/billing/AddCreditCardActivity;->finish()V

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
