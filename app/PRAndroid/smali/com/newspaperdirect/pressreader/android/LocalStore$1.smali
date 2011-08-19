.class Lcom/newspaperdirect/pressreader/android/LocalStore$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 286
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.newspaperdirect.pressreader.android.LocalStore.ReloadCalalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V

    .line 292
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V

    .line 293
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V

    .line 294
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    .line 295
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$4(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 296
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$5(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 298
    :cond_0
    return-void
.end method
