.class Lcom/newspaperdirect/pressreader/android/Payment$5;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Payment;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$5;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Payment$5;->val$msg:Ljava/lang/String;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$5;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$5;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v2, Lcom/newspaperdirect/pressreader/android/Payment$5$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/Payment$5$1;-><init>(Lcom/newspaperdirect/pressreader/android/Payment$5;)V

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 293
    return-void
.end method
