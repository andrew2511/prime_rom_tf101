.class public abstract Lnet/yostore/aws/service/PlayerServiceInterface$Stub;
.super Landroid/os/Binder;
.source "PlayerServiceInterface.java"

# interfaces
.implements Lnet/yostore/aws/service/PlayerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayerServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/PlayerServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.yostore.aws.service.PlayerServiceInterface"

.field static final TRANSACTION_addSongPlaylist:I = 0x4

.field static final TRANSACTION_clearPlaylist:I = 0x2

.field static final TRANSACTION_comparePlayingFolderId:I = 0x3

.field static final TRANSACTION_getCurrentIdx:I = 0x17

.field static final TRANSACTION_getCurrentPosition:I = 0x12

.field static final TRANSACTION_getCurrentSong:I = 0x14

.field static final TRANSACTION_getCurrentSongList:I = 0x16

.field static final TRANSACTION_getDuration:I = 0x11

.field static final TRANSACTION_getPlayingFolderId:I = 0x18

.field static final TRANSACTION_getRepeatPlay:I = 0x19

.field static final TRANSACTION_getShufflePlay:I = 0x1a

.field static final TRANSACTION_getSong:I = 0x15

.field static final TRANSACTION_getStatus:I = 0x13

.field static final TRANSACTION_insertPlayingSong:I = 0x1b

.field static final TRANSACTION_insertSongPlaylist:I = 0x5

.field static final TRANSACTION_isPlaying:I = 0x1

.field static final TRANSACTION_pause:I = 0xc

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFile:I = 0x7

.field static final TRANSACTION_playInsertSong:I = 0x1c

.field static final TRANSACTION_removeSongPlaylist:I = 0x6

.field static final TRANSACTION_resetService:I = 0xb

.field static final TRANSACTION_setCurrentPosition:I = 0xa

.field static final TRANSACTION_setNeedUpdateToken:I = 0x1d

.field static final TRANSACTION_setRepeatPlay:I = 0x8

.field static final TRANSACTION_setShufflePlay:I = 0x9

.field static final TRANSACTION_skipBack:I = 0x10

.field static final TRANSACTION_skipForward:I = 0xf

.field static final TRANSACTION_stop:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p0, p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/PlayerServiceInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lnet/yostore/aws/service/PlayerServiceInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lnet/yostore/aws/service/PlayerServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->isPlaying()Z

    move-result v2

    .line 49
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 51
    goto :goto_0

    :cond_0
    move v5, v7

    .line 50
    goto :goto_1

    .line 55
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->clearPlaylist()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 58
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 65
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->comparePlayingFolderId(J)Z

    move-result v2

    .line 66
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 68
    goto :goto_0

    :cond_1
    move v5, v7

    .line 67
    goto :goto_2

    .line 72
    .end local v0           #_arg0:J
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    sget-object v5, Lnet/yostore/aws/handler/entity/Mp3Item;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 80
    .local v0, _arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :goto_3
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 82
    goto :goto_0

    .line 78
    .end local v0           #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    goto :goto_3

    .line 86
    .end local v0           #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :sswitch_5
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    sget-object v5, Lnet/yostore/aws/handler/entity/Mp3Item;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 94
    .restart local v0       #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :goto_4
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->insertSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 96
    goto :goto_0

    .line 92
    .end local v0           #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    goto :goto_4

    .line 100
    .end local v0           #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :sswitch_6
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->removeSongPlaylist(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 105
    goto/16 :goto_0

    .line 109
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->playFile(I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 114
    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->setRepeatPlay(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 123
    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->setShufflePlay(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->setCurrentPosition(I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 141
    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->resetService()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 148
    goto/16 :goto_0

    .line 152
    :sswitch_c
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->pause()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 155
    goto/16 :goto_0

    .line 159
    :sswitch_d
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->play()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 162
    goto/16 :goto_0

    .line 166
    :sswitch_e
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->stop()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 169
    goto/16 :goto_0

    .line 173
    :sswitch_f
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->skipForward()V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 176
    goto/16 :goto_0

    .line 180
    :sswitch_10
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->skipBack()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 183
    goto/16 :goto_0

    .line 187
    :sswitch_11
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getDuration()I

    move-result v2

    .line 189
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 191
    goto/16 :goto_0

    .line 195
    .end local v2           #_result:I
    :sswitch_12
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getCurrentPosition()I

    move-result v2

    .line 197
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 199
    goto/16 :goto_0

    .line 203
    .end local v2           #_result:I
    :sswitch_13
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getStatus()I

    move-result v2

    .line 205
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 207
    goto/16 :goto_0

    .line 211
    .end local v2           #_result:I
    :sswitch_14
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getCurrentSong()Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    .line 213
    .local v2, _result:Lnet/yostore/aws/handler/entity/Mp3Item;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v2, :cond_4

    .line 215
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v2, p3, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v5, v6

    .line 221
    goto/16 :goto_0

    .line 219
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 225
    .end local v2           #_result:Lnet/yostore/aws/handler/entity/Mp3Item;
    :sswitch_15
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getSong(I)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    .line 229
    .restart local v2       #_result:Lnet/yostore/aws/handler/entity/Mp3Item;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v2, :cond_5

    .line 231
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {v2, p3, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v5, v6

    .line 237
    goto/16 :goto_0

    .line 235
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 241
    .end local v0           #_arg0:I
    .end local v2           #_result:Lnet/yostore/aws/handler/entity/Mp3Item;
    :sswitch_16
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getCurrentSongList()Ljava/util/List;

    move-result-object v4

    .line 243
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/Mp3Item;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v5, v6

    .line 245
    goto/16 :goto_0

    .line 249
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/Mp3Item;>;"
    :sswitch_17
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getCurrentIdx()I

    move-result v2

    .line 251
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 253
    goto/16 :goto_0

    .line 257
    .end local v2           #_result:I
    :sswitch_18
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getPlayingFolderId()J

    move-result-wide v2

    .line 259
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 261
    goto/16 :goto_0

    .line 265
    .end local v2           #_result:J
    :sswitch_19
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getRepeatPlay()I

    move-result v2

    .line 267
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 269
    goto/16 :goto_0

    .line 273
    .end local v2           #_result:I
    :sswitch_1a
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->getShufflePlay()I

    move-result v2

    .line 275
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 277
    goto/16 :goto_0

    .line 281
    .end local v2           #_result:I
    :sswitch_1b
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 284
    sget-object v5, Lnet/yostore/aws/handler/entity/Mp3Item;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 289
    .local v0, _arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :goto_7
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->insertPlayingSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 291
    goto/16 :goto_0

    .line 287
    .end local v0           #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    goto :goto_7

    .line 295
    .end local v0           #_arg0:Lnet/yostore/aws/handler/entity/Mp3Item;
    :sswitch_1c
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->playInsertSong()V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 298
    goto/16 :goto_0

    .line 302
    :sswitch_1d
    const-string v5, "net.yostore.aws.service.PlayerServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->setNeedUpdateToken()V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 305
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
