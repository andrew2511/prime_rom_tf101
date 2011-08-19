.class Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;
.super Landroid/os/AsyncTask;
.source "LatinImeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinImeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddTextToDropBoxTask"
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
.field private final mData:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private final mTime:J

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinImeLogger;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinImeLogger;Landroid/os/DropBoxManager;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "db"
    .parameter "time"
    .parameter "data"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->this$0:Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mDropBox:Landroid/os/DropBoxManager;

    .line 161
    iput-wide p3, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mTime:J

    .line 162
    iput-object p5, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mData:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 166
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "LatinIMELogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mDropBox:Landroid/os/DropBoxManager;

    const-string v1, "LatinIMELogs"

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->this$0:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-wide v1, p0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->mTime:J

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->access$202(Lcom/android/inputmethod/latin/LatinImeLogger;J)J

    .line 175
    return-void
.end method
