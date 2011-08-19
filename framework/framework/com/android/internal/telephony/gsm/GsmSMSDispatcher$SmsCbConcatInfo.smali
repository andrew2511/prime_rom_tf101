.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final mCid:I

.field private final mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final mLac:I

.field private final mPlmn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V
    .registers 5
    .parameter "header"
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 437
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    .line 438
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    .line 439
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    .line 440
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    .line 449
    instance-of v2, p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    if-eqz v2, :cond_4f

    .line 450
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v1, v0

    .line 455
    .local v1, other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    if-ne v2, v3, :cond_4f

    .line 461
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    iget v4, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v2

    .line 465
    .end local v1           #other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4e
    return v2

    :cond_4f
    const/4 v2, 0x0

    goto :goto_4e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public matchesLocation(Ljava/lang/String;II)Z
    .registers 6
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    packed-switch v0, :pswitch_data_26

    move v0, v1

    .line 494
    :goto_9
    return v0

    .line 481
    :pswitch_a
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    if-eq v0, p3, :cond_10

    move v0, v1

    .line 482
    goto :goto_9

    .line 486
    :cond_10
    :pswitch_10
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    if-eq v0, p2, :cond_16

    move v0, v1

    .line 487
    goto :goto_9

    .line 491
    :cond_16
    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_9

    :cond_24
    move v0, v1

    goto :goto_9

    .line 478
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_a
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method
