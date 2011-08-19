.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 160
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 161
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2d

    .line 163
    const-string v1, "ndefmaxlength"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    .line 164
    const-string v1, "ndefcardstate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    .line 165
    const-string v1, "ndefmsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    iput-object v1, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    .line 166
    const-string v1, "ndeftype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    .line 171
    return-void

    .line 168
    :cond_2d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NDEF tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .registers 4
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 147
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v2

    .line 151
    :goto_9
    return-object v1

    .line 149
    :cond_a
    :try_start_a
    new-instance v1, Landroid/nfc/tech/Ndef;

    invoke-direct {v1, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 150
    :catch_10
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move-object v1, v2

    .line 151
    goto :goto_9
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 337
    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    if-eq v0, v2, :cond_a

    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_a
    move v0, v2

    .line 340
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getMaxSize()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 261
    :try_start_4
    iget-object v5, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v5}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v4

    .line 262
    .local v4, tagService:Landroid/nfc/INfcTag;
    iget-object v5, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v5}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    .line 263
    .local v3, serviceHandle:I
    invoke-interface {v4, v3}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 264
    invoke-interface {v4, v3}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 265
    .local v2, msg:Landroid/nfc/NdefMessage;
    if-nez v2, :cond_40

    .line 266
    invoke-interface {v4, v3}, Landroid/nfc/INfcTag;->getLastError(I)I

    move-result v1

    .line 267
    .local v1, errorCode:I
    sparse-switch v1, :sswitch_data_44

    .line 274
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_29

    .line 281
    .end local v1           #errorCode:I
    .end local v2           #msg:Landroid/nfc/NdefMessage;
    .end local v3           #serviceHandle:I
    .end local v4           #tagService:Landroid/nfc/INfcTag;
    :catch_29
    move-exception v5

    move-object v0, v5

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "NFC"

    const-string v6, "NFC service dead"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_33
    return-object v5

    .line 269
    .restart local v1       #errorCode:I
    .restart local v2       #msg:Landroid/nfc/NdefMessage;
    .restart local v3       #serviceHandle:I
    .restart local v4       #tagService:Landroid/nfc/INfcTag;
    :sswitch_34
    :try_start_34
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 271
    :sswitch_3a
    new-instance v5, Landroid/nfc/FormatException;

    invoke-direct {v5}, Landroid/nfc/FormatException;-><init>()V

    throw v5
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_40} :catch_29

    .end local v1           #errorCode:I
    :cond_40
    move-object v5, v2

    .line 277
    goto :goto_33

    .end local v2           #msg:Landroid/nfc/NdefMessage;
    :cond_42
    move-object v5, v7

    .line 279
    goto :goto_33

    .line 267
    :sswitch_data_44
    .sparse-switch
        -0x8 -> :sswitch_3a
        -0x1 -> :sswitch_34
    .end sparse-switch
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    sparse-switch v0, :sswitch_data_1a

    .line 213
    const-string v0, "android.ndef.unknown"

    :goto_7
    return-object v0

    .line 201
    :sswitch_8
    const-string v0, "org.nfcforum.ndef.type1"

    goto :goto_7

    .line 203
    :sswitch_b
    const-string v0, "org.nfcforum.ndef.type2"

    goto :goto_7

    .line 205
    :sswitch_e
    const-string v0, "org.nfcforum.ndef.type3"

    goto :goto_7

    .line 207
    :sswitch_11
    const-string v0, "org.nfcforum.ndef.type4"

    goto :goto_7

    .line 209
    :sswitch_14
    const-string v0, "com.nxp.ndef.mifareclassic"

    goto :goto_7

    .line 211
    :sswitch_17
    const-string v0, "com.nxp.ndef.icodesli"

    goto :goto_7

    .line 199
    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x4 -> :sswitch_11
        0x65 -> :sswitch_14
        0x66 -> :sswitch_17
    .end sparse-switch
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .registers 3

    .prologue
    .line 240
    iget v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public makeReadOnly()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 366
    :try_start_4
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    .line 367
    .local v2, tagService:Landroid/nfc/INfcTag;
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 368
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v1

    .line 369
    .local v1, errorCode:I
    sparse-switch v1, :sswitch_data_46

    .line 378
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_29

    .line 384
    .end local v1           #errorCode:I
    .end local v2           #tagService:Landroid/nfc/INfcTag;
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NFC"

    const-string v4, "NFC service dead"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 386
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_33
    return v3

    .line 371
    .restart local v1       #errorCode:I
    .restart local v2       #tagService:Landroid/nfc/INfcTag;
    :sswitch_34
    const/4 v3, 0x1

    goto :goto_33

    .line 373
    :sswitch_36
    :try_start_36
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :sswitch_3c
    move v3, v5

    .line 375
    goto :goto_33

    .line 382
    .end local v1           #errorCode:I
    :cond_3e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Tag is not ndef"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_46} :catch_29

    .line 369
    :sswitch_data_46
    .sparse-switch
        -0x8 -> :sswitch_3c
        -0x1 -> :sswitch_36
        0x0 -> :sswitch_34
    .end sparse-switch
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .registers 8
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 305
    :try_start_3
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    .line 306
    .local v3, tagService:Landroid/nfc/INfcTag;
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    .line 307
    .local v2, serviceHandle:I
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 308
    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v1

    .line 309
    .local v1, errorCode:I
    sparse-switch v1, :sswitch_data_40

    .line 318
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_22} :catch_22

    .line 324
    .end local v1           #errorCode:I
    .end local v2           #serviceHandle:I
    .end local v3           #tagService:Landroid/nfc/INfcTag;
    :catch_22
    move-exception v4

    move-object v0, v4

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "NFC"

    const-string v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_2b
    return-void

    .line 313
    .restart local v1       #errorCode:I
    .restart local v2       #serviceHandle:I
    .restart local v3       #tagService:Landroid/nfc/INfcTag;
    :sswitch_2c
    :try_start_2c
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 315
    :sswitch_32
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    .line 322
    .end local v1           #errorCode:I
    :cond_38
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tag is not ndef"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_40} :catch_22

    .line 309
    :sswitch_data_40
    .sparse-switch
        -0x8 -> :sswitch_32
        -0x1 -> :sswitch_2c
        0x0 -> :sswitch_2b
    .end sparse-switch
.end method
