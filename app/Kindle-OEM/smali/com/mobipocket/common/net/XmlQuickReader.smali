.class public Lcom/mobipocket/common/net/XmlQuickReader;
.super Ljava/lang/Object;
.source "XmlQuickReader.java"


# instance fields
.field private attributes:Ljava/lang/String;

.field private currentTagId:I

.field private currentTagLevel:I

.field private currentTagName:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private lastBeginPosition:I

.field private final pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

.field private parseAttributes:Z

.field private parseComments:Z

.field private position:I

.field private processingLevel:I

.field public size:I

.field private skipped:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/net/StringStream;)V
    .locals 2
    .parameter "pXml"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .line 34
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    .line 46
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    .line 50
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagId:I

    .line 52
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->skipped:Ljava/lang/String;

    .line 59
    iput-boolean v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseAttributes:Z

    .line 61
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->lastBeginPosition:I

    .line 68
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    .line 176
    iput-boolean v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseComments:Z

    .line 76
    iput-object p1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/net/StringStream;Z)V
    .locals 2
    .parameter "pXml"
    .parameter "pParseAttributes"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .line 34
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    .line 46
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    .line 50
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagId:I

    .line 52
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->skipped:Ljava/lang/String;

    .line 59
    iput-boolean v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseAttributes:Z

    .line 61
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->lastBeginPosition:I

    .line 68
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    .line 176
    iput-boolean v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseComments:Z

    .line 87
    iput-object p1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    .line 89
    iput-boolean p2, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseAttributes:Z

    .line 90
    return-void
.end method


# virtual methods
.method public final attributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 150
    iget-object v3, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v6

    .line 167
    :goto_0
    return-object v3

    .line 154
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, vstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, pos:I
    if-eq v0, v5, :cond_3

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x1

    .line 158
    iget-object v3, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, qpos:I
    if-ne v1, v5, :cond_1

    iget-object v3, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    const-string v4, "\'"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 160
    :cond_1
    if-ne v1, v5, :cond_2

    move-object v3, v6

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v1           #qpos:I
    :cond_3
    move-object v3, v6

    .line 167
    goto :goto_0
.end method

.method public final getParsedXml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    iget v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->lastBeginPosition:I

    iget v2, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkippedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->skipped:Ljava/lang/String;

    return-object v0
.end method

.method public final id()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagId:I

    return v0
.end method

.method public final jumpTo(Ljava/lang/String;)Z
    .locals 1
    .parameter "pTagName"

    .prologue
    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/net/XmlQuickReader;->nextTag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final level()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    return v0
.end method

