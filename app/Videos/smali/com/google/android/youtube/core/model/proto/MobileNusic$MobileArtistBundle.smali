.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileArtistBundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;,
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;,
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    }
.end annotation


# static fields
.field public static final ARTIST_TRACK_FIELD_NUMBER:I = 0x4

.field public static final BUNDLE_FOR_COUNTRY_FIELD_NUMBER:I = 0x2

.field public static final MAIN_ARTIST_FIELD_NUMBER:I = 0x1

.field public static final MIX_TRACK_FIELD_NUMBER:I = 0x5

.field public static final RELATED_ARTIST_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;


# instance fields
.field private artistTrack_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private bundleForCountry_:Ljava/lang/String;

.field private hasBundleForCountry:Z

.field private hasMainArtist:Z

.field private mainArtist_:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

.field private memoizedSerializedSize:I

.field private mixTrack_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private relatedArtist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1816
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    .line 1817
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 1818
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->initFields()V

    .line 1819
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->bundleForCountry_:Ljava/lang/String;

    .line 1269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    .line 1281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    .line 1293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    .line 1341
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->memoizedSerializedSize:I

    .line 600
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->initFields()V

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->bundleForCountry_:Ljava/lang/String;

    .line 1269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    .line 1281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    .line 1293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    .line 1341
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->memoizedSerializedSize:I

    .line 602
    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mainArtist_:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mainArtist_:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasBundleForCountry:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->bundleForCountry_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mainArtist_:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 1305
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 1

    .prologue
    .line 1438
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3800()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1441
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    .line 1408
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v1

    .line 1411
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    .line 1419
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v1

    .line 1422
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1374
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1380
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1428
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1402
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1391
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArtistTrack(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    .locals 1
    .parameter "index"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    return-object p0
.end method

.method public getArtistTrackCount()I
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getArtistTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->artistTrack_:Ljava/util/List;

    return-object v0
.end method

.method public getBundleForCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->bundleForCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method public getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mainArtist_:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    return-object v0
.end method

.method public getMixTrack(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    .locals 1
    .parameter "index"

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    return-object p0
.end method

.method public getMixTrackCount()I
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMixTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->mixTrack_:Ljava/util/List;

    return-object v0
.end method

.method public getRelatedArtist(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1
    .parameter "index"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    return-object p0
.end method

.method public getRelatedArtistCount()I
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRelatedArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->relatedArtist_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1343
    iget v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->memoizedSerializedSize:I

    .line 1344
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1368
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1346
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1348
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1351
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasBundleForCountry()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1352
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getBundleForCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1355
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getRelatedArtistList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1356
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1359
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getArtistTrackList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 1360
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 1363
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMixTrackList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 1364
    .restart local v0       #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    .line 1367
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_5
    iput v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->memoizedSerializedSize:I

    move v3, v2

    .line 1368
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasBundleForCountry()Z
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasBundleForCountry:Z

    return v0
.end method

.method public hasMainArtist()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1307
    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 1318
    :goto_0
    return v2

    .line 1308
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 1309
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getRelatedArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1310
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 1312
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getArtistTrackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 1313
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_0

    .line 1315
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMixTrackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 1316
    .restart local v0       #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_0

    .line 1318
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 1

    .prologue
    .line 1443
    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getSerializedSize()I

    .line 1324
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1325
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasBundleForCountry()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1328
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getBundleForCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getRelatedArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1331
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 1333
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getArtistTrackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 1334
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_1

    .line 1336
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMixTrackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 1337
    .restart local v0       #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_2

    .line 1339
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_4
    return-void
.end method
