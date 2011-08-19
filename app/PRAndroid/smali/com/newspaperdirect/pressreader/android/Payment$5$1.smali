.class Lcom/newspaperdirect/pressreader/android/Payment$5$1;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Payment$5;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$5$1;->this$1:Lcom/newspaperdirect/pressreader/android/Payment$5;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 291
    return-void
.end method
