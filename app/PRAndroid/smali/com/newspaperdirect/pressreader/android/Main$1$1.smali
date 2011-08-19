.class Lcom/newspaperdirect/pressreader/android/Main$1$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Main$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorization()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main;->access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main;->access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Main$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/Main$1;->access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;

    move-result-object v2

    .line 56
    const-class v3, Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Main;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_1
    return-void
.end method
