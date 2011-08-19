.class public Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;
.super Ljava/lang/Object;
.source "CTPZAnnotationFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;
    }
.end annotation


# static fields
.field private static final ANNOTATIONS_EXTENSION:Ljava/lang/String; = "mbp"

.field private static final ANNOTATIONS_EXTENSION_TMP:Ljava/lang/String; = "tmt"

.field private static final FILE_HEADER:I = -0x21523545

.field private static final VERSION:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    return-void
.end method

.method private static checkHeaderAndVersion(Ljava/io/DataInputStream;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 364
    .line 366
    if-eqz p0, :cond_2

    .line 370
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 371
    const v1, -0x21523545

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 372
    :goto_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    :goto_1
    if-nez v0, :cond_1

    move v0, v2

    :goto_2
    return v0

    :cond_0
    move v0, v3

    .line 371
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    move v0, v2

    .line 381
    goto :goto_1

    .line 380
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 383
    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public static computeAnnotationsFilename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileSystem"
    .parameter "bookFilename"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, annotationFile:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileName(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mbp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static getLastPositionRead(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 58
    const/4 v0, -0x1

    .line 60
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->computeAnnotationsFilename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->dataInputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 68
    :try_start_0
    invoke-static {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->checkHeaderAndVersion(Ljava/io/DataInputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 69
    :goto_0
    if-nez v3, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 74
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    if-eqz v3, :cond_1

    .line 88
    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 92
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v3, v5

    .line 68
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 86
    if-eqz v4, :cond_1

    .line 88
    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_1

    .line 82
    :catch_1
    move-exception v2

    .line 86
    if-eqz v4, :cond_1

    .line 88
    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    move v2, v5

    :goto_2
    if-eqz v2, :cond_3

    .line 88
    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :cond_3
    throw v0

    .line 86
    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_2
.end method

.method public static readAnnotations(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)Ljava/util/Vector;
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->dataInputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v8

    .line 107
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 108
    if-eqz v8, :cond_3

    .line 111
    invoke-static {v8}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->checkHeaderAndVersion(Ljava/io/DataInputStream;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move v10, v0

    .line 114
    :goto_0
    if-nez v10, :cond_d

    .line 117
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_d

    .line 120
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 124
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 125
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_c

    .line 130
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v11, v0

    .line 132
    :goto_1
    const/4 v0, 0x0

    move v13, v0

    move v0, v10

    move v10, v13

    :goto_2
    if-ge v10, v11, :cond_b

    if-nez v0, :cond_b

    .line 134
    const/4 v1, 0x0

    .line 137
    const/4 v5, 0x0

    .line 139
    const/4 v6, 0x0

    .line 141
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    .line 144
    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 146
    packed-switch v2, :pswitch_data_0

    .line 164
    const/4 v0, 0x1

    move v2, v1

    move v12, v0

    .line 168
    :goto_3
    if-nez v12, :cond_6

    .line 171
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 174
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 177
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/amazon/topaz/TPZBook;->getText(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 183
    :goto_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 185
    const/4 v6, -0x1

    if-eq v0, v6, :cond_9

    .line 187
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 190
    :goto_5
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-eq v0, v5, :cond_5

    .line 192
    const/16 p2, 0x1

    .line 203
    :goto_6
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 204
    :goto_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v1, v11, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v1, v11, :cond_2

    if-eqz v0, :cond_2

    .line 207
    :cond_1
    const/16 p2, 0x1

    .line 211
    :cond_2
    :goto_8
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    if-eqz p2, :cond_3

    .line 225
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 230
    :cond_3
    :goto_9
    return-object v9

    .line 111
    :cond_4
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_0

    .line 149
    :pswitch_0
    const/4 v1, 0x0

    move v2, v1

    move v12, v0

    .line 150
    goto :goto_3

    .line 152
    :pswitch_1
    const/4 v1, 0x2

    move v2, v1

    move v12, v0

    .line 153
    goto :goto_3

    .line 155
    :pswitch_2
    const/4 v1, 0x1

    move v2, v1

    move v12, v0

    .line 156
    goto :goto_3

    .line 158
    :pswitch_3
    const/4 v1, 0x4

    move v2, v1

    move v12, v0

    .line 159
    goto :goto_3

    .line 161
    :pswitch_4
    const/4 v1, 0x5

    move v2, v1

    move v12, v0

    .line 162
    goto :goto_3

    .line 197
    :cond_5
    :try_start_4
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move v5, v3

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 200
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 132
    :cond_6
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v0, v12

    goto/16 :goto_2

    .line 203
    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    .line 215
    :catch_0
    move-exception p2

    const/16 p2, 0x1

    .line 223
    if-eqz p2, :cond_3

    .line 225
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_9

    .line 219
    :catch_1
    move-exception p2

    const/16 p2, 0x1

    .line 223
    if-eqz p2, :cond_3

    .line 225
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_9

    .line 223
    :catchall_0
    move-exception p2

    move v0, v10

    :goto_a
    if-eqz v0, :cond_8

    .line 225
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :cond_8
    throw p2

    .line 223
    :catchall_1
    move-exception p2

    goto :goto_a

    :catchall_2
    move-exception p2

    move v0, v12

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v13, v0

    move/from16 v0, p2

    move-object/from16 p2, v13

    goto :goto_a

    :cond_9
    move-object v6, v5

    goto/16 :goto_5

    :cond_a
    move-object v1, v6

    goto/16 :goto_4

    :cond_b
    move/from16 p2, v0

    goto :goto_6

    :cond_c
    move v11, v0

    goto/16 :goto_1

    :cond_d
    move/from16 p2, v10

    goto :goto_8

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static writeAnnotations(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 240
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->computeAnnotationsFilename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileName(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tmt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, v1, v2, v9}, Lcom/amazon/system/io/internal/FileSystemHelper;->rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {p0, v1, v9}, Lcom/amazon/system/io/internal/FileSystemHelper;->dataOutputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/DataOutputStream;

    move-result-object v2

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create output stream from file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    if-eqz v2, :cond_7

    .line 264
    const v4, -0x21523545

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 265
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 267
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    move v4, v11

    move v5, v11

    move v6, v10

    .line 271
    :goto_1
    array-length v7, p2

    if-ge v4, v7, :cond_3

    .line 273
    aget-object v7, p2, v4

    .line 274
    invoke-virtual {v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 276
    invoke-virtual {v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v6

    .line 271
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 284
    :cond_3
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v11

    .line 287
    :goto_3
    array-length v5, p2

    if-ge v4, v5, :cond_6

    .line 289
    aget-object v5, p2, v4

    .line 292
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move v6, v10

    .line 311
    :goto_4
    if-ne v6, v10, :cond_4

    .line 287
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :pswitch_0
    move v6, v11

    .line 296
    goto :goto_4

    :pswitch_1
    move v6, v9

    .line 299
    goto :goto_4

    .line 301
    :pswitch_2
    const/4 v6, 0x2

    .line 302
    goto :goto_4

    :pswitch_3
    move v6, v12

    .line 305
    goto :goto_4

    .line 307
    :pswitch_4
    const/4 v6, 0x4

    .line 308
    goto :goto_4

    :pswitch_5
    move v6, v10

    .line 310
    goto :goto_4

    .line 322
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 323
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 324
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 325
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 326
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 328
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 329
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 346
    :catch_0
    move-exception v2

    invoke-static {p0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 347
    invoke-static {p0, v3, v0, v9}, Lcom/amazon/system/io/internal/FileSystemHelper;->rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 333
    :cond_5
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_5

    .line 336
    :cond_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 337
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 340
    invoke-static {p0, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 354
    :cond_7
    invoke-static {p0, v3, v0, v9}, Lcom/amazon/system/io/internal/FileSystemHelper;->rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
