.class Lcom/android/vending/billing/BaseBuyPageActivity$3;
.super Landroid/text/style/ClickableSpan;
.source "BaseBuyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;->displayTOSWidget()V
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
    .line 679
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$3;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$3;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-static {v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->access$100(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    .line 683
    return-void
.end method
