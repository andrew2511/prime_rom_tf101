.class Lcom/android/vending/billing/AddCreditCardActivity$2;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/AddCreditCardActivity;->setupAddressWidget()V
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
    .line 776
    iput-object p1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-static {v0}, Lcom/android/vending/billing/AddCreditCardActivity;->access$300(Lcom/android/vending/billing/AddCreditCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Country;

    invoke-static {v1, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->access$202(Lcom/android/vending/billing/AddCreditCardActivity;Lcom/android/vending/model/Country;)Lcom/android/vending/model/Country;

    .line 780
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-static {v1}, Lcom/android/vending/billing/AddCreditCardActivity;->access$200(Lcom/android/vending/billing/AddCreditCardActivity;)Lcom/android/vending/model/Country;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v0, v0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v1, v1, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-static {v0}, Lcom/android/vending/billing/AddCreditCardActivity;->access$300(Lcom/android/vending/billing/AddCreditCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Country;

    invoke-static {v1, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->access$202(Lcom/android/vending/billing/AddCreditCardActivity;Lcom/android/vending/model/Country;)Lcom/android/vending/model/Country;

    .line 787
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-static {v1}, Lcom/android/vending/billing/AddCreditCardActivity;->access$200(Lcom/android/vending/billing/AddCreditCardActivity;)Lcom/android/vending/model/Country;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v0, v0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity$2;->this$0:Lcom/android/vending/billing/AddCreditCardActivity;

    iget-object v1, v1, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    .line 789
    return-void
.end method
