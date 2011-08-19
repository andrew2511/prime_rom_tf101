.class Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;
.super Ljava/lang/Object;
.source "MailSync.java"

# interfaces
.implements Lcom/google/android/common/http/PartSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentPartSource"
.end annotation


# instance fields
.field private final mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

.field mInputStream:Ljava/io/InputStream;

.field mLength:J

.field private final mMessageId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/MailSync;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailSync;JLcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 2
    .parameter
    .parameter "messageId"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3617
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->this$0:Lcom/google/android/gm/provider/MailSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3618
    iput-wide p2, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mMessageId:J

    .line 3619
    iput-object p4, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3621
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mInputStream:Ljava/io/InputStream;

    .line 3622
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mLength:J

    .line 3624
    return-void
.end method

.method private newInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->this$0:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->access$300(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/MailStore;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mMessageId:J

    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailStore;->getInputStreamForUploadedAttachment(JLcom/google/android/gm/provider/Gmail$Attachment;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3631
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 3632
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mInputStream:Ljava/io/InputStream;

    .line 3633
    .local v0, stream:Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mInputStream:Ljava/io/InputStream;

    move-object v1, v0

    .line 3636
    .end local v0           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->newInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 3627
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;->mLength:J

    return-wide v0
.end method
