.class public Lcom/android/email/mail/store/imap/ImapResponse;
.super Lcom/android/email/mail/store/imap/ImapList;
.source "ImapResponse.java"


# instance fields
.field private final mIsContinuationRequest:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "tag"
    .parameter "isContinuationRequest"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    .line 30
    return-void
.end method

.method static isStatusResponse(Ljava/lang/String;)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 33
    const-string v0, "OK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREAUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BYE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 136
    :goto_0
    return v2

    .line 123
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/email/mail/store/imap/ImapResponse;

    move-object v1, v0

    .line 124
    .local v1, thatResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 125
    iget-object v2, v1, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v2, v4

    .line 126
    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    iget-boolean v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    iget-boolean v3, v1, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    const-string v1, "ALERT"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isContinuationRequest()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    return v0
.end method

.method public final isDataResponse(ILjava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "responseType"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    const-string v1, "OK"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusResponse()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 112
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v0, "+"

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
