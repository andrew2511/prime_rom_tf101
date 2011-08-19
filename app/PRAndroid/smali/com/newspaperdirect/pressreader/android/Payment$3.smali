.class Lcom/newspaperdirect/pressreader/android/Payment$3;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment;->finished()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$3;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.newspaperdirect.pressreader.android.LocalStore.ReloadCalalog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$3;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-virtual {v1, v0}, Lcom/newspaperdirect/pressreader/android/Payment;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$3;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/Payment$3;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    const-class v4, Lcom/newspaperdirect/pressreader/android/Main;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "tab"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
