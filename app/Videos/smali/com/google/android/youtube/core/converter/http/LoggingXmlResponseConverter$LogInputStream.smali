.class final Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;
.super Ljava/io/FilterInputStream;
.source "LoggingXmlResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogInputStream"
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;,"Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter<TT;>.LogInputStream;"
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;->this$0:Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter;

    .line 55
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;->builder:Ljava/lang/StringBuilder;

    .line 57
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;,"Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter<TT;>.LogInputStream;"
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, n:I
    if-gez v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;->builder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/LoggingXmlResponseConverter$LogInputStream;->builder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
