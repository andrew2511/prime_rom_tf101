.class Lcom/newspaperdirect/pressreader/android/Accounts$1$1;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Accounts$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Accounts$1;

.field private final synthetic val$service:Lcom/newspaperdirect/pressreader/android/core/Service;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Accounts$1;Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Accounts$1;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->val$service:Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1$1;)Lcom/newspaperdirect/pressreader/android/Accounts$1;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Accounts$1;

    return-object v0
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 5

    .prologue
    .line 56
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Accounts$1;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/Accounts$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/Accounts;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Accounts$1;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/Accounts$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Accounts$1;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/Accounts$1;->access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;

    move-result-object v3

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/Accounts;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 58
    .local v0, dlg:Landroid/app/AlertDialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;->val$service:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-direct {v1, p0, v2, v0}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/Accounts$1$1;Lcom/newspaperdirect/pressreader/android/core/Service;Landroid/app/AlertDialog;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
