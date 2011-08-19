.class Lcom/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardParserImpl_V21$1;,
        Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;,
        Lcom/android/vcard/VCardParserImpl_V21$EmptyInterpreter;
    }
.end annotation


# instance fields
.field protected mCanceled:Z

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field protected mInterpreter:Lcom/android/vcard/VCardInterpreter;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field private mTimeEndProperty:J

.field private mTimeHandleBase64:J

.field private mTimeHandleMiscPropertyValue:J

.field private mTimeHandleQuotedPrintable:J

.field private mTimeParseAdrOrgN:J

.field private mTimeParseItems:J

.field private mTimeParseLineAndHandleGroup:J

.field private mTimeParsePropertyValues:J

.field private mTimeReadEndRecord:J

.field private mTimeReadStartRecord:J

.field private mTimeStartProperty:J

.field private mTimeTotal:J

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 207
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 210
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mNestCount:I

    .line 214
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 846
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 847
    .local v2, pos:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 856
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 858
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 860
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 861
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    .line 863
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 866
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 872
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    :goto_1
    return-object v3

    :cond_4
    move-object v3, p1

    goto :goto_1
.end method

.method private isAsciiLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 712
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 713
    :cond_1
    const/4 v0, 0x1

    .line 715
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 14
    .parameter "firstRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_1

    .line 295
    iget v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v8, :cond_1

    .line 296
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v7, v8, :cond_1

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v12

    .line 321
    .end local v7           #i:I
    :goto_1
    return v8

    .line 300
    .restart local v7       #i:I
    :cond_0
    const/4 v0, 0x1

    .line 296
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 305
    .end local v7           #i:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v12

    .line 306
    goto :goto_1

    .line 308
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 309
    .local v5, beforeStartEntry:J
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/android/vcard/VCardInterpreter;->startEntry()V

    .line 310
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 313
    .local v3, beforeParseItems:J
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 314
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    .line 316
    invoke-virtual {p0, v13, v12}, Lcom/android/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    .local v1, beforeEndEntry:J
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/android/vcard/VCardInterpreter;->endEntry()V

    .line 320
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    move v8, v13

    .line 321
    goto :goto_1
.end method

