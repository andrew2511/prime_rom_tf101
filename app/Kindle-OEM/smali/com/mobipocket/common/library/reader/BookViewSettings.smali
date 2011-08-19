.class public Lcom/mobipocket/common/library/reader/BookViewSettings;
.super Ljava/lang/Object;
.source "BookViewSettings.java"


# instance fields
.field private alwaysBold:Z

.field private defaultBGColor:I

.field private defaultCellPadding:I

.field private defaultFontName:Ljava/lang/String;

.field private defaultFontSize:I

.field private defaultLineSpacing:I

.field private defaultLinkColor:I

.field private defaultTextColor:I

.field private defaultXMargin:I

.field private defaultYMargin:I

.field private fullJustification:Z

.field private highlightColor:I

.field private linkUnderlined:Z

.field private noteColor:I

.field private noteIconColor:I

.field private noteIconSelectedColor:I

.field private searchResultBGColor:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const v4, 0xffff00

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontSize:I

    .line 87
    const/16 v0, 0x8

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultXMargin:I

    .line 88
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultYMargin:I

    .line 89
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLineSpacing:I

    .line 90
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultCellPadding:I

    .line 92
    iput v2, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultTextColor:I

    .line 93
    const/16 v0, 0xff

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLinkColor:I

    .line 94
    const v0, 0xffffff

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultBGColor:I

    .line 95
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->highlightColor:I

    .line 96
    const v0, 0x888888

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteColor:I

    .line 97
    const v0, 0x81afef

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteIconColor:I

    .line 98
    const v0, 0x1658ae

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteIconSelectedColor:I

    .line 99
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->fullJustification:Z

    .line 100
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->linkUnderlined:Z

    .line 101
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->alwaysBold:Z

    .line 102
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->searchResultBGColor:I

    .line 103
    return-void
.end method


# virtual methods
.method public final areLinkUnderlined()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->linkUnderlined:Z

    return v0
.end method

.method public final getDefaultBGColor()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultBGColor:I

    return v0
.end method

.method final getDefaultCellPadding()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultCellPadding:I

    return v0
.end method

.method public final getDefaultFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultFontSize()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontSize:I

    return v0
.end method

.method public final getDefaultLineSpacing()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLineSpacing:I

    return v0
.end method

.method public final getDefaultLinkColor()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLinkColor:I

    return v0
.end method

.method public final getDefaultTextColor()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultTextColor:I

    return v0
.end method

.method public final getDefaultXMargin()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultXMargin:I

    return v0
.end method

.method public final getDefaultYMargin()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultYMargin:I

    return v0
.end method

.method public final getHighlightColor()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->highlightColor:I

    return v0
.end method

.method public final getNoteColor()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteColor:I

    return v0
.end method

.method public final getNoteIconColor()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteIconColor:I

    return v0
.end method

.method public final getNoteIconSelectedColor()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteIconSelectedColor:I

    return v0
.end method

.method public final getSearchResultBGColor()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->searchResultBGColor:I

    return v0
.end method

.method public final isDefaultJustified()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->fullJustification:Z

    return v0
.end method

.method public final isFontAlwaysBold()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->alwaysBold:Z

    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 473
    .local v1, dataLength:I
    new-array v0, v1, [B

    .line 474
    .local v0, brutData:[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 475
    new-instance v3, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 476
    .local v3, pStream:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v2

    .line 477
    .local v2, length:I
    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x27

    if-eq v1, v4, :cond_0

    .line 479
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Wrong settings format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :cond_0
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStringUTF16BE(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    .line 482
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontSize:I

    .line 483
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultXMargin:I

    .line 484
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultYMargin:I

    .line 485
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLineSpacing:I

    .line 486
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultTextColor:I

    .line 487
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLinkColor:I

    .line 488
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultBGColor:I

    .line 489
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->fullJustification:Z

    .line 490
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->linkUnderlined:Z

    .line 491
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->alwaysBold:Z

    .line 492
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->searchResultBGColor:I

    .line 493
    return-void
.end method

.method public final setDefaultBGColor(I)V
    .locals 0
    .parameter "defaultBGTextColorRGB"

    .prologue
    .line 302
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultBGColor:I

    .line 303
    return-void
.end method

.method final setDefaultCellPadding(I)V
    .locals 0
    .parameter "defaultCellPadding"

    .prologue
    .line 536
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultCellPadding:I

    .line 537
    return-void
.end method

.method public final setDefaultFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultFontName"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public final setDefaultFontSize(I)V
    .locals 0
    .parameter "defaultFontSize"

    .prologue
    .line 147
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontSize:I

    .line 148
    return-void
.end method

.method public final setDefaultJustified(Z)V
    .locals 0
    .parameter "isJustified"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->fullJustification:Z

    .line 415
    return-void
.end method

.method public final setDefaultLineSpacing(I)V
    .locals 0
    .parameter "defaultLineSpacing"

    .prologue
    .line 236
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLineSpacing:I

    .line 237
    return-void
.end method

.method public final setDefaultLinkColor(I)V
    .locals 0
    .parameter "defaultLinkColorRGB"

    .prologue
    .line 280
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLinkColor:I

    .line 281
    return-void
.end method

.method public final setDefaultTextColor(I)V
    .locals 0
    .parameter "defaultTextColorRGB"

    .prologue
    .line 258
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultTextColor:I

    .line 259
    return-void
.end method

.method public final setDefaultXMargin(I)V
    .locals 0
    .parameter "defaultXMargin"

    .prologue
    .line 192
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultXMargin:I

    .line 193
    return-void
.end method

.method public final setDefaultYMargin(I)V
    .locals 0
    .parameter "defaultYMargin"

    .prologue
    .line 214
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultYMargin:I

    .line 215
    return-void
.end method

.method public final setFontAlwaysBold(Z)V
    .locals 0
    .parameter "alwaysBold"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->alwaysBold:Z

    .line 171
    return-void
.end method

.method public final setHighlightColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 325
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->highlightColor:I

    .line 326
    return-void
.end method

.method public final setNoteColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 370
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteColor:I

    .line 371
    return-void
.end method

.method public final setNoteIconColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 381
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteIconColor:I

    .line 382
    return-void
.end method

.method public final setNoteIconSelectedColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 392
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->noteIconSelectedColor:I

    .line 393
    return-void
.end method

.method public final setSearchResultBGColor(I)V
    .locals 0
    .parameter "searchResultBGColorRGB"

    .prologue
    .line 459
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->searchResultBGColor:I

    .line 460
    return-void
.end method

.method public final setUnderlinedLink(Z)V
    .locals 0
    .parameter "linkUnderlined"

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->linkUnderlined:Z

    .line 438
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x27

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 507
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 508
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 516
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultFontSize:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 517
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultXMargin:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 518
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultYMargin:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 519
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLineSpacing:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 520
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultTextColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 521
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultLinkColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 522
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->defaultBGColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 523
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->fullJustification:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 524
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->linkUnderlined:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 525
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->alwaysBold:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 526
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewSettings;->searchResultBGColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 527
    return-void

    .line 512
    :cond_0
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method
