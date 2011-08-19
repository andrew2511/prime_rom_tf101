.class Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;
.super Landroid/os/Handler;
.source "GenieLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingHandler"
.end annotation


# instance fields
.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "httpHelper"
    .parameter "looper"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    .line 94
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 96
    return-void
.end method

.method private performLog(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V
    .locals 5
    .parameter "logData"

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->access$000(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->access$100(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;)Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->toUrl(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 131
    .end local v1           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 127
    .restart local v1       #url:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "QSB.GenieLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending log request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 111
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    .line 114
    .local v0, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->performLog(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendLogMessage(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V
    .locals 2
    .parameter "logData"

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 105
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method