.method private showPerformanceInfo()V
    .locals 4

    .prologue
    .line 987
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total parsing time:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total readLine time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v2}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for handling the beggining of the record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for handling the end of the record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for parsing line, and handling group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for parsing ADR, ORG, and N fields:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for parsing property values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for handling normal property values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for handling Quoted-Printable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for handling Base64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 979
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 980
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 982
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 1064
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "ParserImpl received cancel operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    .line 1066
    return-void
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 883
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 890
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 893
    const-string v2, "VCardParserImpl_V21"

    const-string v3, "Found a next property during parsing a BASE64 string, which must not contain semi-colon. Treat the line as next property."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v2, "VCardParserImpl_V21"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problematic line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 901
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 903
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1021
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 280
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    return-void

    .line 954
    :cond_0
    new-instance v0, Lcom/android/vcard/exception/VCardAgentNotSupportedException;

    const-string v1, "AGENT Property is not supported now."

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v0, p2}, Lcom/android/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .parameter "charsetval"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Lcom/android/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Lcom/android/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 667
    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 671
    return-void

    .line 669
    :cond_1
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 689
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 691
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 693
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 694
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 695
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 696
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 697
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 695
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_2
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 701
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 702
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 703
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 704
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :cond_4
    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Lcom/android/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 708
    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v4, p1}, Lcom/android/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 939
    return-void
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .locals 0
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 598
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 600
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 620
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 604
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 609
    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 611
    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 613
    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_5
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 729
    .local v10, upperEncoding:Ljava/lang/String;
    const-string v12, "QUOTED-PRINTABLE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 731
    .local v8, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 732
    .local v7, result:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v11, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Lcom/android/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 735
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    .line 815
    .end local v7           #result:Ljava/lang/String;
    .end local v11           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 736
    .end local v8           #start:J
    :cond_0
    const-string v12, "BASE64"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "B"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 738
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 742
    .restart local v8       #start:J
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v3}, Lcom/android/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    goto :goto_0

    .line 745
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 746
    .local v5, error:Ljava/lang/OutOfMemoryError;
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/android/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_1

    .line 751
    .end local v5           #error:Ljava/lang/OutOfMemoryError;
    .end local v8           #start:J
    :cond_2
    const-string v12, "7BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "8BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "X-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 753
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v12

    if-nez v12, :cond_6

    .line 781
    const/4 v4, 0x0

    .line 783
    .local v4, builder:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v6

    .line 790
    .local v6, nextLine:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_5

    const-string v12, "END:VCARD"

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 795
    if-nez v4, :cond_4

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 804
    :cond_5
    if-eqz v4, :cond_6

    .line 805
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 809
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #nextLine:Ljava/lang/String;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 810
    .restart local v8       #start:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .restart local v11       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Lcom/android/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 813
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 5
    .parameter "ptypeval"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    const-string v1, "TYPE"

    invoke-interface {v0, v1}, Lcom/android/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 5
    .parameter "pvalueval"

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Lcom/android/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 962
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    .locals 7
    .parameter "is"
    .parameter "interpreter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1039
    if-nez p1, :cond_0

    .line 1040
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "InputStream must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1043
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1044
    .local v2, tmpReader:Ljava/io/InputStreamReader;
    new-instance v3, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v3, v2}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1046
    if-eqz p2, :cond_4

    move-object v3, p2

    :goto_0
    iput-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1049
    .local v0, start:J
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    if-eqz v3, :cond_1

    .line 1050
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v3}, Lcom/android/vcard/VCardInterpreter;->start()V

    .line 1052
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseVCardFile()V

    .line 1053
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    if-eqz v3, :cond_2

    .line 1054
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v3}, Lcom/android/vcard/VCardInterpreter;->end()V

    .line 1056
    :cond_2
    iget-wide v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeTotal:J

    .line 1058
    invoke-static {}, Lcom/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1059
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->showPerformanceInfo()V

    .line 1061
    :cond_3
    return-void

    .line 1046
    .end local v0           #start:J
    :cond_4
    new-instance v3, Lcom/android/vcard/VCardParserImpl_V21$EmptyInterpreter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>(Lcom/android/vcard/VCardParserImpl_V21$1;)V

    goto :goto_0
.end method

