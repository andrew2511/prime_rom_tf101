.class Lcom/newspaperdirect/pressreader/android/Main$1$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Main$1$2;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$2;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/Main;->access$1(Lcom/newspaperdirect/pressreader/android/Main;Z)V

    .line 63
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$2;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main;->access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$2;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main;->access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 65
    :cond_0
    return-void
.end method
