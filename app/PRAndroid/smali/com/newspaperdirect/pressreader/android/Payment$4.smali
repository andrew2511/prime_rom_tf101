.class Lcom/newspaperdirect/pressreader/android/Payment$4;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Payment;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$4;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$4;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Payment;->access$3(Lcom/newspaperdirect/pressreader/android/Payment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$4;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Payment;->access$3(Lcom/newspaperdirect/pressreader/android/Payment;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$4;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Payment;->access$4(Lcom/newspaperdirect/pressreader/android/Payment;)V

    .line 226
    return-void
.end method
