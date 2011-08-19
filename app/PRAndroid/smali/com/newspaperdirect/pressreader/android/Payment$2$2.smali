.class Lcom/newspaperdirect/pressreader/android/Payment$2$2;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment$2;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Payment$2;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2$2;->this$1:Lcom/newspaperdirect/pressreader/android/Payment$2;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorization()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$2$2;->this$1:Lcom/newspaperdirect/pressreader/android/Payment$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Payment$2;->access$2(Lcom/newspaperdirect/pressreader/android/Payment$2;)Lcom/newspaperdirect/pressreader/android/Payment;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Payment;->access$2(Lcom/newspaperdirect/pressreader/android/Payment;)V

    .line 193
    return-void
.end method
