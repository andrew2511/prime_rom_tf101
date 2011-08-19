.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6$1;
.super Ljava/lang/Object;
.source "DeviceAuthorizationChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;->access$0(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
