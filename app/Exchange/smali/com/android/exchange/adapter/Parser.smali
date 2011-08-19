.class public abstract Lcom/android/exchange/adapter/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Parser$EasParserException;,
        Lcom/android/exchange/adapter/Parser$EodException;,
        Lcom/android/exchange/adapter/Parser$EofException;
    }
.end annotation


# static fields
.field private static tagTables:[[Ljava/lang/String;


# instance fields
.field private capture:Z

.field private captureArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field public endTag:I

.field private in:Ljava/io/InputStream;

.field private logTag:Ljava/lang/String;

.field private logging:Z

.field public name:Ljava/lang/String;

.field private nameArray:[Ljava/lang/String;

.field private nextId:I

.field private noContent:Z

.field public num:I

.field public page:I

.field public startTag:I

.field private startTagArray:[I

.field public tag:I

.field private tagTable:[Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x18

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    const/high16 v4, -0x8000

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 53
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 67
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 76
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 79
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 83
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 138
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 139
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 140
    aget-object v1, v2, v0

    .line 141
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 142
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1           #page:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;)V

    .line 149
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 150
    return-void
.end method

.method private final getNext(Z)I
    .locals 9
    .parameter "asInt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/high16 v4, -0x8000

    .line 354
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 355
    .local v2, savedEndTag:I
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v3, v6, :cond_0

    .line 356
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 361
    :goto_0
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v3, :cond_1

    .line 362
    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 363
    iput-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 364
    iput v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 365
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 433
    :goto_1
    return v3

    .line 358
    :cond_0
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_0

    .line 368
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 369
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 372
    .local v0, id:I
    :goto_2
    if-nez v0, :cond_2

    .line 373
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 375
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 377
    .local v1, pg:I
    shl-int/lit8 v3, v1, 0x6

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 379
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 380
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 381
    goto :goto_2

    .line 382
    .end local v1           #pg:I
    :cond_2
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 384
    packed-switch v0, :pswitch_data_0

    .line 417
    :pswitch_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 419
    and-int/lit8 v3, v0, 0x3f

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 421
    and-int/lit8 v3, v0, 0x40

    if-nez v3, :cond_8

    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 422
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 423
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v4, v8

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 429
    :cond_3
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v5, v3, v4

    .line 433
    :cond_4
    :goto_4
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_1

    .line 387
    :pswitch_1
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_4

    .line 392
    :pswitch_2
    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 393
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v3, :cond_5

    .line 394
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 398
    :cond_5
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_4

    .line 403
    :pswitch_3
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 404
    if-eqz p1, :cond_6

    .line 405
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineInt()I

    move-result v3

    iput v3, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 409
    :goto_5
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v3, :cond_4

    .line 410
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v4, v8

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_7

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->num:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 407
    :cond_6
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_5

    .line 411
    :cond_7
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move v3, v7

    .line 421
    goto/16 :goto_3

    .line 384
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private nextId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 456
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    return v0
.end method

.method private read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 446
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 461
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 462
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 464
    :cond_0
    return v0
.end method

.method private readInlineInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 476
    const/4 v1, 0x0

    .line 479
    .local v1, result:I
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 481
    .local v0, i:I
    if-nez v0, :cond_0

    .line 482
    return v1

    .line 484
    :cond_0
    if-lt v0, v4, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 485
    mul-int/lit8 v2, v1, 0xa

    sub-int v3, v0, v4

    add-int v1, v2, v3

    goto :goto_0

    .line 487
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Non integer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readInlineString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 513
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 514
    .local v0, i:I
    if-nez v0, :cond_0

    .line 521
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 522
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 524
    return-object v2

    .line 516
    .end local v2           #res:Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 517
    new-instance v3, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v3, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v3

    .line 519
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 497
    .local v1, result:I
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 498
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 499
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 501
    return v1
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 206
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_1

    .line 207
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 210
    :cond_0
    const-string v1, ""

    .line 221
    :goto_0
    return-object v1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 215
    .local v0, val:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 217
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_2

    .line 218
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move-object v1, v0

    .line 221
    goto :goto_0
.end method

.method public getValueInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 232
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 233
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_0

    move v1, v2

    .line 245
    :goto_0
    return v1

    .line 237
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 239
    .local v0, val:I
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 241
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_1

    .line 242
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move v1, v0

    .line 245
    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 334
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 335
    .local v0, cr:I
    if-lez v0, :cond_0

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    return-void
.end method

.method public nextTag(I)I
    .locals 3
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 261
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 262
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 264
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 265
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 266
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 274
    :goto_0
    return v0

    .line 268
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 269
    goto :goto_0

    .line 273
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-nez v0, :cond_3

    move v0, v2

    .line 274
    goto :goto_0

    .line 279
    :cond_3
    new-instance v0, Lcom/android/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EodException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0
.end method

.method public parse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method resetInput(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 331
    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 322
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    .line 323
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 324
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 325
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 326
    sget-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setLoggingTag(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public skipTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 291
    .local v0, thisTag:I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 292
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_0

    .line 293
    return-void

    .line 298
    :cond_1
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method
