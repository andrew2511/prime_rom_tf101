.class Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;
.super Landroid/os/AsyncTask;
.source "ClientReportSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/ClientReportSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendReportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private final mTaskMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/speechservice/ClientReportSender;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 184
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    .line 185
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$100(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$000(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;->registerHttpUser(Landroid/content/Context;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 194
    :cond_1
    :try_start_0
    const-string v0, "ClientReportSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client reports over HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$000(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$200(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;)V

    .line 200
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAudioEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioEncoding(I)V

    .line 201
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAudioSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioSampleRate(I)V

    .line 202
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$100(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-interface {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;->post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "ClientReportSender"

    const-string v2, "Sending client reports failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    const-string v1, "ClientReportSender"

    const-string v2, "Sending client reports failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 178
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$100(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;->close()V

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const-string v0, "ClientReportSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client reports failed to send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->access$300(Lcom/google/android/voicesearch/speechservice/ClientReportSender;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