.method public final nextTag()Z
    .locals 14

    .prologue
    const/16 v13, 0x3c

    const/4 v9, 0x0

    const/16 v10, 0x2f

    const/16 v12, 0x3e

    const/4 v11, 0x1

    .line 189
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 190
    const-string v7, ""

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 191
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    .line 192
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagId:I

    .line 193
    iput v9, p0, Lcom/mobipocket/common/net/XmlQuickReader;->size:I

    .line 195
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->lastBeginPosition:I

    .line 196
    iget v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .local v0, begin:I
    :goto_0
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v0}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 199
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v0}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_0

    .line 200
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    iget v8, p0, Lcom/mobipocket/common/net/XmlQuickReader;->lastBeginPosition:I

    invoke-virtual {v7, v8, v0}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->skipped:Ljava/lang/String;

    .line 201
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_1

    .line 205
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    sub-int/2addr v7, v11

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    .line 206
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v12, v0}, Lcom/mobipocket/common/net/StringStream;->indexOf(II)I

    move-result v0

    .line 312
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-ne v7, v8, :cond_2

    iget-boolean v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseComments:Z

    if-eqz v7, :cond_0

    :cond_2
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_0

    .line 211
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    .line 212
    move v1, v0

    .line 214
    .local v1, end:I
    move v2, v0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 215
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-eq v7, v12, :cond_3

    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_8

    .line 221
    :cond_3
    move v1, v2

    .line 226
    :cond_4
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8, v1}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 227
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v1}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-eq v7, v12, :cond_7

    .line 230
    move v3, v1

    .line 232
    .local v3, tagEnd:I
    move v2, v1

    :goto_2
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 234
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_9

    .line 236
    move v3, v2

    .line 241
    :cond_5
    iget-boolean v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseAttributes:Z

    if-eqz v7, :cond_6

    if-le v3, v1, :cond_6

    .line 242
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8, v3}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->attributes:Ljava/lang/String;

    .line 244
    :cond_6
    move v1, v3

    .line 248
    .end local v3           #tagEnd:I
    :cond_7
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    sub-int v8, v1, v11

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_b

    .line 250
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v7, v1, 0x1

    :goto_3
    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .line 251
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    .line 252
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    sub-int/2addr v7, v11

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    move v7, v11

    .line 314
    .end local v1           #end:I
    .end local v2           #i:I
    :goto_4
    return v7

    .line 214
    .restart local v1       #end:I
    .restart local v2       #i:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 232
    .restart local v3       #tagEnd:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3           #tagEnd:I
    :cond_a
    move v7, v1

    .line 250
    goto :goto_3

    .line 256
    :cond_b
    const/4 v5, 0x0

    .line 257
    .local v5, weAreInCDATA:Z
    const/4 v6, 0x0

    .line 258
    .local v6, weWhereInCDATA:Z
    move v2, v1

    :goto_5
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 259
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    const-string v8, "<![CDATA["

    invoke-virtual {v7, v8, v2}, Lcom/mobipocket/common/net/StringStream;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 260
    const/4 v5, 0x1

    .line 261
    const/4 v6, 0x1

    .line 263
    :cond_c
    if-eqz v5, :cond_d

    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    const-string v8, "]]>"

    invoke-virtual {v7, v8, v2}, Lcom/mobipocket/common/net/StringStream;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 264
    const/4 v5, 0x0

    .line 265
    add-int/lit8 v2, v2, 0x3

    .line 267
    :cond_d
    if-nez v5, :cond_16

    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v2}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_16

    .line 270
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    iget-object v8, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v8, v2, 0x1

    :goto_6
    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_14

    .line 273
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v2, 0x2

    add-int/lit8 v9, v2, 0x2

    iget-object v10, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 275
    sub-int v7, v2, v1

    if-le v7, v11, :cond_e

    .line 277
    if-eqz v6, :cond_10

    .line 281
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v1, 0xa

    const/4 v9, 0x3

    sub-int v9, v2, v9

    invoke-virtual {v7, v8, v9}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 288
    :cond_e
    :goto_7
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    invoke-virtual {v7, v12, v2}, Lcom/mobipocket/common/net/StringStream;->indexOf(II)I

    move-result v4

    .line 289
    .local v4, temp:I
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_11

    add-int/lit8 v7, v4, 0x1

    :goto_8
    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .line 290
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    .line 291
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    sub-int/2addr v7, v11

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    move v7, v11

    .line 292
    goto/16 :goto_4

    .end local v4           #temp:I
    :cond_f
    move v8, v2

    .line 270
    goto :goto_6

    .line 285
    :cond_10
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8, v2}, Lcom/mobipocket/common/net/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    goto :goto_7

    .restart local v4       #temp:I
    :cond_11
    move v7, v4

    .line 289
    goto :goto_8

    .line 296
    .end local v4           #temp:I
    :cond_12
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    .line 297
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v7, v1, 0x1

    :goto_9
    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    move v7, v11

    .line 298
    goto/16 :goto_4

    :cond_13
    move v7, v1

    .line 297
    goto :goto_9

    .line 304
    :cond_14
    iget v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagLevel:I

    .line 305
    iget-object v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->pXmlStringStream:Lcom/mobipocket/common/net/StringStream;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/net/StringStream;->exist(I)Z

    move-result v7

    if-eqz v7, :cond_15

    add-int/lit8 v7, v1, 0x1

    :goto_a
    iput v7, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    move v7, v11

    .line 306
    goto/16 :goto_4

    :cond_15
    move v7, v1

    .line 305
    goto :goto_a

    .line 258
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .end local v1           #end:I
    .end local v2           #i:I
    .end local v5           #weAreInCDATA:Z
    .end local v6           #weWhereInCDATA:Z
    :cond_17
    move v7, v9

    .line 314
    goto/16 :goto_4
.end method

.method public parseComments()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseComments:Z

    .line 180
    return-void
.end method

.method public final position()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->position:I

    .line 338
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->processingLevel:I

    .line 339
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 340
    iput-object v1, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 341
    iput v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagId:I

    .line 342
    return-void
.end method

.method public stopParsingAttributes()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->parseAttributes:Z

    .line 98
    return-void
.end method

.method public final tagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagName:Ljava/lang/String;

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mobipocket/common/net/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
