.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;
.super Ljava/lang/Object;
.source "DeviceAuthorizationChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->val$msg:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    return-void
.end method
