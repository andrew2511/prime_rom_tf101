.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;-><init>()V

    .line 265
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 266
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 315
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 316
    return-object v0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 320
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object p0

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasEncryptedId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getEncryptedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setEncryptedId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 324
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 327
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 330
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setTrackId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 333
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setTrackName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 336
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasLicensed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 337
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getLicensed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setLicensed(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 339
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasPartnerUploaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getPartnerUploaded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setPartnerUploaded(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 342
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVevo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 343
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVevo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setVevo(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    .line 345
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVideoLengthInSeconds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVideoLengthInSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setVideoLengthInSeconds(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 357
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 361
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    :sswitch_0
    return-object p0

    .line 367
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setEncryptedId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 371
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 375
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 379
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setTrackId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 383
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setTrackName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 387
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setLicensed(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 391
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setPartnerUploaded(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 395
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setVevo(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 399
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->setVideoLengthInSeconds(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x58 -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    return-object p0
.end method

.method public setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 461
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public setEncryptedId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    return-object p0
.end method

.method public setLicensed(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 522
    return-object p0
.end method

.method public setPartnerUploaded(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 540
    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 482
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    return-object p0
.end method

.method public setTrackName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 503
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public setVevo(Z)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 557
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 558
    return-object p0
.end method

.method public setVideoLengthInSeconds(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$1902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z

    .line 575
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->access$2002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;I)I

    .line 576
    return-object p0
.end method
