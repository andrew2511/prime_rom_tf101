.class public Lcom/android/exchange/PartRequest;
.super Lcom/android/exchange/Request;
.source "PartRequest.java"


# instance fields
.field public final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field public final mContentUriString:Ljava/lang/String;

.field public final mDestination:Ljava/lang/String;

.field public final mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "_att"
    .parameter "_destination"
    .parameter "_contentUriString"

    .prologue
    .line 34
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/Request;-><init>(J)V

    .line 35
    iput-object p1, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 36
    iget-object v0, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/PartRequest;->mLocation:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 44
    instance-of v0, p1, Lcom/android/exchange/PartRequest;

    if-nez v0, :cond_0

    move v0, v4

    .line 45
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/exchange/PartRequest;

    .end local p1
    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iget-object v2, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    long-to-int v0, v0

    return v0
.end method
