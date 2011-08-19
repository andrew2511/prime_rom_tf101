.class Lcom/newspaperdirect/pressreader/android/Authorization$1;
.super Ljava/lang/Object;
.source "Authorization.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Authorization;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Authorization;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->access$0(Lcom/newspaperdirect/pressreader/android/Authorization;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->access$0(Lcom/newspaperdirect/pressreader/android/Authorization;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->access$1(Lcom/newspaperdirect/pressreader/android/Authorization;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->access$1(Lcom/newspaperdirect/pressreader/android/Authorization;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$1;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->access$2(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    .line 89
    return-void
.end method
