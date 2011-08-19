.class Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$1;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->access$0(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;)Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->finish()V

    .line 511
    return-void
.end method
