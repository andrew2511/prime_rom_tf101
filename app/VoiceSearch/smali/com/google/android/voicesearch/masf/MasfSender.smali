.class public Lcom/google/android/voicesearch/masf/MasfSender;
.super Ljava/lang/Object;
.source "MasfSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/masf/MasfSender$Response;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"

.field private static final DBG:Z = false

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "http://www.google.com/m/appreq/vs"

.field private static final TAG:Ljava/lang/String; = "MasfSender"


# instance fields
.field private final mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/util/CookieStore;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 48
    return-void
.end method

.method public static createHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 187
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 191
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 192
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 193
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 194
    const-string v0, "Content-Type"

    const-string v1, "application/binary"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object p0
.end method

.method private readCookieResponse(Ljava/io/DataInputStream;)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 159
    :try_start_0
    new-instance v0, Lcom/google/android/voicesearch/masf/MasfSender$Response;

    invoke-direct {v0, p0, p1}, Lcom/google/android/voicesearch/masf/MasfSender$Response;-><init>(Lcom/google/android/voicesearch/masf/MasfSender;Ljava/io/DataInputStream;)V

    .line 161
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->data:[B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 164
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 166
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 167
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 175
    :goto_0
    return-wide v0

    .line 169
    :catch_0
    move-exception v0

    move-wide v0, v3

    .line 171
    goto :goto_0

    :cond_0
    move-wide v0, v3

    goto :goto_0
.end method


# virtual methods
.method public send(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "http://www.google.com/m/appreq/vs"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/MasfSender;->createHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/voicesearch/masf/MasfSender;->send(Ljava/util/ArrayList;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/util/ArrayList;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 84
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/google/android/voicesearch/masf/LiteRequest;->createHeaderRequest(Ljava/lang/String;J)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    .line 89
    const/4 v0, 0x1

    .line 90
    const-string v3, "g:c"

    invoke-static {v3}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    move v2, v0

    move v0, v4

    .line 92
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/masf/LiteRequest;

    .line 93
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    move v4, v5

    goto :goto_2

    :cond_2
    move v3, v7

    move v4, v7

    .line 96
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 97
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 96
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_3

    .line 99
    :cond_3
    const-string v0, "Content-Length"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v4, v7

    .line 104
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 105
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 104
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 113
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 115
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    .line 116
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_5
    const-string v0, "Content-Type"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "application/binary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 123
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_6
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 130
    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    .line 131
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad protocol version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_7
    if-eqz v2, :cond_8

    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/masf/MasfSender;->readCookieResponse(Ljava/io/DataInputStream;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/voicesearch/util/CookieStore;->setCookie(J)V

    .line 136
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/masf/LiteRequest;

    .line 141
    new-instance v4, Lcom/google/android/voicesearch/masf/MasfSender$Response;

    invoke-direct {v4, p0, v1}, Lcom/google/android/voicesearch/masf/MasfSender$Response;-><init>(Lcom/google/android/voicesearch/masf/MasfSender;Ljava/io/DataInputStream;)V

    .line 142
    iget v5, v4, Lcom/google/android/voicesearch/masf/MasfSender$Response;->type:I

    const v6, 0x8100

    if-ne v5, v6, :cond_9

    .line 143
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 144
    iget-object v4, v4, Lcom/google/android/voicesearch/masf/MasfSender$Response;->data:[B

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/masf/LiteRequest;->setResponse(Ljava/lang/Object;)V

    goto :goto_5

    .line 147
    :cond_a
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    .line 148
    goto/16 :goto_0

    :cond_b
    move v0, v2

    move v2, v7

    goto/16 :goto_1
.end method
