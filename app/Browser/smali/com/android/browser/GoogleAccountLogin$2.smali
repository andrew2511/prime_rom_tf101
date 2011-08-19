.class Lcom/android/browser/GoogleAccountLogin$2;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GoogleAccountLogin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GoogleAccountLogin;

.field final synthetic val$newUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/GoogleAccountLogin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    iput-object p2, p0, Lcom/android/browser/GoogleAccountLogin$2;->val$newUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    invoke-static {v1}, Lcom/android/browser/GoogleAccountLogin;->access$200(Lcom/android/browser/GoogleAccountLogin;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    monitor-exit v0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    invoke-static {v1}, Lcom/android/browser/GoogleAccountLogin;->access$300(Lcom/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin$2;->val$newUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 184
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
