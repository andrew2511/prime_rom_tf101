.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x8

.field public static final FEATURE_ID_FIELD_NUMBER:I = 0xa

.field public static final HISTORICAL_PRODUCER_FIELD_NUMBER:I = 0xd

.field public static final HISTORICAL_ROLE_FIELD_NUMBER:I = 0xc

.field public static final LANGUAGE_FIELD_NUMBER:I = 0xb

.field public static final LATLNG_FIELD_NUMBER:I = 0x5

.field public static final LATLNG_SPAN_FIELD_NUMBER:I = 0x6

.field public static final LOC_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_FIELD_NUMBER:I = 0x2

.field public static final PROVENANCE_FIELD_NUMBER:I = 0x9

.field public static final RADIUS_FIELD_NUMBER:I = 0x7

.field public static final ROLE_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;


# instance fields
.field private bitField0_:I

.field private confidence_:I

.field private featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

.field private historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private language_:Ljava/lang/Object;

.field private latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

.field private latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

.field private loc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field private radius_:F

.field private role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2187
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 3190
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    .line 3191
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->initFields()V

    .line 3192
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 2049
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2394
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2447
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2050
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->initFields()V

    .line 2053
    const/4 v0, 0x0

    move v1, v0

    .line 2054
    :goto_0
    if-nez v1, :cond_3

    .line 2055
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2056
    sparse-switch v0, :sswitch_data_0

    .line 2061
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    :goto_1
    move v1, v0

    .line 2177
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 2059
    goto :goto_1

    .line 2068
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2069
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v0

    .line 2070
    if-eqz v0, :cond_4

    .line 2071
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2072
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move v0, v1

    goto :goto_1

    .line 2077
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2078
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v0

    .line 2079
    if-eqz v0, :cond_4

    .line 2080
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2081
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move v0, v1

    goto :goto_1

    .line 2086
    :sswitch_3
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    move v0, v1

    .line 2088
    goto :goto_1

    .line 2091
    :sswitch_4
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2092
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    move v0, v1

    .line 2093
    goto :goto_1

    .line 2097
    :sswitch_5
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_7

    .line 2098
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    move-object v2, v0

    .line 2100
    :goto_2
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2101
    if-eqz v2, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v2, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 2103
    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2105
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    move v0, v1

    .line 2106
    goto :goto_1

    .line 2110
    :sswitch_6
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_6

    .line 2111
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    move-object v2, v0

    .line 2113
    :goto_3
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2114
    if-eqz v2, :cond_1

    .line 2115
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v2, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 2116
    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2118
    :cond_1
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    move v0, v1

    .line 2119
    goto/16 :goto_1

    .line 2122
    :sswitch_7
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2123
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    move v0, v1

    .line 2124
    goto/16 :goto_1

    .line 2127
    :sswitch_8
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2128
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    move v0, v1

    .line 2129
    goto/16 :goto_1

    .line 2132
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2133
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_4

    .line 2135
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2136
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    move v0, v1

    goto/16 :goto_1

    .line 2142
    :sswitch_a
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_5

    .line 2143
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    move-object v2, v0

    .line 2145
    :goto_4
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2146
    if-eqz v2, :cond_2

    .line 2147
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {v2, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    .line 2148
    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2150
    :cond_2
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    move v0, v1

    .line 2151
    goto/16 :goto_1

    .line 2154
    :sswitch_b
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    move v0, v1

    .line 2156
    goto/16 :goto_1

    .line 2159
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2160
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v0

    .line 2161
    if-eqz v0, :cond_4

    .line 2162
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2163
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move v0, v1

    goto/16 :goto_1

    .line 2168
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2169
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v0

    .line 2170
    if-eqz v0, :cond_4

    .line 2171
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2172
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto/16 :goto_1

    .line 2184
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->makeExtensionsImmutable()V

    .line 2186
    return-void

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2184
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->makeExtensionsImmutable()V

    throw v0

    .line 2180
    :catch_1
    move-exception v0

    .line 2181
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    move-object v2, v4

    goto :goto_4

    :cond_6
    move-object v2, v4

    goto/16 :goto_3

    :cond_7
    move-object v2, v4

    goto/16 :goto_2

    .line 2056
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2027
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2032
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2394
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2447
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2034
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2035
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2394
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2447
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2035
    return-void
.end method

.method static synthetic access$2402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return p1
.end method

.method static synthetic access$3102(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2027
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 2380
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2381
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2382
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 2383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2384
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2385
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 2387
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 2388
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2390
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 2391
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2392
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2393
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2568
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->access$2200()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2571
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2548
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2554
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2518
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2524
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2559
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2565
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2538
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2544
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2528
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2534
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object p0
.end method


# virtual methods
.method public getConfidence()I
    .locals 1

    .prologue
    .line 2303
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 2043
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method

.method public getFeatureId()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getHistoricalProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public getHistoricalRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2323
    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2324
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2325
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2333
    :goto_0
    return-object v1

    .line 2327
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2329
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2330
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2331
    iput-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2333
    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2340
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2342
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2345
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLatlng()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatlngSpan()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2240
    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2241
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2242
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2250
    :goto_0
    return-object v1

    .line 2244
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2246
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2247
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2248
    iput-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2250
    goto :goto_0
.end method

.method public getLocBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2256
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2257
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2259
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2262
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2199
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public getProvenance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 2293
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return v0
.end method

.method public getRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2449
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2450
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2506
    :goto_0
    return v0

    .line 2452
    :cond_0
    const/4 v0, 0x0

    .line 2453
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2454
    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2457
    :cond_1
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2458
    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2461
    :cond_2
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2462
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2465
    :cond_3
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 2466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLocBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2469
    :cond_4
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 2470
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2473
    :cond_5
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 2474
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2477
    :cond_6
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 2478
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2481
    :cond_7
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 2482
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2485
    :cond_8
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9

    .line 2486
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2489
    :cond_9
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_a

    .line 2490
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2493
    :cond_a
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_b

    .line 2494
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2497
    :cond_b
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 2498
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2501
    :cond_c
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 2502
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2505
    :cond_d
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2230
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 2300
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFeatureId()Z
    .locals 2

    .prologue
    .line 2310
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalProducer()Z
    .locals 2

    .prologue
    .line 2373
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalRole()Z
    .locals 2

    .prologue
    .line 2363
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 2320
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatlng()Z
    .locals 2

    .prologue
    .line 2270
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatlngSpan()Z
    .locals 2

    .prologue
    .line 2280
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoc()Z
    .locals 2

    .prologue
    .line 2237
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProducer()Z
    .locals 2

    .prologue
    .line 2217
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvenance()Z
    .locals 2

    .prologue
    .line 2353
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRadius()Z
    .locals 2

    .prologue
    .line 2290
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2207
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 2227
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2396
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2397
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2400
    :goto_0
    return v0

    .line 2397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2399
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    move v0, v2

    .line 2400
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2569
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2573
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2512
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2405
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getSerializedSize()I

    .line 2406
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2409
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2412
    :cond_1
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2413
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2415
    :cond_2
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 2416
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLocBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2418
    :cond_3
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2419
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2421
    :cond_4
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2422
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2424
    :cond_5
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 2425
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2427
    :cond_6
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 2428
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2430
    :cond_7
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_8

    .line 2431
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2433
    :cond_8
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 2434
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2436
    :cond_9
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 2437
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2439
    :cond_a
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 2440
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2442
    :cond_b
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 2443
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2445
    :cond_c
    return-void
.end method
