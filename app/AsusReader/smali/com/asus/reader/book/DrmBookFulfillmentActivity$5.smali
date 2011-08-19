.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$5;
.super Ljava/lang/Object;
.source "DrmBookFulfillmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$5;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$5;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$1100(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    .line 501
    return-void
.end method
