.class Lcom/google/masf/services/resume/WindowResumeService$Control;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/masf/services/resume/WindowResumeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Control"
.end annotation


# instance fields
.field bandwidthEstimate:I

.field chunkVector:Ljava/util/Vector;

.field clientTicket:Ljava/lang/String;

.field done:Z

.field errorCount:I

.field errorMaximum:I

.field exception:Ljava/lang/Exception;

.field oldStreamOffset:I

.field oldTimestamp:J

.field final request:Lcom/google/masf/services/resume/ResumableRequest;

.field requestStream:Ljava/io/DataInputStream;

.field requestVector:Ljava/util/Vector;

.field response:Lcom/google/masf/protocol/Response;

.field responseCount:I

.field serverTicket:Ljava/lang/String;

.field streamLength:I

.field streamOffset:I

.field final synthetic this$0:Lcom/google/masf/services/resume/WindowResumeService;

.field timeEstimate:J

.field windowCurrent:I

.field windowMaximum:I


# direct methods
.method private createRequest()Lcom/google/masf/services/resume/ResumeServiceRequest;
    .locals 4

    new-instance v0, Lcom/google/masf/services/resume/ResumeServiceRequest;

    invoke-direct {v0}, Lcom/google/masf/services/resume/ResumeServiceRequest;-><init>()V

    new-instance v1, Lcom/google/masf/services/resume/WindowResumeService$Listener;

    iget-object v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/masf/services/resume/WindowResumeService$Listener;-><init>(Lcom/google/masf/services/resume/WindowResumeService;Lcom/google/masf/services/resume/WindowResumeService$1;)V

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setSentCount(I)V

    return-object v0
.end method

