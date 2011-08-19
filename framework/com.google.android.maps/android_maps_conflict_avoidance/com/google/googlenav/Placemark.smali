.class public Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;
.super Ljava/lang/Object;
.source "Placemark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;
    }
.end annotation


# static fields
.field private static final EMPTY_ENHANCED_DATA_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

.field private static final EMPTY_IMAGE_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

.field private static final EMPTY_SNIPPET_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;


# instance fields
.field private events:Ljava/util/Hashtable;

.field private geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

.field private iconClass:B

.field private isSelectable:Z

.field private name:Ljava/lang/String;

.field private final proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private resultType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_ENHANCED_DATA_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

    .line 124
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_IMAGE_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

    .line 126
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_SNIPPET_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;

    return-void
.end method

.method protected constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/Geometry;Ljava/lang/String;)V
    .registers 5
    .parameter "geometry"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->events:Ljava/util/Hashtable;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isSelectable:Z

    .line 277
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    .line 278
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    .line 280
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 281
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->iconClass:B

    .line 282
    const/4 v0, 0x7

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    .line 283
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .registers 4

    .prologue
    .line 518
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;->getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 4

    .prologue
    .line 523
    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;->getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeometry()Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    return-object v0
.end method

.method public getKmlSnippet()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1093
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x5a

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKmlSupplementalDisplayLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1370
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getKmlSnippet()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 3

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getGeometry()Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    move-result-object v0

    .line 510
    .local v0, location:Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    if-nez v0, :cond_8

    .line 511
    const/4 v1, 0x0

    .line 513
    :goto_7
    return-object v1

    :cond_8
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/map/Geometry;->getDefiningPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    goto :goto_7
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 754
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 755
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    .line 771
    :goto_a
    return-object v2

    .line 758
    :cond_b
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKml()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 760
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getKmlSupplementalDisplayLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 765
    :cond_16
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, addressLine1:Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, addressLine2:Ljava/lang/String;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 768
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object v2, v1

    goto :goto_a

    :cond_2e
    move-object v2, v0

    goto :goto_a

    .line 771
    :cond_30
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object v2, v0

    goto :goto_a

    :cond_3a
    move-object v2, v1

    goto :goto_a
.end method

.method public isKml()Z
    .registers 2

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKmlPlacemark()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKmlResult()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isKmlPlacemark()Z
    .registers 3

    .prologue
    .line 723
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isKmlResult()Z
    .registers 3

    .prologue
    .line 718
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 880
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 881
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getLocation()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    .line 882
    if-eqz v1, :cond_12

    .line 883
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    :cond_12
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 889
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    :cond_30
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 893
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
