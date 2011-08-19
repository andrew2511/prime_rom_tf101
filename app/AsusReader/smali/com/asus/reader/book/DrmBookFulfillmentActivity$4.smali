.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$4;
.super Ljava/lang/Object;
.source "DrmBookFulfillmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 503
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$4;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$4;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$1100(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    .line 508
    return-void
.end method
