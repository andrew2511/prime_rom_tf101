.class public Lcom/google/android/youtube/core/converter/http/SubtitleConverter;
.super Ljava/lang/Object;
.source "SubtitleConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Lcom/google/android/youtube/core/model/Subtitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "[:.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubtitleUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "v"
    .parameter "lang"
    .parameter "name"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://video.google.com/timedtext?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&format=sbv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static timeToMillis(Ljava/lang/String;)I
    .locals 6
    .parameter "timeStr"

    .prologue
    .line 108
    sget-object v5, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, timeParts:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, hours:I
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, minutes:I
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    .local v3, seconds:I
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, millis:I
    mul-int/lit8 v5, v0, 0x3c

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v5, v1

    return v5
.end method


# virtual methods
.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->convertRequest(Lcom/google/android/youtube/core/model/SubtitleTrack;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Lcom/google/android/youtube/core/model/SubtitleTrack;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .parameter "track"

    .prologue
    .line 41
    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, videoId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;->isAutoTranslated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->getSubtitleUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    .local v0, url:Ljava/lang/StringBuilder;
    const-string v2, "&tlang="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 47
    .end local v0           #url:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->getSubtitleUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .restart local v0       #url:Ljava/lang/StringBuilder;
    goto :goto_0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/Subtitle;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Lcom/google/android/youtube/core/model/Subtitle$Builder;

    invoke-direct {v1}, Lcom/google/android/youtube/core/model/Subtitle$Builder;-><init>()V

    .line 65
    .local v1, builder:Lcom/google/android/youtube/core/model/Subtitle$Builder;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 66
    .local v2, content:Ljava/io/InputStream;
    new-instance v7, Ljava/io/LineNumberReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 81
    .local v7, lineReader:Ljava/io/LineNumberReader;
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, inputLine:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_2

    .line 83
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 84
    .local v5, indexOfComma:I
    if-gez v5, :cond_0

    .line 85
    new-instance v9, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v10, "invalid format in line, [startTime,endTime] expected"

    invoke-direct {v9, v10}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2           #content:Ljava/io/InputStream;
    .end local v5           #indexOfComma:I
    .end local v6           #inputLine:Ljava/lang/String;
    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 101
    .local v3, e:Ljava/io/IOException;
    new-instance v9, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v9, v3}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 87
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #content:Ljava/io/InputStream;
    .restart local v5       #indexOfComma:I
    .restart local v6       #inputLine:Ljava/lang/String;
    .restart local v7       #lineReader:Ljava/io/LineNumberReader;
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->timeToMillis(Ljava/lang/String;)I

    move-result v8

    .line 88
    .local v8, startTime:I
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->timeToMillis(Ljava/lang/String;)I

    move-result v4

    .line 90
    .local v4, endTime:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, block:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 92
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8, v4}, Lcom/google/android/youtube/core/model/Subtitle$Builder;->addLine(Ljava/lang/String;II)Lcom/google/android/youtube/core/model/Subtitle$Builder;

    .line 98
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 99
    goto :goto_0

    .line 103
    .end local v0           #block:Ljava/lang/StringBuilder;
    .end local v4           #endTime:I
    .end local v5           #indexOfComma:I
    .end local v8           #startTime:I
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subtitle$Builder;->build()Lcom/google/android/youtube/core/model/Subtitle;

    move-result-object v9

    return-object v9
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/Subtitle;

    move-result-object v0

    return-object v0
.end method
