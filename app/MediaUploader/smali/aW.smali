.class final LaW;
.super Ljava/lang/Object;


# instance fields
.field final a:LaO;

.field private b:Ljava/io/DataInputStream;

.field private c:LaH;

.field private d:Ljava/lang/Exception;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Vector;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private synthetic u:LaT;


# direct methods
.method public constructor <init>(LaT;LaO;)V
    .locals 2

    iput-object p1, p0, LaW;->u:LaT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaW;->e:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaW;->h:Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, LaW;->k:I

    iput-object p2, p0, LaW;->a:LaO;

    :try_start_0
    invoke-virtual {p2}, LaO;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaW;->f:Ljava/lang/String;

    iget-object v0, p0, LaW;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, LaT;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaW;->g:Ljava/lang/String;

    invoke-virtual {p2}, LaO;->g()I

    move-result v0

    iput v0, p0, LaW;->j:I

    invoke-virtual {p2}, LaO;->f()I

    move-result v0

    iput v0, p0, LaW;->n:I

    invoke-virtual {p2}, LaO;->a()I

    move-result v0

    iput v0, p0, LaW;->m:I

    invoke-virtual {p2}, LaO;->h()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LaO;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, LaW;->m:I

    invoke-static {p1}, LaT;->a(LaT;)Law;

    move-result-object v1

    invoke-virtual {v1}, Law;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LaW;->m:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, LaW;->d:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v0, p0, LaW;->d:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private a(LaS;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.processResponse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, LaS;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowResumeService.Control.processResponse(): exception != null"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LaS;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.processResponse(): statusCode == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaT;->c(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "WindowResumeService.Control.processResponse(): default"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.processResponse(): statusCode == OK ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaT;->c(Ljava/lang/String;)V

    iget-object v1, p0, LaW;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "WindowResumeService.Control.processResponse(): serverTicket == null"

    invoke-static {v1}, LaT;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, LaS;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LaW;->g:Ljava/lang/String;

    iget-object v1, p0, LaW;->u:LaT;

    iget-object v2, p0, LaW;->f:Ljava/lang/String;

    iget-object v3, p0, LaW;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LaT;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, LaS;->f()I

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount == 0"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, LaS;->i()Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v1, LaE;

    invoke-direct {v1, v0}, LaE;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v1}, LaE;->b()LaH;

    move-result-object v0

    iput-object v0, p0, LaW;->c:LaH;

    const/4 v0, 0x1

    iput-boolean v0, p0, LaW;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, LaW;->d:Ljava/lang/Exception;

    goto :goto_1

    :cond_3
    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount > 0"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaW;->i:Ljava/util/Vector;

    invoke-virtual {p1}, LaS;->g()[I

    move-result-object v0

    invoke-virtual {p1}, LaS;->h()[I

    move-result-object v2

    move v3, v4

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, LaW;->i:Ljava/util/Vector;

    new-instance v5, LaV;

    iget-object v6, p0, LaW;->u:LaT;

    aget v7, v0, v3

    aget v8, v2, v3

    invoke-direct {v5, v6, v7, v8}, LaV;-><init>(LaT;II)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_2
    const-string v0, "WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iput-boolean v9, p0, LaW;->e:Z

    move v0, v9

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->u:LaT;

    iget-object v1, p0, LaW;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, LaT;->b(Ljava/lang/String;)V

    iput-object v3, p0, LaW;->g:Ljava/lang/String;

    iput-object v3, p0, LaW;->i:Ljava/util/Vector;

    move v0, v9

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(II)[B
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.getRequestPayload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget v0, p0, LaW;->l:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LaW;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, LaW;->b:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, LaW;->b:Ljava/io/DataInputStream;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, LaW;->l:I

    iget-object v0, p0, LaW;->a:LaO;

    invoke-virtual {v0}, LaO;->h()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LaW;->a:LaO;

    invoke-virtual {v0}, LaO;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, LH;

    iget-object v2, p0, LaW;->u:LaT;

    invoke-static {v2}, LaT;->a(LaT;)Law;

    move-result-object v2

    invoke-virtual {v2}, Law;->b()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, LaW;->a:LaO;

    invoke-virtual {v3}, LaO;->b()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LH;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, LaW;->b:Ljava/io/DataInputStream;

    :cond_2
    :goto_0
    iget v0, p0, LaW;->l:I

    if-le p1, v0, :cond_4

    iget v0, p0, LaW;->l:I

    iget-object v1, p0, LaW;->b:Ljava/io/DataInputStream;

    iget v2, p0, LaW;->l:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LaW;->l:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, LaW;->a:LaO;

    invoke-virtual {v1}, LaO;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, LaW;->b:Ljava/io/DataInputStream;

    goto :goto_0

    :cond_4
    new-array v0, p2, [B

    iget-object v1, p0, LaW;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget v1, p0, LaW;->l:I

    add-int/2addr v1, p2

    iput v1, p0, LaW;->l:I

    return-object v0
.end method

.method private a(I)[LaR;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.createRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "WindowResumeService.Control.createRequest(): serverTicket == null"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, LaW;->m:I

    iget-object v1, p0, LaW;->u:LaT;

    invoke-static {v1}, LaT;->b(LaT;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, LaW;->b()LaR;

    move-result-object v1

    const-string v2, "Length"

    iget v3, p0, LaW;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LaR;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, LaW;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v6, v0}, LaR;->a(I[B)V

    iget-object v0, p0, LaW;->a:LaO;

    invoke-virtual {v0}, LaO;->h()I

    move-result v0

    invoke-virtual {v1, v0}, LaR;->d(I)V

    new-array v0, v4, [LaR;

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    if-nez v0, :cond_1

    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector == null"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, LaW;->b()LaR;

    move-result-object v0

    iget-object v1, p0, LaW;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, LaR;->a(Ljava/lang/String;)V

    const-string v1, "Length"

    iget v2, p0, LaW;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaR;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v3}, LaR;->a(I[B)V

    iget-object v1, p0, LaW;->a:LaO;

    invoke-virtual {v1}, LaO;->h()I

    move-result v1

    invoke-virtual {v0, v1}, LaR;->d(I)V

    new-array v1, v4, [LaR;

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector != null"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    new-array v1, p1, [LaR;

    move v2, v6

    :goto_1
    if-ge v2, p1, :cond_3

    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV;

    iget v3, v0, LaV;->a:I

    iget v4, v0, LaV;->b:I

    iget-object v5, p0, LaW;->u:LaT;

    invoke-static {v5}, LaT;->b(LaT;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, LaV;->b:I

    if-le v5, v4, :cond_2

    iget v5, v0, LaV;->a:I

    add-int/2addr v5, v4

    iput v5, v0, LaV;->a:I

    iget v5, v0, LaV;->b:I

    sub-int/2addr v5, v4

    iput v5, v0, LaV;->b:I

    :goto_2
    invoke-direct {p0}, LaW;->b()LaR;

    move-result-object v0

    iget-object v5, p0, LaW;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, LaR;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, LaW;->a(II)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LaR;->a(I[B)V

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private b()LaR;
    .locals 3

    new-instance v0, LaR;

    invoke-direct {v0}, LaR;-><init>()V

    new-instance v1, LaX;

    iget-object v2, p0, LaW;->u:LaT;

    invoke-direct {v1, v2}, LaX;-><init>(LaT;)V

    invoke-virtual {v0, v1}, LaR;->a(LaG;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaR;->b(I)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "WindowResumeService.Control.run()"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.run(): requestVector.size() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.run(): i == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaR;

    invoke-virtual {v0}, LaR;->l()LaS;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, LaW;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LaW;->p:I

    invoke-direct {p0, v2}, LaW;->a(LaS;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, LaW;->k:I

    iget v3, p0, LaW;->j:I

    if-ge v0, v3, :cond_0

    iget v0, p0, LaW;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaW;->k:I

    const/4 v0, 0x0

    iput v0, p0, LaW;->o:I

    :cond_0
    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    invoke-virtual {v2}, LaS;->a()V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, LaW;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LaW;->o:I

    iget v3, p0, LaW;->o:I

    iget v4, p0, LaW;->n:I

    if-ge v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LaR;->a(LaS;)V

    iget-object v3, p0, LaW;->u:LaT;

    invoke-static {v3}, LaT;->c(LaT;)Lal;

    move-result-object v3

    invoke-virtual {v3, v0}, Lal;->a(LaF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, LaS;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, LaS;->c()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, LaW;->d:Ljava/lang/Exception;

    :goto_2
    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Lai;

    invoke-virtual {v2}, LaS;->d()I

    move-result v3

    invoke-direct {v0, v3}, Lai;-><init>(I)V

    iput-object v0, p0, LaW;->d:Ljava/lang/Exception;

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "WindowResumeService.Control.updateProgress()"

    invoke-static {v2}, LaT;->c(Ljava/lang/String;)V

    iget-wide v2, p0, LaW;->q:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget-wide v3, p0, LaW;->q:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_6

    iput-wide v0, p0, LaW;->q:J

    move v2, v8

    :cond_6
    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    iget v3, p0, LaW;->p:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_9

    iget v3, p0, LaW;->l:I

    iget v4, p0, LaW;->s:I

    if-le v3, v4, :cond_8

    iget v3, p0, LaW;->l:I

    iget v4, p0, LaW;->s:I

    sub-int/2addr v3, v4

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    mul-int/lit16 v3, v3, 0x3e8

    div-int v2, v3, v2

    iget v3, p0, LaW;->t:I

    iget v4, p0, LaW;->t:I

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): bandwidthEstimate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LaT;->c(Ljava/lang/String;)V

    iput v2, p0, LaW;->t:I

    iget v2, p0, LaW;->t:I

    int-to-long v2, v2

    iget v4, p0, LaW;->m:I

    iget v5, p0, LaW;->l:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v6, v2, v6

    if-nez v6, :cond_c

    const-wide/16 v2, -0x1

    :goto_3
    iput-wide v2, p0, LaW;->r:J

    :cond_8
    iget v2, p0, LaW;->l:I

    iput v2, p0, LaW;->s:I

    iput-wide v0, p0, LaW;->q:J

    :cond_9
    iget v0, p0, LaW;->p:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_a

    new-instance v6, LV;

    iget-object v0, p0, LaW;->u:LaT;

    invoke-static {v0}, LaT;->f(LaT;)LW;

    move-result-object v7

    new-instance v0, LaU;

    iget-object v1, p0, LaW;->a:LaO;

    iget v2, p0, LaW;->l:I

    int-to-long v2, v2

    iget-wide v4, p0, LaW;->r:J

    invoke-direct/range {v0 .. v5}, LaU;-><init>(LaO;JJ)V

    invoke-direct {v6, v7, v0}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, LV;->e()V

    :cond_a
    iget-object v0, p0, LaW;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_d

    const-string v0, "WindowResumeService.Control.run(): exception != null"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->u:LaT;

    invoke-static {v0}, LaT;->d(LaT;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, LaW;->u:LaT;

    invoke-static {v1}, LaT;->e(LaT;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, LV;

    iget-object v1, p0, LaW;->u:LaT;

    invoke-static {v1}, LaT;->f(LaT;)LW;

    move-result-object v1

    new-instance v2, LaU;

    iget-object v3, p0, LaW;->a:LaO;

    iget-object v4, p0, LaW;->d:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, LaU;-><init>(LaO;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v2}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LV;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    :cond_c
    :try_start_4
    div-long v2, v4, v2

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_d
    iget-boolean v0, p0, LaW;->e:Z

    if-eqz v0, :cond_e

    const-string v0, "WindowResumeService.Control.run(): done == true"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->u:LaT;

    invoke-static {v0}, LaT;->d(LaT;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, LaW;->u:LaT;

    invoke-static {v1}, LaT;->e(LaT;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v0, LV;

    iget-object v1, p0, LaW;->u:LaT;

    invoke-static {v1}, LaT;->f(LaT;)LW;

    move-result-object v1

    new-instance v2, LaU;

    iget-object v3, p0, LaW;->a:LaO;

    iget-object v4, p0, LaW;->c:LaH;

    invoke-direct {v2, v3, v4}, LaU;-><init>(LaO;LaH;)V

    invoke-direct {v0, v1, v2}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LV;->e()V

    goto :goto_4

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_e
    const-string v0, "WindowResumeService.Control.run(): queuing requests"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaW;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "WindowResumeService.Control.run(): resetting chunkVector"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, LaW;->i:Ljava/util/Vector;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    :try_start_7
    iget v0, p0, LaW;->k:I

    iget-object v1, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, LaW;->a(I)[LaR;

    move-result-object v0

    if-eqz v0, :cond_b

    move v1, v8

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_b

    aget-object v2, v0, v1

    if-eqz v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LaT;->c(Ljava/lang/String;)V

    iget-object v3, p0, LaW;->h:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, LaW;->u:LaT;

    invoke-static {v3}, LaT;->c(LaT;)Lal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lal;->a(LaF;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_8
    iput-object v0, p0, LaW;->d:Ljava/lang/Exception;

    iget-object v0, p0, LaW;->u:LaT;

    invoke-static {v0}, LaT;->g(LaT;)LV;

    move-result-object v0

    invoke-virtual {v0}, LV;->e()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4
.end method
