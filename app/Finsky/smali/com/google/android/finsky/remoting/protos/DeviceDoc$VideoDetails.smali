.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private contentRating_:Ljava/lang/String;

.field private credit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;",
            ">;"
        }
    .end annotation
.end field

.field private dislikes_:J

.field private duration_:Ljava/lang/String;

.field private genre_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasContentRating:Z

.field private hasDislikes:Z

.field private hasDuration:Z

.field private hasLikes:Z

.field private hasReleaseDate:Z

.field private likes_:J

.field private releaseDate_:Ljava/lang/String;

.field private rentalTerm_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;",
            ">;"
        }
    .end annotation
.end field

.field private trailer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1753
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1757
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->credit_:Ljava/util/List;

    .line 1791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->duration_:Ljava/lang/String;

    .line 1808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 1825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 1842
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->likes_:J

    .line 1859
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->dislikes_:J

    .line 1875
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->genre_:Ljava/util/List;

    .line 1908
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->trailer_:Ljava/util/List;

    .line 1941
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2027
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->cachedSize:I

    .line 1753
    return-void
.end method


# virtual methods
.method public addCredit(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1774
    if-nez p1, :cond_0

    .line 1775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->credit_:Ljava/util/List;

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1892
    if-nez p1, :cond_0

    .line 1893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->genre_:Ljava/util/List;

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    return-object p0
.end method

.method public addRentalTerm(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1958
    if-nez p1, :cond_0

    .line 1959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1965
    return-object p0
.end method

.method public addTrailer(Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1925
    if-nez p1, :cond_0

    .line 1926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->trailer_:Ljava/util/List;

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1932
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2029
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 2031
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getSerializedSize()I

    .line 2033
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->cachedSize:I

    return v0
.end method

.method public getContentRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->contentRating_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->credit_:Ljava/util/List;

    return-object v0
.end method

.method public getDislikes()J
    .locals 2

    .prologue
    .line 1860
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->dislikes_:J

    return-wide v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 1843
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->likes_:J

    return-wide v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getRentalTermList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->rentalTerm_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 2037
    const/4 v3, 0x0

    .line 2038
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    .line 2039
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    const/4 v4, 0x1

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 2042
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDuration()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2043
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2046
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2047
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2050
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2051
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2054
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasLikes()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2055
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getLikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2058
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDislikes()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2059
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getDislikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2063
    :cond_5
    const/4 v0, 0x0

    .line 2064
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2065
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 2068
    .end local v1           #element:Ljava/lang/String;
    :cond_6
    add-int/2addr v3, v0

    .line 2069
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2071
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    .line 2072
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 2075
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    .line 2076
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 2079
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    :cond_8
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->cachedSize:I

    .line 2080
    return v3
.end method

.method public getTrailerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->trailer_:Ljava/util/List;

    return-object v0
.end method

.method public hasContentRating()Z
    .locals 1

    .prologue
    .line 1827
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDislikes()Z
    .locals 1

    .prologue
    .line 1861
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDislikes:Z

    return v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 1793
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDuration:Z

    return v0
.end method

.method public hasLikes()Z
    .locals 1

    .prologue
    .line 1844
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasLikes:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .locals 1

    .prologue
    .line 1810
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2087
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2088
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2092
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2093
    :sswitch_0
    return-object p0

    .line 2098
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;-><init>()V

    .line 2099
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2100
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->addCredit(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2104
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2108
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2112
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2116
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->setLikes(J)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2120
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->setDislikes(J)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2124
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2128
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;-><init>()V

    .line 2129
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2130
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->addTrailer(Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2134
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;-><init>()V

    .line 2135
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2136
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->addRentalTerm(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    goto :goto_0

    .line 2088
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 1751
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasContentRating:Z

    .line 1830
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 1831
    return-object p0
.end method

.method public setDislikes(J)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDislikes:Z

    .line 1864
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->dislikes_:J

    .line 1865
    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDuration:Z

    .line 1796
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->duration_:Ljava/lang/String;

    .line 1797
    return-object p0
.end method

.method public setLikes(J)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasLikes:Z

    .line 1847
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->likes_:J

    .line 1848
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasReleaseDate:Z

    .line 1813
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 1814
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    .line 1999
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2001
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDuration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2002
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2004
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2005
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2007
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2008
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2010
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasLikes()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2011
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getLikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2013
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDislikes()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2014
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getDislikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2016
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2017
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 2019
    .end local v0           #element:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    .line 2020
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 2022
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    .line 2023
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 2025
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    :cond_8
    return-void
.end method
