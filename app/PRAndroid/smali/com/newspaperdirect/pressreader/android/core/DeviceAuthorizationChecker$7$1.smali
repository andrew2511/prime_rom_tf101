.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;
.super Ljava/lang/Object;
.source "DeviceAuthorizationChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;

.field private final synthetic val$clientName:Ljava/lang/String;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$clientName:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;->val$clientName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
