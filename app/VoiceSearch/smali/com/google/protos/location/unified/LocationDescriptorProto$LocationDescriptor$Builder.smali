.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;",
        ">;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptorOrBuilder;"
    }
.end annotation


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

.field private producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field private radius_:F

.field private role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2580
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2769
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2793
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2891
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2934
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2998
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    .line 3019
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3115
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 3139
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 3163
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2581
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->maybeForceBuilderInitialization()V

    .line 2582
    return-void
.end method

.method static synthetic access$2200()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2587
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2585
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    .line 2631
    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2632
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2634
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 5

    .prologue
    .line 2638
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V

    .line 2639
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2640
    const/4 v2, 0x0

    .line 2641
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2642
    or-int/lit8 v2, v2, 0x1

    .line 2644
    :cond_0
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2645
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2646
    or-int/lit8 v2, v2, 0x2

    .line 2648
    :cond_1
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2649
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2650
    or-int/lit8 v2, v2, 0x4

    .line 2652
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;J)J

    .line 2653
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2654
    or-int/lit8 v2, v2, 0x8

    .line 2656
    :cond_3
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2658
    or-int/lit8 v2, v2, 0x10

    .line 2660
    :cond_4
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2802(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2661
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2662
    or-int/lit8 v2, v2, 0x20

    .line 2664
    :cond_5
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2902(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2665
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2666
    or-int/lit8 v2, v2, 0x40

    .line 2668
    :cond_6
    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3002(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;F)F

    .line 2669
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2670
    or-int/lit16 v2, v2, 0x80

    .line 2672
    :cond_7
    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3102(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I

    .line 2673
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2674
    or-int/lit16 v2, v2, 0x100

    .line 2676
    :cond_8
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3202(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2677
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2678
    or-int/lit16 v2, v2, 0x200

    .line 2680
    :cond_9
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3302(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 2682
    or-int/lit16 v2, v2, 0x400

    .line 2684
    :cond_a
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 2685
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 2686
    or-int/lit16 v2, v2, 0x800

    .line 2688
    :cond_b
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-static {v0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2689
    and-int/lit16 v1, v1, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_c

    .line 2690
    or-int/lit16 v1, v2, 0x1000

    .line 2692
    :goto_0
    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-static {v0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2693
    invoke-static {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I

    .line 2694
    return-object v0

    :cond_c
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clear()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clear()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2

    .prologue
    .line 2591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2592
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2593
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2594
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2595
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2596
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    .line 2597
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2599
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2600
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2601
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2602
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2603
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2604
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    .line 2605
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2606
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    .line 2607
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2608
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2609
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2610
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 2611
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2612
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 2613
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2614
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2615
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2616
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2617
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2618
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 3012
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3013
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    .line 3015
    return-object p0
.end method

.method public clearFeatureId()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3057
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3058
    return-object p0
.end method

.method public clearHistoricalProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 3180
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3181
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 3183
    return-object p0
.end method

.method public clearHistoricalRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 3156
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3157
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 3159
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 3098
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3099
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3101
    return-object p0
.end method

.method public clearLatlng()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2927
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2929
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2930
    return-object p0
.end method

.method public clearLatlngSpan()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2970
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2972
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2973
    return-object p0
.end method

.method public clearLoc()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2874
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2875
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLoc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2877
    return-object p0
.end method

.method public clearProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2810
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2811
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2813
    return-object p0
.end method

.method public clearProvenance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 3132
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3133
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 3135
    return-object p0
.end method

.method public clearRadius()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2991
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    .line 2994
    return-object p0
.end method

.method public clearRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2786
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2787
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2789
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2

    .prologue
    .line 2831
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2832
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    .line 2834
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2

    .prologue
    .line 2622
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

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
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 3003
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 2626
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureId()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getHistoricalProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public getHistoricalRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3068
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3069
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3070
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3073
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3079
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3080
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3082
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3085
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLatlng()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatlngSpan()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2844
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2845
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2846
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2849
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2855
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2856
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2858
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2861
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public getProvenance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 2982
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    return v0
.end method

.method public getRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2822
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 3000
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 3021
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 3165
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 3141
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 3064
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 2893
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 2936
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 2840
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 2795
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 3117
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 2979
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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

    .line 2771
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .line 2819
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 2746
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFeatureId(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3043
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3045
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3051
    :goto_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3052
    return-object p0

    .line 3048
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2575
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2575
    check-cast p1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2575
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2753
    const/4 v1, 0x0

    .line 2755
    :try_start_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    if-eqz v0, :cond_0

    .line 2761
    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2764
    :cond_0
    return-object p0

    .line 2756
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2757
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2758
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2760
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2761
    invoke-virtual {p0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    :cond_1
    throw v0

    .line 2760
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2698
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2742
    :goto_0
    return-object v0

    .line 2699
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasRole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2700
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2702
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2703
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2705
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2706
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setTimestamp(J)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2708
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2709
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2710
    invoke-static {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2700(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2713
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2714
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLatlng()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2716
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2717
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLatlngSpan()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeLatlngSpan(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2719
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2720
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setRadius(F)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2722
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2723
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getConfidence()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setConfidence(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2725
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2726
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getFeatureId()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFeatureId(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2728
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2729
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2730
    invoke-static {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3300(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 2733
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2734
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getProvenance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setProvenance(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2736
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2737
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setHistoricalRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2739
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2740
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setHistoricalProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    :cond_d
    move-object v0, p0

    .line 2742
    goto/16 :goto_0
.end method

.method public mergeLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2915
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2923
    :goto_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2924
    return-object p0

    .line 2920
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    goto :goto_0
.end method

.method public mergeLatlngSpan(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2958
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2960
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2966
    :goto_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2967
    return-object p0

    .line 2963
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    goto :goto_0
.end method

.method public setConfidence(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3006
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3007
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    .line 3009
    return-object p0
.end method

.method public setFeatureId(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3037
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3039
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3040
    return-object p0
.end method

.method public setFeatureId(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3027
    if-nez p1, :cond_0

    .line 3028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3030
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3032
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3033
    return-object p0
.end method

.method public setHistoricalProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3171
    if-nez p1, :cond_0

    .line 3172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3174
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3175
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 3177
    return-object p0
.end method

.method public setHistoricalRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3147
    if-nez p1, :cond_0

    .line 3148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3150
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3151
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 3153
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3089
    if-nez p1, :cond_0

    .line 3090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3092
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3093
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3095
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3105
    if-nez p1, :cond_0

    .line 3106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3108
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3109
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3111
    return-object p0
.end method

.method public setLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2909
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2911
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2912
    return-object p0
.end method

.method public setLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2899
    if-nez p1, :cond_0

    .line 2900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2902
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2904
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2905
    return-object p0
.end method

.method public setLatlngSpan(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2952
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2954
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2955
    return-object p0
.end method

.method public setLatlngSpan(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2942
    if-nez p1, :cond_0

    .line 2943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2945
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2947
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2948
    return-object p0
.end method

.method public setLoc(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2865
    if-nez p1, :cond_0

    .line 2866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2868
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2869
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2871
    return-object p0
.end method

.method public setLocBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2881
    if-nez p1, :cond_0

    .line 2882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2884
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2885
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2887
    return-object p0
.end method

.method public setProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2801
    if-nez p1, :cond_0

    .line 2802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2804
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2805
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2807
    return-object p0
.end method

.method public setProvenance(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3123
    if-nez p1, :cond_0

    .line 3124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3126
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3127
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 3129
    return-object p0
.end method

.method public setRadius(F)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2985
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2986
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    .line 2988
    return-object p0
.end method

.method public setRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2777
    if-nez p1, :cond_0

    .line 2778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2780
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2781
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2783
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2825
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2826
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    .line 2828
    return-object p0
.end method
