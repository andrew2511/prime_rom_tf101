.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$2;
.super Landroid/app/ProgressDialog;
.source "DrmBookFulfillmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$2;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Landroid/app/ProgressDialog;->onBackPressed()V

    .line 402
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$2;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-virtual {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->finish()V

    .line 403
    return-void
.end method
