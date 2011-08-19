.class Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;
.super Landroid/os/Handler;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectionCheckerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 715
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_0

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->refreshList()V

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