.method protected parseItem()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 450
    const-string v6, "8BIT"

    iput-object v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 455
    .local v4, start:J
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_0

    move v6, v8

    .line 489
    :goto_0
    return v6

    .line 459
    :cond_0
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 460
    new-instance v6, Lcom/android/vcard/exception/VCardInvalidLineException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 462
    :cond_1
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v8

    .line 465
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    .line 467
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 468
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 469
    invoke-virtual {p0, v1, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-wide v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    move v6, v10

    .line 471
    goto :goto_0

    .line 472
    :cond_3
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 473
    invoke-virtual {p0, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v10

    .line 474
    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 476
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 477
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 478
    new-instance v6, Lcom/android/vcard/exception/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 480
    :cond_5
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 482
    :cond_6
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 483
    new-instance v6, Lcom/android/vcard/exception/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 486
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 487
    invoke-virtual {p0, v1, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-wide v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    move v6, v10

    .line 489
    goto/16 :goto_0

    .line 492
    :cond_8
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v7, 0x0

    .line 414
    .local v7, ended:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 415
    .local v0, beforeBeginProperty:J
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/android/vcard/VCardInterpreter;->startProperty()V

    .line 416
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 417
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v7

    .line 418
    if-nez v7, :cond_0

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 420
    .local v2, beforeEndProperty:J
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/android/vcard/VCardInterpreter;->endProperty()V

    .line 421
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    .line 424
    .end local v2           #beforeEndProperty:J
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 426
    .local v4, beforeStartProperty:J
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/android/vcard/VCardInterpreter;->startProperty()V

    .line 427
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 435
    :goto_1
    if-nez v7, :cond_0

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 437
    .restart local v2       #beforeEndProperty:J
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/android/vcard/VCardInterpreter;->endProperty()V

    .line 438
    iget-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    goto :goto_0

    .line 430
    .end local v2           #beforeEndProperty:J
    :catch_0
    move-exception v6

    .line 431
    .local v6, e:Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v7, 0x0

    goto :goto_1

    .line 441
    .end local v4           #beforeStartProperty:J
    .end local v6           #e:Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    :cond_1
    return-void
.end method

.method protected parseVCardFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x1

    .line 226
    .local v1, readingFirstFile:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 227
    const-string v3, "VCardParserImpl_V21"

    const-string v4, "Cancel request has come. exitting parse operation."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_2

    .line 237
    const/4 v2, 0x1

    .line 238
    .local v2, useCache:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v0, v3, :cond_2

    .line 239
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 240
    const/4 v2, 0x0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    .end local v0           #i:I
    .end local v2           #useCache:Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const/4 v1, 0x0

    goto :goto_0

    .line 243
    :cond_2
    return-void
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    move v3, v5

    .line 355
    :goto_0
    return v3

    .line 336
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 340
    const-string v3, ":"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 349
    .local v0, length:I
    if-ne v0, v7, :cond_2

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    .line 351
    goto :goto_0

    .line 352
    :cond_2
    if-nez p1, :cond_4

    .line 353
    iget v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_3

    .line 354
    iput-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    move v3, v5

    .line 355
    goto :goto_0

    .line 357
    :cond_3
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_4
    if-nez p1, :cond_0

    .line 363
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .locals 5
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 382
    :cond_0
    if-eqz p1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 397
    .local v0, line:Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    :goto_1
    return-void

    .line 388
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 390
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 401
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 402
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_4
    const/4 p1, 0x0

    .line 405
    if-nez p2, :cond_0

    goto :goto_1
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 503
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 504
    .local v3, length:I
    if-lez v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_0

    .line 505
    new-instance v8, Lcom/android/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Lcom/android/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 508
    :cond_0
    const/4 v7, 0x0

    .line 509
    .local v7, state:I
    const/4 v4, 0x0

    .line 513
    .local v4, nameIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_d

    .line 514
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 515
    .local v0, ch:C
    packed-switch v7, :pswitch_data_0

    .line 513
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :pswitch_0
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_4

    .line 518
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 520
    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 521
    const/4 v8, 0x0

    .line 570
    .end local v5           #propertyName:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 523
    .restart local v5       #propertyName:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Lcom/android/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 524
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 525
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_3

    .line 526
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_3
    move-object v8, v6

    .line 530
    goto :goto_2

    .line 528
    :cond_3
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_3

    .line 531
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_6

    .line 532
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 534
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Empty group found. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_4
    add-int/lit8 v4, v2, 0x1

    .line 539
    goto :goto_1

    .line 536
    :cond_5
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8, v1}, Lcom/android/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 539
    .end local v1           #groupName:Ljava/lang/String;
    :cond_6
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_1

    .line 540
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 541
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 542
    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 543
    const/4 v8, 0x0

    goto :goto_2

    .line 545
    :cond_7
    iget-object v8, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/android/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Lcom/android/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 546
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 547
    add-int/lit8 v4, v2, 0x1

    .line 548
    const/4 v7, 0x1

    .line 549
    goto :goto_1

    .line 554
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_9

    .line 555
    const-string v8, "2.1"

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 556
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_8
    const/4 v7, 0x2

    goto/16 :goto_1

    .line 560
    :cond_9
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_a

    .line 561
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_1

    .line 563
    :cond_a
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_1

    .line 564
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 565
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_b

    .line 566
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_5
    move-object v8, v6

    .line 570
    goto/16 :goto_2

    .line 568
    :cond_b
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_5

    .line 575
    :pswitch_2
    const/16 v8, 0x22

    if-ne v0, v8, :cond_1

    .line 576
    const-string v8, "2.1"

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 577
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 587
    .end local v0           #ch:C
    :cond_d
    new-instance v8, Lcom/android/vcard/exception/VCardInvalidLineException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
