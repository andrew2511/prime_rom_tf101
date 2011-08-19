.class Lcom/android/vending/billing/BaseBuyPageActivity$4;
.super Ljava/lang/Object;
.source "BaseBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;->displayCheckoutTosDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/BaseBuyPageActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/BaseBuyPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 714
    packed-switch p2, :pswitch_data_0

    .line 730
    :goto_0
    return-void

    .line 716
    :pswitch_0
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-static {v1, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->access$202(Lcom/android/vending/billing/BaseBuyPageActivity;Z)Z

    .line 718
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    iget-object v1, v1, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 720
    .local v0, tosView:Landroid/widget/CheckBox;
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 724
    .end local v0           #tosView:Landroid/widget/CheckBox;
    :pswitch_1
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-static {v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->access$202(Lcom/android/vending/billing/BaseBuyPageActivity;Z)Z

    .line 725
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-static {v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->access$300(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    .line 726
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->setResult(I)V

    .line 727
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$4;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->finish()V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
