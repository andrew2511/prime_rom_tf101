.class Lcom/newspaperdirect/pressreader/android/Main$1$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Main$1;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Main$1;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Main$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Main$1$3;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeResult()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$3;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main;->access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$3;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main;->access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$3;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Main;->finish()V

    .line 72
    return-void
.end method
