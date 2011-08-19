.class public Lcom/asus/reader/bookconverter/GoodReadPdbBook;
.super Lcom/asus/reader/bookconverter/PdbBook;
.source "GoodReadPdbBook.java"

# interfaces
.implements Lcom/asus/reader/bookconverter/Ebook;


# static fields
.field public static PDB_ESC:B

.field public static UPDB_CR_1:B

.field public static UPDB_CR_2:B

.field public static UPDB_ESC_1:B

.field public static UPDB_ESC_2:B

.field public static UPDB_NL_1:B

.field public static UPDB_NL_2:B


# instance fields
.field private mBookPath:Ljava/lang/String;

.field private mCharset:Ljava/lang/String;

.field private mErrorId:I

.field private mFile:Ljava/io/File;

.field private mIsUpdb:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x1b

    const/4 v1, 0x0

    .line 203
    sput-byte v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->PDB_ESC:B

    .line 204
    sput-byte v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_1:B

    .line 205
    sput-byte v1, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_2:B

    .line 206
    const/16 v0, 0xd

    sput-byte v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_CR_1:B

    .line 207
    sput-byte v1, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_CR_2:B

    .line 208
    const/16 v0, 0xa

    sput-byte v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_NL_1:B

    .line 209
    sput-byte v1, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_NL_2:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "bookPath"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/asus/reader/bookconverter/PdbBook;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mBookPath:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mIsUpdb:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mTitle:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private createChapters(Ljava/lang/String;Lcom/asus/reader/bookconverter/EzEpubCreator;)V
    .locals 25
    .parameter "language"
    .parameter "epub"

    .prologue
    .line 106
    const/4 v5, 0x0

    .line 107
    .local v5, chapterIndex:I
    const/16 v6, 0x63

    .line 110
    .local v6, chapterNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mCharset:Ljava/lang/String;

    move-object v7, v0

    .line 114
    .local v7, charset:Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mFile:Ljava/io/File;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 115
    .local v12, in:Ljava/io/InputStream;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->record_header_offset:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move v0, v11

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 116
    if-nez v11, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->record_header_offset:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 118
    .local v8, dataLength:I
    const/16 v17, 0x0

    .line 119
    .local v17, tBuffer:[B
    move v0, v8

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 120
    const/16 v22, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v22

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 115
    .end local v8           #dataLength:I
    .end local v17           #tBuffer:[B
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/16 v22, 0x1

    move v0, v11

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->record_header_offset:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->record_header_offset:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    sub-int v24, v11, v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    sub-int v8, v22, v23

    .line 124
    .restart local v8       #dataLength:I
    const/16 v17, 0x0

    .line 125
    .restart local v17       #tBuffer:[B
    move v0, v8

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 126
    const/16 v22, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v22

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mIsUpdb:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->getGoodreadFirstRecordSplitIndexs([BZ)Ljava/util/List;

    move-result-object v16

    .line 132
    .local v16, splitIndexList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .line 133
    .local v18, tCategoryBuffer:[B
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dataLength:I
    check-cast v8, [Ljava/lang/Integer;

    const/16 v22, 0x1

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 134
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v22, 0x0

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mTitle:Ljava/lang/String;

    .line 137
    const/16 v18, 0x0

    .line 138
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v22, 0x1

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 139
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v22, 0x0

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 143
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v10, hrefList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v14, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 146
    .local v19, tChapterIndex:I
    const/4 v13, 0x2

    .local v13, j:I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 147
    move-object/from16 v0, v16

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v22, 0x0

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 148
    .local v20, tDataIndex:I
    move-object/from16 v0, v16

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    const/16 v22, 0x1

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 149
    .local v21, tDataLength:I
    const/16 v18, 0x0

    .line 150
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 151
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-static/range {v19 .. v19}, Lcom/asus/reader/bookconverter/EzEpubContent;->getChapterPath(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->getGoodReadTranformContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v19, v19, 0x1

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 157
    .end local v20           #tDataIndex:I
    .end local v21           #tDataLength:I
    :cond_2
    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createContentsHtml(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 194
    .end local v10           #hrefList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #i:I
    .end local v12           #in:Ljava/io/InputStream;
    .end local v13           #j:I
    .end local v14           #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #splitIndexList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Integer;>;"
    .end local v17           #tBuffer:[B
    .end local v18           #tCategoryBuffer:[B
    .end local v19           #tChapterIndex:I
    :catch_0
    move-exception v22

    move-object/from16 v9, v22

    .line 195
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 158
    .restart local v11       #i:I
    .restart local v12       #in:Ljava/io/InputStream;
    :cond_3
    if-ge v5, v6, :cond_0

    .line 160
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->record_header_offset:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->record_header_offset:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    sub-int v24, v11, v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    sub-int v8, v22, v23

    .line 164
    .restart local v8       #dataLength:I
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createChapterHtmlHeader(Ljava/lang/String;I)Z

    .line 165
    const-string v22, "<p>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createChapterHtmlBody([B)Z

    .line 167
    :goto_4
    if-lez v8, :cond_5

    .line 168
    const-string v15, ""

    .line 169
    .local v15, s:Ljava/lang/String;
    const v22, 0xa000

    move v0, v8

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 170
    const/16 v17, 0x0

    .line 171
    .restart local v17       #tBuffer:[B
    const v22, 0xa000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 172
    const/16 v22, 0x0

    const v23, 0xa000

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 173
    new-instance v15, Ljava/lang/String;

    .end local v15           #s:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 174
    .restart local v15       #s:Ljava/lang/String;
    const v22, 0xa000

    sub-int v8, v8, v22

    .line 182
    :goto_5
    invoke-static {v15}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->getTxtHtmlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 183
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createChapterHtmlBody([B)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 197
    .end local v8           #dataLength:I
    .end local v11           #i:I
    .end local v12           #in:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    .end local v17           #tBuffer:[B
    :catch_1
    move-exception v22

    move-object/from16 v9, v22

    .line 198
    .local v9, e:Ljava/io/IOException;
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 176
    .end local v9           #e:Ljava/io/IOException;
    .restart local v8       #dataLength:I
    .restart local v11       #i:I
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v15       #s:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .line 177
    .restart local v17       #tBuffer:[B
    :try_start_2
    move v0, v8

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 178
    const/16 v22, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v22

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 179
    new-instance v15, Ljava/lang/String;

    .end local v15           #s:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 180
    .restart local v15       #s:Ljava/lang/String;
    sub-int/2addr v8, v8

    goto :goto_5

    .line 188
    .end local v15           #s:Ljava/lang/String;
    .end local v17           #tBuffer:[B
    :cond_5
    const-string v22, "</p>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createChapterHtmlBody([B)Z

    .line 189
    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createChapterHtmlFooter(I)Z

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 193
    .end local v8           #dataLength:I
    :cond_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method private static getGoodReadTranformContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 308
    const-string v0, "\uff5c"

    const-string v1, "\uff0d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 309
    const-string v0, "\ufe35"

    const-string v1, "\uff08"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 310
    const-string v0, "\ufe36"

    const-string v1, "\uff09"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 311
    const-string v0, "\ufe37"

    const-string v1, "\uff5b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 312
    const-string v0, "\ufe38"

    const-string v1, "\uff5d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 313
    const-string v0, "\ufe39"

    const-string v1, "\u3014"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 314
    const-string v0, "\ufe3a"

    const-string v1, "\u3015"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 315
    const-string v0, "\ufe3b"

    const-string v1, "\u3010"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 316
    const-string v0, "\ufe3c"

    const-string v1, "\u3011"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 317
    const-string v0, "\ufe3d"

    const-string v1, "\u300a"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 318
    const-string v0, "\ufe3e"

    const-string v1, "\u300b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 319
    const-string v0, "\ufe3f"

    const-string v1, "\u3008"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 320
    const-string v0, "\ufe40"

    const-string v1, "\u3009"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 321
    const-string v0, "\ufe41"

    const-string v1, "\u300c"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 322
    const-string v0, "\ufe42"

    const-string v1, "\u300d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 323
    const-string v0, "\ufe43"

    const-string v1, "\u300e"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 324
    const-string v0, "\ufe44"

    const-string v1, "\u300f"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 325
    const-string v0, "\ufe47"

    const-string v1, "\uff3d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 326
    const-string v0, "\ufe48"

    const-string v1, "\uff3b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 327
    const-string v0, "\ufe17"

    const-string v1, "\u3017"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 328
    const-string v0, "\ufe18"

    const-string v1, "\u3016"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 329
    return-object p0
.end method

.method private getGoodreadFirstRecordSplitIndexs([BZ)Ljava/util/List;
    .locals 10
    .parameter "data"
    .parameter "isUpdb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 212
    const/16 v1, 0x8

    .line 213
    .local v1, spaceNum:I
    const/4 v3, 0x0

    .line 214
    .local v3, tDataBeginIndex:I
    const/4 v4, 0x0

    .line 216
    .local v4, tDataEndIndex:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, splitIndexArray:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Integer;>;"
    if-eqz p2, :cond_6

    .line 220
    move v3, v1

    .line 221
    move v0, v3

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 222
    move v4, v0

    .line 223
    array-length v5, p1

    const/4 v6, 0x6

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_3

    aget-byte v5, p1, v0

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_1:B

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_2:B

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_1:B

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_2:B

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_1:B

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x5

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_2:B

    if-ne v5, v6, :cond_3

    .line 225
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v3, v0, 0x6

    .line 231
    :cond_0
    move v0, v3

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_1

    .line 232
    move v4, v0

    .line 233
    aget-byte v5, p1, v0

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_1:B

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_ESC_2:B

    if-ne v5, v6, :cond_4

    .line 234
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v0, 0x2

    .line 240
    :cond_1
    move v0, v3

    :goto_2
    array-length v5, p1

    if-ge v0, v5, :cond_5

    .line 241
    move v4, v0

    .line 242
    aget-byte v5, p1, v0

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_CR_1:B

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_CR_2:B

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_NL_1:B

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->UPDB_NL_2:B

    if-ne v5, v6, :cond_2

    .line 243
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v3, v0, 0x4

    .line 240
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 231
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_5
    array-length v4, p1

    .line 249
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_3
    return-object v2

    .line 254
    .end local v0           #i:I
    :cond_6
    move v3, v1

    .line 255
    move v0, v3

    .restart local v0       #i:I
    :goto_4
    array-length v5, p1

    if-ge v0, v5, :cond_7

    .line 256
    move v4, v0

    .line 257
    array-length v5, p1

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_9

    aget-byte v5, p1, v0

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->PDB_ESC:B

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->PDB_ESC:B

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->PDB_ESC:B

    if-ne v5, v6, :cond_9

    .line 258
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v3, v0, 0x3

    .line 264
    :cond_7
    move v0, v3

    :goto_5
    array-length v5, p1

    if-ge v0, v5, :cond_a

    .line 265
    move v4, v0

    .line 266
    aget-byte v5, p1, v0

    sget-byte v6, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->PDB_ESC:B

    if-ne v5, v6, :cond_8

    .line 267
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v3, v0, 0x1

    .line 264
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 255
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 273
    :cond_a
    array-length v4, p1

    .line 274
    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static getTxtHtmlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "txtContent"

    .prologue
    .line 282
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 283
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 284
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 285
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string v0, "\r\n"

    const-string v1, "</p><p>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 288
    const-string v0, "\r"

    const-string v1, "</p><p>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 289
    const-string v0, "\n"

    const-string v1, "</p><p>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 290
    const-string v0, "\u000c"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 292
    const-string v0, "\t"

    const-string v1, "      "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-static {p0}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->getGoodReadTranformContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert2Epub()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 89
    const-string v2, "zh-tw"

    .line 90
    .local v2, language:Ljava/lang/String;
    new-instance v0, Lcom/asus/reader/bookconverter/EzEpubCreator;

    invoke-direct {v0}, Lcom/asus/reader/bookconverter/EzEpubCreator;-><init>()V

    .line 91
    .local v0, epub:Lcom/asus/reader/bookconverter/EzEpubCreator;
    const-string v3, "zh-tw"

    invoke-virtual {v0, v3}, Lcom/asus/reader/bookconverter/EzEpubCreator;->init(Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, initSuccess:Z
    if-ne v1, v4, :cond_0

    .line 93
    invoke-virtual {v0, v2, v5}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createTitlePage(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    invoke-direct {p0, v2, v0}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->createChapters(Ljava/lang/String;Lcom/asus/reader/bookconverter/EzEpubCreator;)V

    .line 95
    invoke-virtual {v0, v5}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createTocNcx(Ljava/lang/String;)Z

    .line 96
    invoke-virtual {v0}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createContentOpf()Z

    .line 98
    invoke-virtual {v0}, Lcom/asus/reader/bookconverter/EzEpubCreator;->finishStream()V

    move v3, v4

    .line 101
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->name:[B

    iget-object v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mCharset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-object v1

    .line 354
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 355
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mTitle:Ljava/lang/String;

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mBookPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mFile:Ljava/io/File;

    .line 44
    iget-object v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    iput v7, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mErrorId:I

    move v3, v6

    .line 82
    :goto_0
    return v3

    .line 50
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v1, in:Ljava/io/InputStream;
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 52
    .local v2, tempBuffer:[B
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 53
    invoke-virtual {p0, v2}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->parseHeader([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    const/4 v3, 0x3

    iput v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mErrorId:I

    move v3, v6

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    const-string v3, "BOOK"

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->type:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    const-string v3, "MTIT"

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->creator:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const-string v3, "Big5-HKSCS"

    iput-object v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mCharset:Ljava/lang/String;

    :goto_1
    move v3, v7

    .line 82
    goto :goto_0

    .line 58
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #tempBuffer:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 59
    .local v0, e:Ljava/io/FileNotFoundException;
    iput v7, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mErrorId:I

    move v3, v6

    .line 61
    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 63
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x2

    iput v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mErrorId:I

    move v3, v6

    .line 65
    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #tempBuffer:[B
    :cond_2
    const-string v3, "MTIU"

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->creator:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    iput-boolean v7, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mIsUpdb:Z

    .line 73
    const-string v3, "utf-16le"

    iput-object v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_3
    const/4 v3, 0x5

    iput v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mErrorId:I

    move v3, v6

    .line 76
    goto :goto_0

    .line 79
    :cond_4
    const/4 v3, 0x4

    iput v3, p0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->mErrorId:I

    move v3, v6

    .line 80
    goto :goto_0
.end method
