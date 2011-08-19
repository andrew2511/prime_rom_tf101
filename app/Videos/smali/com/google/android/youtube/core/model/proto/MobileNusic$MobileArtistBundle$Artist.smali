.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    }
.end annotation


# static fields
.field public static final ARTIST_ID_FIELD_NUMBER:I = 0x1

.field public static final ARTIST_NAME_FIELD_NUMBER:I = 0x2

.field public static final BIOGRAPHY_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;


# instance fields
.field private artistId_:Ljava/lang/String;

.field private artistName_:Ljava/lang/String;

.field private biography_:Ljava/lang/String;

.field private hasArtistId:Z

.field private hasArtistName:Z

.field private hasBiography:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 946
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 947
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 948
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->initFields()V

    .line 949
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 616
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 633
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistId_:Ljava/lang/String;

    .line 640
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistName_:Ljava/lang/String;

    .line 647
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->biography_:Ljava/lang/String;

    .line 673
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->memoizedSerializedSize:I

    .line 617
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->initFields()V

    .line 618
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const-string v1, ""

    .line 619
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 633
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistId_:Ljava/lang/String;

    .line 640
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistName_:Ljava/lang/String;

    .line 647
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->biography_:Ljava/lang/String;

    .line 673
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->memoizedSerializedSize:I

    .line 619
    return-void
.end method

.method static synthetic access$2402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasBiography:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->biography_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2200()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 765
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    .line 732
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    .line 735
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    .line 743
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    .line 746
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistId_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->artistName_:Ljava/lang/String;

    return-object v0
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->biography_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 627
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 675
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->memoizedSerializedSize:I

    .line 676
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 692
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 678
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 684
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 687
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasBiography()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 691
    :cond_3
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->memoizedSerializedSize:I

    move v1, v0

    .line 692
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId:Z

    return v0
.end method

.method public hasArtistName()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName:Z

    return v0
.end method

.method public hasBiography()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasBiography:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 656
    :goto_0
    return v0

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 656
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 1

    .prologue
    .line 767
    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getSerializedSize()I

    .line 662
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasBiography()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getBiography()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 671
    :cond_2
    return-void
.end method
