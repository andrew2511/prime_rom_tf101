.class Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;
.super Ljava/lang/Object;
.source "ServiceCallbackScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

.field final synthetic val$connection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection.1;"
    iput-object p1, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iput-object p2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->val$connection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection.1;"
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iget-object v2, v2, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v2}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$100(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallable;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/books/model/ServiceCallable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, result:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iget-object v2, v2, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v2}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$200(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/apps/books/model/ServiceCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iget-object v2, v2, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v2}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$300(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->val$connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    return-void

    .line 57
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iget-object v2, v2, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v2}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$200(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/books/model/ServiceCallback;->onHttpResponseException(Lorg/apache/http/client/HttpResponseException;)V

    goto :goto_0

    .line 59
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iget-object v2, v2, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v2}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$200(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/books/model/ServiceCallback;->onIOException(Ljava/io/IOException;)V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;->this$1:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    iget-object v2, v2, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v2}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$200(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/books/model/ServiceCallback;->onOtherException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
