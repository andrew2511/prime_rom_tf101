.class public final Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/MusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation


# instance fields
.field private albumId_:Ljava/lang/String;

.field private albumName_:Ljava/lang/String;

.field private audio_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

.field private discNumber_:I

.field private hasAlbumId:Z

.field private hasAlbumName:Z

.field private hasDetail:Z

.field private hasDiscNumber:Z

.field private hasId:Z

.field private hasName:Z

.field private hasTrackNumber:Z

.field private id_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private trackNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->id_:Ljava/lang/String;

    .line 851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->name_:Ljava/lang/String;

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    .line 888
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->albumId_:Ljava/lang/String;

    .line 905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->albumName_:Ljava/lang/String;

    .line 922
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->discNumber_:I

    .line 939
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->trackNumber_:I

    .line 955
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->audio_:Ljava/util/List;

    .line 1038
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->cachedSize:I

    .line 826
    return-void
.end method


# virtual methods
.method public addAudio(Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 972
    if-nez p1, :cond_0

    .line 973
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->audio_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->audio_:Ljava/util/List;

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->audio_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    return-object p0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->albumId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->albumName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->audio_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->cachedSize:I

    if-gez v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getSerializedSize()I

    .line 1044
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->cachedSize:I

    return v0
.end method

.method public getDetail()Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    return-object v0
.end method

.method public getDiscNumber()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->discNumber_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1048
    const/4 v2, 0x0

    .line 1049
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1050
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1054
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1057
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDetail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1058
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getDetail()Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1061
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1062
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1065
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumName()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1066
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1069
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasTrackNumber()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1070
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getTrackNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1073
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getAudioList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    .line 1074
    .local v0, element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1077
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDiscNumber()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1078
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getDiscNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1081
    :cond_7
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->cachedSize:I

    .line 1082
    return v2
.end method

.method public getTrackNumber()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->trackNumber_:I

    return v0
.end method

.method public hasAlbumId()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumId:Z

    return v0
.end method

.method public hasAlbumName()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumName:Z

    return v0
.end method

.method public hasDetail()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDetail:Z

    return v0
.end method

.method public hasDiscNumber()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDiscNumber:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasName:Z

    return v0
.end method

.method public hasTrackNumber()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasTrackNumber:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1090
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1094
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    :sswitch_0
    return-object p0

    .line 1100
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1104
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1108
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;-><init>()V

    .line 1109
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1110
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setDetail(Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1114
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setAlbumId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1118
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1122
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1126
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;-><init>()V

    .line 1127
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1128
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->addAudio(Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1132
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->setDiscNumber(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    goto :goto_0

    .line 1090
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumId:Z

    .line 893
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->albumId_:Ljava/lang/String;

    .line 894
    return-object p0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumName:Z

    .line 910
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->albumName_:Ljava/lang/String;

    .line 911
    return-object p0
.end method

.method public setDetail(Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 873
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 875
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDetail:Z

    .line 876
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    .line 877
    return-object p0
.end method

.method public setDiscNumber(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDiscNumber:Z

    .line 927
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->discNumber_:I

    .line 928
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasId:Z

    .line 839
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->id_:Ljava/lang/String;

    .line 840
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasName:Z

    .line 856
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->name_:Ljava/lang/String;

    .line 857
    return-object p0
.end method

.method public setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1
    .parameter "value"

    .prologue
    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasTrackNumber:Z

    .line 944
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->trackNumber_:I

    .line 945
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1015
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1018
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDetail()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getDetail()Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1021
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1022
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1024
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasAlbumName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1025
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1027
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasTrackNumber()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1028
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getTrackNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1030
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getAudioList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    .line 1031
    .local v0, element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1033
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->hasDiscNumber()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1034
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;->getDiscNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1036
    :cond_7
    return-void
.end method
