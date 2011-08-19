.class public Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field final accountId:J

.field final attachmentId:J

.field inProgress:Z

.field lastCallbackTime:J

.field lastProgress:I

.field lastStatusCode:I

.field final messageId:J

.field final priority:I

.field startTime:J

.field final time:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 3
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 175
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    .line 176
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 177
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 178
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    .line 179
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    .line 183
    :goto_0
    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    .line 185
    return-void

    .line 181
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    const/4 v6, 0x0

    .line 197
    instance-of v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    if-nez v2, :cond_0

    move v2, v6

    .line 199
    :goto_0
    return v2

    .line 198
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-object v1, v0

    .line 199
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    long-to-int v0, v0

    return v0
.end method
