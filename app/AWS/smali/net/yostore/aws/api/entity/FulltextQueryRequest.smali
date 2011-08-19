.class public Lnet/yostore/aws/api/entity/FulltextQueryRequest;
.super Ljava/lang/Object;
.source "FulltextQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind:[I


# instance fields
.field private ext:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field private markid:Ljava/lang/String;

.field private offset:I

.field private pagesize:I

.field private token:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->$SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->values()[Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FOLDER:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->$SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V
    .locals 2
    .parameter "userid"
    .parameter "token"
    .parameter "keyword"
    .parameter "markid"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"
    .parameter "ext"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->token:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->userid:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->keyword:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->pagesize:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->offset:I

    .line 35
    sget-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 36
    iput-object v1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->userid:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->token:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->keyword:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    .line 23
    iput p5, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->pagesize:I

    .line 24
    iput p6, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->offset:I

    .line 25
    iput-object p7, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 26
    iput-object p8, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private splitCJKKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "keyword"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 146
    .local v2, keywordArr:[C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v3, keywordcharList:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 148
    :cond_0
    aget-char v4, v2, v1

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 149
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    aget-char v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, " "

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    aget-char v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 159
    :cond_2
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-char v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    return-object v0
.end method

.method public getMarkid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->offset:I

    return v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->pagesize:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 85
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->keyword:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setKind(Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 78
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 79
    return-void
.end method

.method public setMarkid(Ljava/lang/String;)V
    .locals 0
    .parameter "markid"

    .prologue
    .line 57
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 71
    iput p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->offset:I

    .line 72
    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "pagesize"

    .prologue
    .line 64
    iput p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->pagesize:I

    .line 65
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 167
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->token:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "userid"

    .prologue
    .line 43
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->userid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 90
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 92
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 93
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    const-string v3, ""

    const-string v4, "query"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v3, ""

    const-string v4, "keyword"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->keyword:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->keyword:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->splitCJKKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    :goto_0
    const-string v3, ""

    const-string v4, "keyword"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 106
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->markid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    :cond_0
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    iget v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->pagesize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string v3, ""

    const-string v4, "offset"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    iget v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->offset:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    const-string v3, ""

    const-string v4, "offset"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string v3, ""

    const-string v4, "kind"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    invoke-static {}, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->$SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind()[I

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 128
    :goto_1
    const-string v3, ""

    const-string v4, "kind"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 130
    const-string v3, ""

    const-string v4, "ext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->ext:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string v3, ""

    const-string v4, "ext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    :cond_1
    const-string v3, ""

    const-string v4, "query"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 136
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 103
    :cond_2
    const-string v3, "**"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 140
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    const-string v3, "0"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 122
    :pswitch_1
    const-string v3, "1"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 125
    :pswitch_2
    const-string v3, "2"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