.method private createRequests(I)[Lcom/google/masf/services/resume/ResumeServiceRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "WindowResumeService.Control.createRequest(): serverTicket == null"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamLength:I

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$300(Lcom/google/masf/services/resume/WindowResumeService;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->createRequest()Lcom/google/masf/services/resume/ResumeServiceRequest;

    move-result-object v1

    const-string v2, "Length"

    iget v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->getRequestPayload(II)[B

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setPayload(I[B)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v0}, Lcom/google/masf/services/resume/ResumableRequest;->getRequestType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setRequestType(I)V

    new-array v0, v4, [Lcom/google/masf/services/resume/ResumeServiceRequest;

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    if-nez v0, :cond_1

    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector == null"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->createRequest()Lcom/google/masf/services/resume/ResumeServiceRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setServerTicket(Ljava/lang/String;)V

    const-string v1, "Length"

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v3}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setPayload(I[B)V

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v1}, Lcom/google/masf/services/resume/ResumableRequest;->getRequestType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setRequestType(I)V

    new-array v1, v4, [Lcom/google/masf/services/resume/ResumeServiceRequest;

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector != null"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    new-array v1, p1, [Lcom/google/masf/services/resume/ResumeServiceRequest;

    move v2, v6

    :goto_1
    if-ge v2, p1, :cond_3

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;

    iget v3, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->offset:I

    iget v4, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->length:I

    iget-object v5, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v5}, Lcom/google/masf/services/resume/WindowResumeService;->access$300(Lcom/google/masf/services/resume/WindowResumeService;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->length:I

    if-le v5, v4, :cond_2

    iget v5, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->offset:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->offset:I

    iget v5, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->length:I

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/google/masf/services/resume/WindowResumeService$Chunk;->length:I

    :goto_2
    invoke-direct {p0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->createRequest()Lcom/google/masf/services/resume/ResumeServiceRequest;

    move-result-object v0

    iget-object v5, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setServerTicket(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/google/masf/services/resume/WindowResumeService$Control;->getRequestPayload(II)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setPayload(I[B)V

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private getRequestPayload(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v0}, Lcom/google/masf/services/resume/ResumableRequest;->getRequestType()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v0}, Lcom/google/masf/services/resume/ResumableRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Lcom/google/common/io/SequenceInputStream;

    iget-object v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v2}, Lcom/google/masf/services/resume/WindowResumeService;->access$200(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/protocol/HeaderRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/masf/protocol/HeaderRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v3}, Lcom/google/masf/services/resume/ResumableRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    if-le p1, v0, :cond_4

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v1}, Lcom/google/masf/services/resume/ResumableRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    goto :goto_0

    :cond_4
    new-array v0, p2, [B

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestStream:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    return-object v0
.end method

.method private updateProgress()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/masf/services/resume/WindowResumeService$Control;->updateProgress(J)V

    return-void
.end method


# virtual methods
.method calculateBandwidthEstimate(II)I
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/lit16 v1, p1, 0x3e8

    div-int v0, v1, v0

    iget v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->bandwidthEstimate:I

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->bandwidthEstimate:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.run(): bandwidthEstimate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method calculateTimeEstimate(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    div-long v0, p3, p1

    goto :goto_0
.end method

.method public processResponse(Lcom/google/masf/services/resume/ResumeServiceResponse;)Z
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

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->hasException()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowResumeService.Control.processResponse(): exception != null"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getStatusCode()I

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

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "WindowResumeService.Control.processResponse(): default"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

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

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "WindowResumeService.Control.processResponse(): serverTicket == null"

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getServerTicket()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    iget-object v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->clientTicket:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/masf/services/resume/WindowResumeService;->addClientTicket(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getMissingChunkCount()I

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount == 0"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v1, Lcom/google/masf/protocol/ProtocolReader;

    invoke-direct {v1, v0}, Lcom/google/masf/protocol/ProtocolReader;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v1}, Lcom/google/masf/protocol/ProtocolReader;->getNextResponse()Lcom/google/masf/protocol/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->response:Lcom/google/masf/protocol/Response;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->done:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->exception:Ljava/lang/Exception;

    goto :goto_1

    :cond_3
    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount > 0"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getMissingChunkOffsets()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getMissingChunkLengths()[I

    move-result-object v2

    move v3, v4

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    new-instance v5, Lcom/google/masf/services/resume/WindowResumeService$Chunk;

    iget-object v6, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    aget v7, v0, v3

    aget v8, v2, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/google/masf/services/resume/WindowResumeService$Chunk;-><init>(Lcom/google/masf/services/resume/WindowResumeService;II)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_2
    const-string v0, "WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->done:Z

    move v0, v9

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->clientTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/WindowResumeService;->removeClientTicket(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->serverTicket:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    move v0, v9

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

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

.method public declared-synchronized run()V
    .locals 6

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "WindowResumeService.Control.run()"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.run(): requestVector.size() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

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

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/services/resume/ResumeServiceRequest;

    invoke-virtual {v0}, Lcom/google/masf/services/resume/ResumeServiceRequest;->getResponse()Lcom/google/masf/services/resume/ResumeServiceResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->responseCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->responseCount:I

    invoke-virtual {p0, v2}, Lcom/google/masf/services/resume/WindowResumeService$Control;->processResponse(Lcom/google/masf/services/resume/ResumeServiceResponse;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->windowCurrent:I

    iget v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->windowMaximum:I

    if-ge v0, v3, :cond_0

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->windowCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->windowCurrent:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->errorCount:I

    :cond_0
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    invoke-virtual {v2}, Lcom/google/masf/services/resume/ResumeServiceResponse;->dispose()V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->errorCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->errorCount:I

    iget v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->errorCount:I

    iget v4, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->errorMaximum:I

    if-ge v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/masf/services/resume/ResumeServiceRequest;->setResponse(Lcom/google/masf/services/resume/ResumeServiceResponse;)V

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v3}, Lcom/google/masf/services/resume/WindowResumeService;->access$500(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/MobileServiceMux;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/google/masf/services/resume/ResumeServiceResponse;->hasException()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getException()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->exception:Ljava/lang/Exception;

    :goto_2
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/masf/ConnectionException;

    invoke-virtual {v2}, Lcom/google/masf/services/resume/ResumeServiceResponse;->getStatusCode()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/google/masf/ConnectionException;-><init>(I)V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->exception:Ljava/lang/Exception;

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->updateProgress()V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    const-string v0, "WindowResumeService.Control.run(): exception != null"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$600(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$700(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Lcom/google/common/task/Task;

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$800(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/TaskRunner;

    move-result-object v1

    new-instance v2, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    iget-object v4, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->exception:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;-><init>(Lcom/google/masf/services/resume/ResumableRequest;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$900(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :cond_7
    iget-boolean v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->done:Z

    if-eqz v0, :cond_8

    const-string v0, "WindowResumeService.Control.run(): done == true"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$600(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$700(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v0, Lcom/google/common/task/Task;

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$800(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/TaskRunner;

    move-result-object v1

    new-instance v2, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    iget-object v4, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->response:Lcom/google/masf/protocol/Response;

    invoke-direct {v2, v3, v4}, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;-><init>(Lcom/google/masf/services/resume/ResumableRequest;Lcom/google/masf/protocol/Response;)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$900(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    :cond_8
    const-string v0, "WindowResumeService.Control.run(): queuing requests"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "WindowResumeService.Control.run(): resetting chunkVector"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->chunkVector:Ljava/util/Vector;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    :try_start_a
    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->windowCurrent:I

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->createRequests(I)[Lcom/google/masf/services/resume/ResumeServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    move v1, v5

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_6

    aget-object v2, v0, v1

    if-eqz v2, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->requestVector:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v3}, Lcom/google/masf/services/resume/WindowResumeService;->access$500(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/MobileServiceMux;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_b
    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->exception:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$900(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3
.end method

.method updateProgress(J)V
    .locals 8

    const-string v0, "WindowResumeService.Control.updateProgress()"

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldTimestamp:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iput-wide p1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldTimestamp:J

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->responseCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldStreamOffset:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldStreamOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->calculateBandwidthEstimate(II)I

    move-result v0

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->bandwidthEstimate:I

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->bandwidthEstimate:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamLength:I

    iget v3, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/masf/services/resume/WindowResumeService$Control;->calculateTimeEstimate(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->timeEstimate:J

    :cond_1
    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldStreamOffset:I

    iput-wide p1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->oldTimestamp:J

    :cond_2
    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->responseCount:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    new-instance v6, Lcom/google/common/task/Task;

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$800(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/TaskRunner;

    move-result-object v7

    new-instance v0, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    iget v2, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->streamOffset:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/masf/services/resume/WindowResumeService$Control;->timeEstimate:J

    invoke-direct/range {v0 .. v5}, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;-><init>(Lcom/google/masf/services/resume/ResumableRequest;JJ)V

    invoke-direct {v6, v7, v0}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Lcom/google/common/task/Task;->schedule()V

    :cond_3
    return-void
.end method
