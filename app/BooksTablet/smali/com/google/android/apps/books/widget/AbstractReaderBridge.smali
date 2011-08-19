.class public abstract Lcom/google/android/apps/books/widget/AbstractReaderBridge;
.super Ljava/lang/Object;
.source "AbstractReaderBridge.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/ReaderEvents;


# static fields
.field private static final ABBREVIATION_MARKER:Ljava/lang/String; = "...(excised)..."

.field public static final HANDLE_CHAPTER_READY:I = 0x5

.field public static final HANDLE_CONTENT_LOADING:I = 0x4

.field public static final HANDLE_CONTENT_READY:I = 0x6

.field public static final HANDLE_INVALID_POSITION:I = 0x8

.field public static final HANDLE_JS_API_READY:I = 0x1

.field public static final HANDLE_PREFERENCES_APPLIED:I = 0x3

.field public static final HANDLE_READER_INITIALIZED:I = 0x2

.field public static final HANDLE_READING_POSITION_CHANGED:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final LOGD:Z = false

.field private static final MAX_ABBREVIATED_LENGTH:I = 0xc8

.field public static final NULL_CONTENT_URI:Ljava/lang/String; = "data:"

.field public static final REQUEST_ID_KEY:Ljava/lang/String; = "requestId"

.field private static final TAG:Ljava/lang/String; = "BooksBridge"


# instance fields
.field protected final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "BooksBridge"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "missing handler"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private abbreviateContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "content"

    .prologue
    const/16 v5, 0x64

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 255
    .local v1, length:I
    const-string v3, "BooksBridge"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_1

    .line 256
    :cond_0
    move-object v2, p1

    .line 262
    .local v2, returnValue:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 258
    .end local v2           #returnValue:Ljava/lang/String;
    :cond_1
    const/16 v0, 0x64

    .line 259
    .local v0, half:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...(excised)..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #returnValue:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 236
    const-string v0, "BooksBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 245
    const-string v0, "BooksBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public getResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "volumeId"
    .parameter "resourceId"

    .prologue
    const-string v6, "data:"

    const-string v5, "BooksBridge"

    .line 188
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->getResourceContentUriOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, content:Ljava/lang/String;
    const-string v2, "BooksBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildResourceContentUri() success, length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 198
    .end local v0           #content:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 191
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 193
    .local v1, e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    const-string v2, "BooksBridge"

    invoke-virtual {v1}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v2, "data:"

    move-object v2, v6

    goto :goto_0

    .line 195
    .end local v1           #e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 197
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "BooksBridge"

    const-string v2, "error during buildResourceContentUri()"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const-string v2, "data:"

    move-object v2, v6

    goto :goto_0
.end method

.method public abstract getResourceContentUriOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getSegmentContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "volumeId"
    .parameter "segmentId"

    .prologue
    const-string v9, "getSectionContent(volumeId="

    const-string v8, "BooksBridge"

    const-string v7, ", segmentId="

    const-string v6, ")"

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->getSegmentContentOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, content:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->LOGD:Z

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectionContent(volumeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, signature:Ljava/lang/String;
    const-string v3, "BooksBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->abbreviateContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #signature:Ljava/lang/String;
    :cond_0
    move-object v3, v0

    .line 175
    .end local v0           #content:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 170
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 171
    .local v1, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectionContent(volumeId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segmentId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .restart local v2       #signature:Ljava/lang/String;
    const-string v3, "BooksBridge"

    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    .line 175
    const-string v3, ""

    goto :goto_0
.end method

.method public abstract getSegmentContentOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onChapterReady(II)V
    .locals 4
    .parameter "chapterIndex"
    .parameter "pageCount"

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 112
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onContentLoading()V
    .locals 3

    .prologue
    .line 97
    sget-boolean v1, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "BooksBridge"

    const-string v2, "onContentLoading()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onContentReady()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 121
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract onError(Ljava/lang/Throwable;)V
.end method

.method public onInvalidPosition(I)V
    .locals 5
    .parameter "margin"

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 149
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onJsApiReady()V
    .locals 3

    .prologue
    .line 67
    sget-boolean v1, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "BooksBridge"

    const-string v2, "onJsApiReady()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPreferencesApplied()V
    .locals 3

    .prologue
    .line 87
    sget-boolean v1, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "BooksBridge"

    const-string v2, "onPreferencesApplied()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReaderInitialized()V
    .locals 3

    .prologue
    .line 77
    sget-boolean v1, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "BooksBridge"

    const-string v2, "onReaderInitialized()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReadingPositionChanged(IILjava/lang/String;I)V
    .locals 5
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "requestId"

    .prologue
    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 133
    .local v2, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "requestId"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 139
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
