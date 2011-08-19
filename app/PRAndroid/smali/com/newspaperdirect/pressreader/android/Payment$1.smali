.class Lcom/newspaperdirect/pressreader/android/Payment$1;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment;->tryRegister(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Payment;

.field private final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$1;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Payment$1;->val$extra:Landroid/os/Bundle;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$1;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$1;->val$extra:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->access$0(Lcom/newspaperdirect/pressreader/android/Payment;Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
