.class Lcom/newspaperdirect/pressreader/android/Main$1;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Main;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Main$1;->this$0:Lcom/newspaperdirect/pressreader/android/Main;

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/Main$1;)Lcom/newspaperdirect/pressreader/android/Main;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1;->this$0:Lcom/newspaperdirect/pressreader/android/Main;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Main$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1;->this$0:Lcom/newspaperdirect/pressreader/android/Main;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Main$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main$1;->this$0:Lcom/newspaperdirect/pressreader/android/Main;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 48
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Main$1;->this$0:Lcom/newspaperdirect/pressreader/android/Main;

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;-><init>(Landroid/app/Activity;)V

    .line 50
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Main$1$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Main$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/Main$1;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setAuthorization(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Main$1$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Main$1$2;-><init>(Lcom/newspaperdirect/pressreader/android/Main$1;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Main$1$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Main$1$3;-><init>(Lcom/newspaperdirect/pressreader/android/Main$1;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Main$1;->this$0:Lcom/newspaperdirect/pressreader/android/Main;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    const v2, 0x7f09000a

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResultMessage(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 78
    return-void
.end method
