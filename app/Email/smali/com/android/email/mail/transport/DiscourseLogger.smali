.class public Lcom/android/email/mail/transport/DiscourseLogger;
.super Ljava/lang/Object;
.source "DiscourseLogger.java"


# instance fields
.field private mBuffer:[Ljava/lang/String;

.field private final mBufferSize:I

.field private mPos:I

.field private final mReceivingLine:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "bufferSize"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    .line 38
    iput p1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    .line 39
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->initBuffer()V

    .line 40
    return-void
.end method

.method private addLine(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    aput-object p1, v0, v1

    .line 49
    iget v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 50
    iget v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    iget v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    if-lt v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 53
    :cond_0
    return-void
.end method

.method private addReceivingLineToBuffer()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    return-void
.end method

.method private initBuffer()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public addReceivedByte(I)V
    .locals 5
    .parameter "b"

    .prologue
    .line 67
    const/16 v1, 0x20

    if-gt v1, p1, :cond_1

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivingLineToBuffer()V

    goto :goto_0

    .line 71
    :cond_2
    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, hex:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public addSentCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method getLines()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivingLineToBuffer()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 90
    .local v4, start:I
    iget v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 92
    .local v1, pos:I
    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 93
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    rem-int v1, v5, v6

    .line 97
    if-ne v1, v4, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 100
    .local v2, ret:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    return-object v2
.end method

.method public logLastDiscourse()V
    .locals 7

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->getLines()[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, lines:[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v5, "Email"

    const-string v6, "Last network activities:"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 116
    .local v4, r:Ljava/lang/String;
    const-string v5, "Email"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v4           #r:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->initBuffer()V

    goto :goto_0
.end method
