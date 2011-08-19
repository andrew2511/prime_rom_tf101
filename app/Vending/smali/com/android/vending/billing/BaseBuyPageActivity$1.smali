.class Lcom/android/vending/billing/BaseBuyPageActivity$1;
.super Ljava/lang/Object;
.source "BaseBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 263
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$1;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$1;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-static {v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->access$000(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    .line 266
    return-void
.end method
