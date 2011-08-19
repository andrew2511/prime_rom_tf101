.class Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 266
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 267
    const v1, 0x7f09005e

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2$1;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
