.class public Lnet/yostore/utility/HttpFileUpload;
.super Ljava/lang/Object;
.source "HttpFileUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private defaultFile:Ljava/lang/String;

.field private handler:Lnet/yostore/aws/api/sax/BaseSaxHandler;

.field private ip:Ljava/lang/String;

.field private param:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILnet/yostore/aws/api/sax/BaseSaxHandler;)V
    .locals 1
    .parameter "indexFile"
    .parameter "ip"
    .parameter "port"
    .parameter "handler"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lnet/yostore/utility/HttpFileUpload;->port:I

    .line 33
    iput-object p1, p0, Lnet/yostore/utility/HttpFileUpload;->defaultFile:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lnet/yostore/utility/HttpFileUpload;->ip:Ljava/lang/String;

    .line 35
    iput p3, p0, Lnet/yostore/utility/HttpFileUpload;->port:I

    .line 36
    return-void
.end method


# virtual methods
.method public doUpload()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v22, Ljava/net/Socket;

    invoke-direct/range {v22 .. v22}, Ljava/net/Socket;-><init>()V

    .line 64
    .local v22, sock:Ljava/net/Socket;
    new-instance v14, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/utility/HttpFileUpload;->ip:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/yostore/utility/HttpFileUpload;->port:I

    move/from16 v24, v0

    move-object v0, v14

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v14, hostAddr:Ljava/net/InetSocketAddress;
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 67
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .local v10, dostream:Ljava/io/DataOutputStream;
    const-string v6, "\r\n-----------------------------2609120531336--\r\n"

    .line 70
    .local v6, boundaryTail:Ljava/lang/String;
    const-string v9, "-----------------------------2609120531336\r\nContent-Disposition: form-data; name=\"%s\"\r\n\r\n%s\r\n"

    .line 71
    .local v9, c_FormData:Ljava/lang/String;
    const-string v8, "-----------------------------2609120531336\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    .line 75
    .local v8, c_FileData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/utility/HttpFileUpload;->param:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 76
    .local v20, kv:[Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/utility/HttpFileUpload;->defaultFile:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v11, fi:Ljava/io/File;
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    .local v13, fos:Ljava/io/FileInputStream;
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "uploadfile"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/yostore/utility/HttpFileUpload;->returnContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, file:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v25

    add-long v4, v23, v25

    .line 86
    .local v4, ContentLength:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/utility/HttpFileUpload;->param:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 87
    .local v17, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 88
    .local v15, i:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_0

    .line 100
    const-string v23, "POST /jh/HttpUpload.do HTTP/1.1\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 101
    const-string v23, "Accept: */*\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    const-string v23, "Referer: http://218.199.29.199:8080/jh/index.html\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 103
    const-string v23, "Accept-Language: zh-cn\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 104
    const-string v23, "Content-Type: multipart/form-data; boundary=---------------------------2609120531336\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    const-string v23, "Accept-Encoding: gzip, deflate\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    const-string v23, "User-Agent: Mozilla/4.0 (Windows XP 5.1) Java/1. 6.0\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 107
    const-string v23, "Host: 127.0.0.1:80\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 108
    const-string v23, "Content-Length: %d\r\n"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 109
    const-string v23, "Connection: Keep-Alive\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 110
    const-string v23, "Cache-Control: no-cache\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 111
    const-string v23, "\r\n"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 115
    const/16 v18, 0x0

    .local v18, j:I
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 118
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 120
    const/16 v23, 0x800

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v7, v0

    .line 121
    .local v7, buf:[B
    invoke-virtual {v13, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    .line 122
    .local v21, num:I
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u50b3\u9001\u6587\u4ef6\u4e2d:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 128
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 131
    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 132
    .local v16, is:Ljava/io/InputStream;
    sget-object v23, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/utility/HttpFileUpload;->handler:Lnet/yostore/aws/api/sax/BaseSaxHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 134
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 136
    return-void

    .line 90
    .end local v7           #buf:[B
    .end local v16           #is:Ljava/io/InputStream;
    .end local v18           #j:I
    .end local v21           #num:I
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 93
    .local v19, key:Ljava/lang/Object;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v19, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/utility/HttpFileUpload;->param:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, v23, v24

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v15

    .line 94
    aget-object v23, v20, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v4, v4, v23

    .line 95
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 116
    .end local v19           #key:Ljava/lang/Object;
    .restart local v18       #j:I
    :cond_1
    aget-object v23, v20, v18

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 115
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 124
    .restart local v7       #buf:[B
    .restart local v21       #num:I
    :cond_2
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v7

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 125
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 126
    invoke-virtual {v13, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    goto/16 :goto_2
.end method

.method public returnContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 40
    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const-string v0, "text/html"

    .line 57
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_2
    const-string v0, "text/plain"

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    const-string v0, "image/gif"

    goto :goto_0

    .line 46
    :cond_4
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    :cond_5
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 48
    :cond_6
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    const-string v0, "application/octec-stream"

    goto :goto_0

    .line 50
    :cond_7
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    const-string v0, "audio/mpeg"

    goto :goto_0

    .line 52
    :cond_8
    const-string v0, ".rar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 53
    const-string v0, "application/rar"

    goto :goto_0

    .line 54
    :cond_9
    const-string v0, ".exe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    const-string v0, "application/x-unknown"

    goto :goto_0

    .line 57
    :cond_a
    const-string v0, "text/plain"

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lnet/yostore/utility/HttpFileUpload;->doUpload()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0
.end method
