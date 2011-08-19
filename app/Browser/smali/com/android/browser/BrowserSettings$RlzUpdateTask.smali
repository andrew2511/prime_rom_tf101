.class Lcom/android/browser/BrowserSettings$RlzUpdateTask;
.super Landroid/os/AsyncTask;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RlzUpdateTask"
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
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/browser/BrowserSettings;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1015
    iput-object p2, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->context:Landroid/content/Context;

    .line 1016
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1011
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "unused"

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$3600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, rlz:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-static {v1, v0}, Lcom/android/browser/BrowserSettings;->access$3702(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->this$0:Lcom/android/browser/BrowserSettings;

    iget-object v2, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/browser/BrowserSettings;->access$3800(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V

    .line 1024
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->this$0:Lcom/android/browser/BrowserSettings;

    iget-object v2, p0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/browser/BrowserSettings;->access$3900(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V

    .line 1026
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
