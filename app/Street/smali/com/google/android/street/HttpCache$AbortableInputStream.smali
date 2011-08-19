.class final Lcom/google/android/street/HttpCache$AbortableInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/HttpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AbortableInputStream"
.end annotation


# instance fields
.field private final mAbortableRequest:Lorg/apache/http/client/methods/AbortableHttpRequest;

.field private final mAborter:Lcom/google/android/street/HttpCache$Aborter;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Lcom/google/android/street/HttpCache$Aborter;Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .locals 2
    .parameter "in"
    .parameter "aborter"
    .parameter "abortableRequest"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    iput-object p2, p0, Lcom/google/android/street/HttpCache$AbortableInputStream;->mAborter:Lcom/google/android/street/HttpCache$Aborter;

    .line 168
    iput-object p3, p0, Lcom/google/android/street/HttpCache$AbortableInputStream;->mAbortableRequest:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 169
    if-nez p3, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "abortableRequest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    return-void
.end method

.method public static getStream(Ljava/io/InputStream;Lcom/google/android/street/HttpCache$Aborter;Lorg/apache/http/client/methods/AbortableHttpRequest;)Ljava/io/InputStream;
    .locals 1
    .parameter "in"
    .parameter "aborter"
    .parameter "abortableRequest"

    .prologue
    .line 153
    if-nez p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/street/HttpCache$AbortableInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/street/HttpCache$AbortableInputStream;-><init>(Ljava/io/InputStream;Lcom/google/android/street/HttpCache$Aborter;Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/street/HttpCache$AbortableInputStream;->mAborter:Lcom/google/android/street/HttpCache$Aborter;

    iget-object v1, p0, Lcom/google/android/street/HttpCache$AbortableInputStream;->mAbortableRequest:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/street/HttpCache$Aborter;->remove(Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    .line 178
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 179
    return-void
.end method
