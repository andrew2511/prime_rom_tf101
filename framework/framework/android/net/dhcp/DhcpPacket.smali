.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/InetAddress;

.field protected final mClientIp:Ljava/net/InetAddress;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateway:Ljava/net/InetAddress;

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMessage:Ljava/lang/String;

.field private final mNextIp:Ljava/net/InetAddress;

.field private final mRelayIp:Ljava/net/InetAddress;

.field protected mRequestedIp:Ljava/net/InetAddress;

.field protected mRequestedParams:[B

.field protected mServerIdentifier:Ljava/net/InetAddress;

.field protected mSubnetMask:Ljava/net/InetAddress;

.field protected final mTransId:I

.field protected final mYourIp:Ljava/net/InetAddress;


# direct methods
.method protected constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V
    .registers 8
    .parameter "transId"
    .parameter "clientIp"
    .parameter "yourIp"
    .parameter "nextIp"
    .parameter "relayIp"
    .parameter "clientMac"
    .parameter "broadcast"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 230
    iput-object p2, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    .line 231
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/InetAddress;

    .line 232
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/InetAddress;

    .line 233
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/InetAddress;

    .line 234
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 235
    iput-boolean p7, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    .line 236
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/Integer;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 21
    .parameter "encap"
    .parameter "transactionId"
    .parameter "broadcast"
    .parameter "serverIpAddr"
    .parameter "clientIpAddr"
    .parameter "mac"
    .parameter "timeout"
    .parameter "netMask"
    .parameter "bcAddr"
    .parameter "gateway"
    .parameter
    .parameter "dhcpServerIdentifier"
    .parameter "domainName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 858
    .local p10, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/net/dhcp/DhcpAckPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 860
    .local v2, pkt:Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/InetAddress;

    .line 861
    move-object/from16 v0, p10

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    .line 862
    iput-object p6, v2, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 863
    move-object/from16 v0, p12

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpAckPacket;->mDomainName:Ljava/lang/String;

    .line 864
    iput-object p7, v2, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/InetAddress;

    .line 865
    move-object/from16 v0, p11

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpAckPacket;->mServerIdentifier:Ljava/net/InetAddress;

    .line 866
    move-object/from16 v0, p8

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpAckPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    .line 867
    const/16 p1, 0x44

    const/16 p2, 0x43

    invoke-virtual {v2, p0, p1, p2}, Landroid/net/dhcp/DhcpAckPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    .end local p1
    .end local p2
    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static buildDiscoverPacket(II[BZ[B)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "encap"
    .parameter "transactionId"
    .parameter "clientMac"
    .parameter "broadcast"
    .parameter "expectedParams"

    .prologue
    .line 823
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(I[BZ)V

    .line 825
    .local v0, pkt:Landroid/net/dhcp/DhcpPacket;
    iput-object p4, v0, Landroid/net/dhcp/DhcpDiscoverPacket;->mRequestedParams:[B

    .line 826
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpDiscoverPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/InetAddress;Ljava/net/InetAddress;[B)Ljava/nio/ByteBuffer;
    .registers 12
    .parameter "encap"
    .parameter "transactionId"
    .parameter "serverIpAddr"
    .parameter "clientIpAddr"
    .parameter "mac"

    .prologue
    .line 875
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p2

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 877
    .local v0, pkt:Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    .line 878
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    .line 879
    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpNakPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/Integer;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 21
    .parameter "encap"
    .parameter "transactionId"
    .parameter "broadcast"
    .parameter "serverIpAddr"
    .parameter "clientIpAddr"
    .parameter "mac"
    .parameter "timeout"
    .parameter "netMask"
    .parameter "bcAddr"
    .parameter "gateway"
    .parameter
    .parameter "dhcpServerIdentifier"
    .parameter "domainName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 838
    .local p10, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 840
    .local v2, pkt:Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpOfferPacket;->mGateway:Ljava/net/InetAddress;

    .line 841
    move-object/from16 v0, p10

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    .line 842
    iput-object p6, v2, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 843
    move-object/from16 v0, p12

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpOfferPacket;->mDomainName:Ljava/lang/String;

    .line 844
    move-object/from16 v0, p11

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpOfferPacket;->mServerIdentifier:Ljava/net/InetAddress;

    .line 845
    iput-object p7, v2, Landroid/net/dhcp/DhcpOfferPacket;->mSubnetMask:Ljava/net/InetAddress;

    .line 846
    move-object/from16 v0, p8

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    .line 847
    const/16 p1, 0x44

    const/16 p2, 0x43

    invoke-virtual {v2, p0, p1, p2}, Landroid/net/dhcp/DhcpOfferPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    .end local p1
    .end local p2
    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static buildRequestPacket(IILjava/net/InetAddress;Z[BLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 13
    .parameter "encap"
    .parameter "transactionId"
    .parameter "clientIp"
    .parameter "broadcast"
    .parameter "clientMac"
    .parameter "requestedIpAddress"
    .parameter "serverIdentifier"
    .parameter "requestedParams"
    .parameter "hostName"

    .prologue
    .line 889
    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ILjava/net/InetAddress;[BZ)V

    .line 891
    .local v0, pkt:Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/InetAddress;

    .line 892
    iput-object p6, v0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/InetAddress;

    .line 893
    iput-object p8, v0, Landroid/net/dhcp/DhcpRequestPacket;->mHostName:Ljava/lang/String;

    .line 894
    iput-object p7, v0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    .line 895
    const/16 v2, 0x43

    const/16 v3, 0x44

    invoke-virtual {v0, p0, v2, v3}, Landroid/net/dhcp/DhcpRequestPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 896
    .local v1, result:Ljava/nio/ByteBuffer;
    return-object v1
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .registers 19
    .parameter "buf"
    .parameter "seed"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 377
    move/from16 v11, p2

    .line 378
    .local v11, sum:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 382
    .local v4, bufPosition:I
    move-object v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 383
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 386
    .local v10, shortBuf:Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    sub-int v12, p4, p3

    div-int/lit8 v12, v12, 0x2

    new-array v9, v12, [S

    .line 389
    .local v9, shortArray:[S
    invoke-virtual {v10, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 391
    move-object v2, v9

    .local v2, arr$:[S
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1f
    if-ge v5, v6, :cond_2b

    aget-short v8, v2, v5

    .line 392
    .local v8, s:S
    invoke-direct {p0, v8}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 395
    .end local v8           #s:S
    :cond_2b
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x2

    add-int p3, p3, v12

    .line 398
    move/from16 v0, p4

    move/from16 v1, p3

    if-eq v0, v1, :cond_46

    .line 399
    move-object v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    int-to-short v3, v12

    .line 402
    .local v3, b:S
    if-gez v3, :cond_43

    .line 403
    add-int/lit16 v12, v3, 0x100

    int-to-short v3, v12

    .line 406
    :cond_43
    mul-int/lit16 v12, v3, 0x100

    add-int/2addr v11, v12

    .line 409
    .end local v3           #b:S
    :cond_46
    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    const v13, 0xffff

    and-int/2addr v13, v11

    add-int v11, v12, v13

    .line 410
    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    const v13, 0xffff

    and-int v11, v12, v13

    .line 411
    xor-int/lit8 v7, v11, -0x1

    .line 412
    .local v7, negated:I
    int-to-short v12, v7

    invoke-direct {p0, v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    return v12
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .registers 33
    .parameter "packet"
    .parameter "pktType"

    .prologue
    .line 564
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v16, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v14, 0x0

    .line 566
    .local v14, gateway:Ljava/net/InetAddress;
    const/16 v17, 0x0

    .line 567
    .local v17, leaseTime:Ljava/lang/Integer;
    const/16 v22, 0x0

    .line 568
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    const/16 v19, 0x0

    .line 569
    .local v19, netMask:Ljava/net/InetAddress;
    const/16 v18, 0x0

    .line 570
    .local v18, message:Ljava/lang/String;
    const/16 v23, 0x0

    .line 571
    .local v23, vendorId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 572
    .local v11, expectedParams:[B
    const/4 v15, 0x0

    .line 573
    .local v15, hostName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 574
    .local v9, domainName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 575
    .local v5, ipSrc:Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 576
    .local v3, ipDst:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 577
    .local v2, bcAddr:Ljava/net/InetAddress;
    const/16 v20, 0x0

    .line 580
    .local v20, requestedIp:Ljava/net/InetAddress;
    const/4 v8, -0x1

    .line 582
    .local v8, dhcpType:B
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 585
    if-nez p1, :cond_57

    .line 587
    const/4 v4, 0x6

    new-array v4, v4, [B

    .line 588
    .local v4, l2dst:[B
    const/4 v6, 0x6

    new-array v6, v6, [B

    .line 590
    .local v6, l2src:[B
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 591
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 593
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 595
    .local v4, l2type:S
    const/16 v6, 0x800

    if-eq v4, v6, :cond_57

    .line 596
    .end local v6           #l2src:[B
    const/16 p0, 0x0

    move/from16 p1, v8

    .end local v8           #dhcpType:B
    .local p1, dhcpType:B
    move-object v7, v3

    .end local v3           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object v6, v15

    .end local v15           #hostName:Ljava/lang/String;
    .local v6, hostName:Ljava/lang/String;
    move-object/from16 v13, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .local v13, vendorId:Ljava/lang/String;
    move-object/from16 v10, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .local v10, netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .local v12, serverIdentifier:Ljava/net/InetAddress;
    move-object v4, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    move-object v3, v11

    .end local v11           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v14, p0

    move-object/from16 p0, v2

    .end local v2           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move-object/from16 v11, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object v2, v9

    .end local v9           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v9, v18

    .line 805
    .end local v18           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    :goto_56
    return-object v14

    .line 599
    .end local v4           #gateway:Ljava/net/InetAddress;
    .end local v6           #hostName:Ljava/lang/String;
    .end local v7           #ipDst:Ljava/net/InetAddress;
    .end local v10           #netMask:Ljava/net/InetAddress;
    .end local v12           #serverIdentifier:Ljava/net/InetAddress;
    .end local v13           #vendorId:Ljava/lang/String;
    .local v2, bcAddr:Ljava/net/InetAddress;
    .local v3, ipDst:Ljava/net/InetAddress;
    .local v8, dhcpType:B
    .local v9, domainName:Ljava/lang/String;
    .local v11, expectedParams:[B
    .restart local v14       #gateway:Ljava/net/InetAddress;
    .restart local v15       #hostName:Ljava/lang/String;
    .restart local v17       #leaseTime:Ljava/lang/Integer;
    .restart local v18       #message:Ljava/lang/String;
    .restart local v19       #netMask:Ljava/net/InetAddress;
    .restart local v20       #requestedIp:Ljava/net/InetAddress;
    .restart local v22       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v23       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, pktType:I
    :cond_57
    if-eqz p1, :cond_5f

    const/4 v4, 0x1

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_4e8

    .line 601
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 603
    .local p1, ipType:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 604
    .local p1, ipDiffServicesField:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 605
    .local p1, ipTotalLength:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 606
    .local p1, ipIdentification:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 607
    .local p1, ipFlags:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 608
    .local p1, ipFragOffset:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 609
    .local p1, ipTTL:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 610
    .local v3, ipProto:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 612
    .local p1, ipChksm:S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v5

    .line 613
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object p1

    .line 615
    .local p1, ipDst:Ljava/net/InetAddress;
    const/16 v4, 0x11

    if-eq v3, v4, :cond_aa

    .line 616
    const/16 p0, 0x0

    move-object/from16 v7, p1

    .end local p1           #ipDst:Ljava/net/InetAddress;
    .restart local v7       #ipDst:Ljava/net/InetAddress;
    move-object v6, v15

    .end local v15           #hostName:Ljava/lang/String;
    .restart local v6       #hostName:Ljava/lang/String;
    move-object v3, v11

    .end local v11           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .restart local v13       #vendorId:Ljava/lang/String;
    move-object/from16 v10, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .restart local v10       #netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .restart local v12       #serverIdentifier:Ljava/net/InetAddress;
    move-object v4, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .restart local v4       #gateway:Ljava/net/InetAddress;
    move/from16 p1, v8

    .end local v8           #dhcpType:B
    .local p1, dhcpType:B
    move-object/from16 v11, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v14, p0

    move-object/from16 v8, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    move-object/from16 p0, v2

    .end local v2           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move-object v2, v9

    .end local v9           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    goto :goto_56

    .line 619
    .end local v4           #gateway:Ljava/net/InetAddress;
    .end local v6           #hostName:Ljava/lang/String;
    .end local v7           #ipDst:Ljava/net/InetAddress;
    .end local v10           #netMask:Ljava/net/InetAddress;
    .end local v12           #serverIdentifier:Ljava/net/InetAddress;
    .end local v13           #vendorId:Ljava/lang/String;
    .local v2, bcAddr:Ljava/net/InetAddress;
    .local v3, ipProto:B
    .local v8, dhcpType:B
    .local v9, domainName:Ljava/lang/String;
    .local v11, expectedParams:[B
    .restart local v14       #gateway:Ljava/net/InetAddress;
    .restart local v15       #hostName:Ljava/lang/String;
    .restart local v17       #leaseTime:Ljava/lang/Integer;
    .restart local v18       #message:Ljava/lang/String;
    .restart local v19       #netMask:Ljava/net/InetAddress;
    .restart local v20       #requestedIp:Ljava/net/InetAddress;
    .restart local v22       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v23       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, ipDst:Ljava/net/InetAddress;
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 620
    .local v4, udpSrcPort:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 621
    .local v3, udpDstPort:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 622
    .local v3, udpLen:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 624
    .local v3, udpChkSum:S
    const/16 v3, 0x43

    if-eq v4, v3, :cond_de

    .end local v3           #udpChkSum:S
    const/16 v3, 0x44

    if-eq v4, v3, :cond_de

    .line 625
    const/16 p0, 0x0

    move-object/from16 v7, p1

    .end local p1           #ipDst:Ljava/net/InetAddress;
    .restart local v7       #ipDst:Ljava/net/InetAddress;
    move-object v6, v15

    .end local v15           #hostName:Ljava/lang/String;
    .restart local v6       #hostName:Ljava/lang/String;
    move-object v3, v11

    .end local v11           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .restart local v13       #vendorId:Ljava/lang/String;
    move-object/from16 v10, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .restart local v10       #netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .restart local v12       #serverIdentifier:Ljava/net/InetAddress;
    move-object v4, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move/from16 p1, v8

    .end local v8           #dhcpType:B
    .local p1, dhcpType:B
    move-object/from16 v11, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v14, p0

    move-object/from16 v8, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    move-object/from16 p0, v2

    .end local v2           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move-object v2, v9

    .end local v9           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    goto/16 :goto_56

    .end local v3           #expectedParams:[B
    .end local v6           #hostName:Ljava/lang/String;
    .end local v7           #ipDst:Ljava/net/InetAddress;
    .end local v10           #netMask:Ljava/net/InetAddress;
    .end local v12           #serverIdentifier:Ljava/net/InetAddress;
    .end local v13           #vendorId:Ljava/lang/String;
    .local v2, bcAddr:Ljava/net/InetAddress;
    .local v4, udpSrcPort:S
    .local v8, dhcpType:B
    .local v9, domainName:Ljava/lang/String;
    .local v11, expectedParams:[B
    .restart local v14       #gateway:Ljava/net/InetAddress;
    .restart local v15       #hostName:Ljava/lang/String;
    .restart local v17       #leaseTime:Ljava/lang/Integer;
    .restart local v18       #message:Ljava/lang/String;
    .restart local v19       #netMask:Ljava/net/InetAddress;
    .restart local v20       #requestedIp:Ljava/net/InetAddress;
    .restart local v22       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v23       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, ipDst:Ljava/net/InetAddress;
    :cond_de
    move-object/from16 v21, p1

    .line 629
    .end local v4           #udpSrcPort:S
    .end local p1           #ipDst:Ljava/net/InetAddress;
    .local v21, ipDst:Ljava/net/InetAddress;
    :goto_e0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 630
    .local p1, type:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 631
    .local p1, hwType:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 632
    .local p1, addrLen:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 633
    .local v3, hops:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 634
    .local v3, transactionId:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 635
    .local v4, elapsed:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 636
    .local v4, bootpFlags:S
    const v6, 0x8000

    and-int/2addr v4, v6

    if-eqz v4, :cond_177

    .end local v4           #bootpFlags:S
    const/4 v4, 0x1

    .line 637
    .local v4, broadcast:Z
    :goto_103
    const/4 v6, 0x4

    new-array v7, v6, [B

    .line 640
    .local v7, ipv4addr:[B
    :try_start_106
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 641
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    .line 642
    .local v10, clientIp:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 643
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .line 644
    .local v6, yourIp:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 645
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v12

    .line 646
    .local v12, nextIp:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 647
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_12d
    .catch Ljava/net/UnknownHostException; {:try_start_106 .. :try_end_12d} :catch_179

    move-result-object v13

    .line 652
    .local v13, relayIp:Ljava/net/InetAddress;
    move/from16 v0, p1

    new-array v0, v0, [B

    move-object v7, v0

    .line 653
    .local v7, clientMac:[B
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 656
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v24

    const/16 v25, 0x10

    sub-int p1, v25, p1

    add-int p1, p1, v24

    add-int/lit8 p1, p1, 0x40

    move/from16 v0, p1

    add-int/lit16 v0, v0, 0x80

    move/from16 p1, v0

    invoke-virtual/range {p0 .. p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 660
    .end local p1           #addrLen:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 662
    .local p1, dhcpMagicCookie:I
    const v24, 0x63825363

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_196

    .line 663
    const/16 p0, 0x0

    move/from16 p1, v8

    .end local v8           #dhcpType:B
    .local p1, dhcpType:B
    move-object/from16 v7, v21

    .end local v21           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object v6, v15

    .end local v15           #hostName:Ljava/lang/String;
    .local v6, hostName:Ljava/lang/String;
    move-object v3, v11

    .end local v11           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .local v13, vendorId:Ljava/lang/String;
    move-object/from16 v10, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .local v10, netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .local v12, serverIdentifier:Ljava/net/InetAddress;
    move-object v4, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object/from16 v11, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    move-object/from16 v14, p0

    move-object/from16 p0, v2

    .end local v2           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move-object v2, v9

    .end local v9           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    goto/16 :goto_56

    .line 636
    .end local v4           #gateway:Ljava/net/InetAddress;
    .end local v6           #hostName:Ljava/lang/String;
    .end local v7           #ipDst:Ljava/net/InetAddress;
    .end local v10           #netMask:Ljava/net/InetAddress;
    .end local v12           #serverIdentifier:Ljava/net/InetAddress;
    .end local v13           #vendorId:Ljava/lang/String;
    .local v2, bcAddr:Ljava/net/InetAddress;
    .local v3, transactionId:I
    .local v8, dhcpType:B
    .local v9, domainName:Ljava/lang/String;
    .local v11, expectedParams:[B
    .restart local v14       #gateway:Ljava/net/InetAddress;
    .restart local v15       #hostName:Ljava/lang/String;
    .restart local v17       #leaseTime:Ljava/lang/Integer;
    .restart local v18       #message:Ljava/lang/String;
    .restart local v19       #netMask:Ljava/net/InetAddress;
    .restart local v20       #requestedIp:Ljava/net/InetAddress;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    .restart local v22       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v23       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, addrLen:B
    :cond_177
    const/4 v4, 0x0

    goto :goto_103

    .line 648
    .local v4, broadcast:Z
    .local v7, ipv4addr:[B
    :catch_179
    move-exception p0

    .line 649
    .local p0, ex:Ljava/net/UnknownHostException;
    const/16 p0, 0x0

    move/from16 p1, v8

    .end local v8           #dhcpType:B
    .local p1, dhcpType:B
    move-object/from16 v7, v21

    .end local v21           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object v6, v15

    .end local v15           #hostName:Ljava/lang/String;
    .restart local v6       #hostName:Ljava/lang/String;
    move-object v3, v11

    .end local v11           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .restart local v13       #vendorId:Ljava/lang/String;
    move-object/from16 v10, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .restart local v10       #netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .restart local v12       #serverIdentifier:Ljava/net/InetAddress;
    move-object v4, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object/from16 v11, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    move-object/from16 v14, p0

    move-object/from16 p0, v2

    .end local v2           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move-object v2, v9

    .end local v9           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    goto/16 :goto_56

    .line 666
    .local v2, bcAddr:Ljava/net/InetAddress;
    .local v3, transactionId:I
    .local v4, broadcast:Z
    .local v6, yourIp:Ljava/net/InetAddress;
    .local v7, clientMac:[B
    .local v8, dhcpType:B
    .local v9, domainName:Ljava/lang/String;
    .local v10, clientIp:Ljava/net/InetAddress;
    .local v11, expectedParams:[B
    .local v12, nextIp:Ljava/net/InetAddress;
    .local v13, relayIp:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    .restart local v15       #hostName:Ljava/lang/String;
    .restart local v17       #leaseTime:Ljava/lang/Integer;
    .restart local v18       #message:Ljava/lang/String;
    .restart local v19       #netMask:Ljava/net/InetAddress;
    .restart local v20       #requestedIp:Ljava/net/InetAddress;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    .restart local v22       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v23       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, dhcpMagicCookie:I
    :cond_196
    const/16 p1, 0x1

    .local p1, notFinishedOptions:Z
    move/from16 v25, p1

    .end local p1           #notFinishedOptions:Z
    .local v25, notFinishedOptions:Z
    move-object/from16 v27, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v27, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v29, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .local v29, vendorId:Ljava/lang/String;
    move-object/from16 v24, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .local v24, netMask:Ljava/net/InetAddress;
    move-object/from16 v28, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .local v28, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v20, v15

    .end local v15           #hostName:Ljava/lang/String;
    .local v20, hostName:Ljava/lang/String;
    move-object/from16 v23, v18

    .end local v18           #message:Ljava/lang/String;
    .local v23, message:Ljava/lang/String;
    move-object/from16 p1, v2

    .end local v2           #bcAddr:Ljava/net/InetAddress;
    .local p1, bcAddr:Ljava/net/InetAddress;
    move-object/from16 v22, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v22, leaseTime:Ljava/lang/Integer;
    move-object/from16 v19, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v19, gateway:Ljava/net/InetAddress;
    move-object/from16 v17, v9

    .end local v9           #domainName:Ljava/lang/String;
    .local v17, domainName:Ljava/lang/String;
    move-object/from16 v18, v11

    .end local v11           #expectedParams:[B
    .local v18, expectedParams:[B
    move v15, v8

    .line 668
    .end local v8           #dhcpType:B
    .local v15, dhcpType:B
    :goto_1b1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-ge v2, v8, :cond_3db

    if-eqz v25, :cond_3db

    .line 669
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 671
    .local v8, optionType:B
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1f4

    .line 672
    const/4 v2, 0x0

    .end local v25           #notFinishedOptions:Z
    .local v2, notFinishedOptions:Z
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v14, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v14, hostName:Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18           #expectedParams:[B
    .local v9, expectedParams:[B
    move-object/from16 v11, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v11, gateway:Ljava/net/InetAddress;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v17, v23

    .end local v23           #message:Ljava/lang/String;
    .local v17, message:Ljava/lang/String;
    move-object/from16 v18, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v18, netMask:Ljava/net/InetAddress;
    move/from16 v19, v2

    .end local v2           #notFinishedOptions:Z
    .local v19, notFinishedOptions:Z
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v15, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v15, leaseTime:Ljava/lang/Integer;
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    :goto_1dc
    move/from16 v25, v19

    .end local v19           #notFinishedOptions:Z
    .restart local v25       #notFinishedOptions:Z
    move-object/from16 v27, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    move-object/from16 v29, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .restart local v29       #vendorId:Ljava/lang/String;
    move-object/from16 v24, v18

    .end local v18           #netMask:Ljava/net/InetAddress;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    move-object/from16 v28, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v18, v9

    .end local v9           #expectedParams:[B
    .local v18, expectedParams:[B
    move-object/from16 v23, v17

    .end local v17           #message:Ljava/lang/String;
    .local v23, message:Ljava/lang/String;
    move-object/from16 v20, v14

    .end local v14           #hostName:Ljava/lang/String;
    .local v20, hostName:Ljava/lang/String;
    move-object/from16 v22, v15

    .end local v15           #leaseTime:Ljava/lang/Integer;
    .local v22, leaseTime:Ljava/lang/Integer;
    move-object/from16 v19, v11

    .end local v11           #gateway:Ljava/net/InetAddress;
    .local v19, gateway:Ljava/net/InetAddress;
    move-object/from16 v17, v8

    .end local v8           #domainName:Ljava/lang/String;
    .local v17, domainName:Ljava/lang/String;
    move v15, v2

    .line 752
    .end local v2           #dhcpType:B
    .local v15, dhcpType:B
    goto :goto_1b1

    .line 674
    .local v8, optionType:B
    :cond_1f4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v26

    .line 675
    .local v26, optionLen:B
    const/4 v2, 0x0

    .line 677
    .local v2, expectedLen:I
    sparse-switch v8, :sswitch_data_4ec

    .line 742
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1fd
    move v0, v8

    move/from16 v1, v26

    if-ge v0, v1, :cond_4d0

    .line 743
    add-int/lit8 v2, v2, 0x1

    .line 744
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 742
    add-int/lit8 v8, v8, 0x1

    goto :goto_1fd

    .line 679
    .local v8, optionType:B
    :sswitch_20a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v8

    .line 680
    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v8, netMask:Ljava/net/InetAddress;
    const/4 v2, 0x4

    move v9, v2

    .end local v2           #expectedLen:I
    .local v9, expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .local v11, expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v14, gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v8

    .end local v8           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v22, v28

    .line 748
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    :goto_225
    move v0, v9

    move/from16 v1, v26

    if-eq v0, v1, :cond_4c3

    .line 749
    const/16 p0, 0x0

    move-object/from16 v7, v21

    .end local v21           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object v6, v15

    .end local v15           #hostName:Ljava/lang/String;
    .local v6, hostName:Ljava/lang/String;
    move-object v3, v11

    .end local v11           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v23

    .end local v23           #vendorId:Ljava/lang/String;
    .local v13, vendorId:Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    move-object/from16 v10, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .local v10, netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v22

    .end local v22           #serverIdentifier:Ljava/net/InetAddress;
    .local v12, serverIdentifier:Ljava/net/InetAddress;
    move-object v4, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object/from16 v11, v20

    .end local v20           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v14, p0

    move-object/from16 p0, p1

    .end local p1           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move/from16 p1, v2

    .end local v2           #dhcpType:B
    .local p1, dhcpType:B
    move-object v2, v8

    .end local v8           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    goto/16 :goto_56

    .line 683
    .end local v9           #message:Ljava/lang/String;
    .end local v11           #requestedIp:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v3, transactionId:I
    .local v4, broadcast:Z
    .local v6, yourIp:Ljava/net/InetAddress;
    .local v7, clientMac:[B
    .local v8, optionType:B
    .local v10, clientIp:Ljava/net/InetAddress;
    .local v12, nextIp:Ljava/net/InetAddress;
    .local v13, relayIp:Ljava/net/InetAddress;
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, bcAddr:Ljava/net/InetAddress;
    :sswitch_246
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v8

    .line 684
    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v8, gateway:Ljava/net/InetAddress;
    const/4 v2, 0x4

    move v9, v2

    .end local v2           #expectedLen:I
    .local v9, expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .local v11, expectedParams:[B
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object v14, v8

    .end local v8           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v22, v28

    .line 685
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto :goto_225

    .line 687
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_261
    const/4 v2, 0x0

    .line 689
    const/4 v2, 0x0

    .end local v8           #optionType:B
    :goto_263
    move v0, v2

    move/from16 v1, v26

    if-ge v0, v1, :cond_4d0

    .line 691
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    add-int/lit8 v2, v2, 0x4

    goto :goto_263

    .line 695
    .restart local v8       #optionType:B
    :sswitch_275
    move/from16 v2, v26

    .line 696
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .end local v20           #hostName:Ljava/lang/String;
    .local v8, hostName:Ljava/lang/String;
    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object v15, v8

    .end local v8           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v22, v28

    .line 697
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto :goto_225

    .line 699
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_295
    move/from16 v8, v26

    .line 700
    .end local v2           #expectedLen:I
    .local v8, expectedLen:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .end local v17           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move v9, v8

    .end local v8           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    move-object v8, v2

    .end local v2           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v20, v27

    .line 701
    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 703
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_2b6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object p1

    .line 704
    const/4 v2, 0x4

    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v20, v27

    .line 705
    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 707
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_2d3
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v8

    .line 708
    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v8, requestedIp:Ljava/net/InetAddress;
    const/4 v2, 0x4

    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v20, v8

    .end local v8           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v22, v28

    .line 709
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 711
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_2f0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .end local v2           #expectedLen:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 712
    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    const/4 v2, 0x4

    .restart local v2       #expectedLen:I
    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v30, v8

    .end local v8           #leaseTime:Ljava/lang/Integer;
    .local v30, leaseTime:Ljava/lang/Integer;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v17, v30

    .line 713
    .end local v30           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    goto/16 :goto_225

    .line 715
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_313
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 716
    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    const/4 v8, 0x1

    .local v8, expectedLen:I
    move v9, v8

    .end local v8           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v22, v28

    .line 717
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 719
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_32f
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v8

    .line 720
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v8, serverIdentifier:Ljava/net/InetAddress;
    const/4 v2, 0x4

    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v30, v8

    .end local v8           #serverIdentifier:Ljava/net/InetAddress;
    .local v30, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v22, v30

    .line 721
    .end local v30           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 723
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_34e
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object v8, v0

    .line 724
    .end local v18           #expectedParams:[B
    .local v8, expectedParams:[B
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 725
    move/from16 v2, v26

    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object v11, v8

    .end local v8           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v20, v27

    .line 726
    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 728
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_372
    move/from16 v2, v26

    .line 729
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .end local v23           #message:Ljava/lang/String;
    .local v8, message:Ljava/lang/String;
    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v8

    .end local v8           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v22, v28

    .line 730
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 732
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_394
    move/from16 v2, v26

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .end local v29           #vendorId:Ljava/lang/String;
    .local v8, vendorId:Ljava/lang/String;
    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v23, v8

    .end local v8           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move-object/from16 v22, v28

    .line 734
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 736
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v2, expectedLen:I
    .local v8, optionType:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :sswitch_3b6
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object v2, v0

    .line 737
    .local v2, id:[B
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 738
    move/from16 v2, v26

    .local v2, expectedLen:I
    move v9, v2

    .end local v2           #expectedLen:I
    .restart local v9       #expectedLen:I
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v8, domainName:Ljava/lang/String;
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .restart local v11       #expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .restart local v14       #gateway:Ljava/net/InetAddress;
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v20, v27

    .line 739
    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    goto/16 :goto_225

    .line 756
    .end local v2           #dhcpType:B
    .end local v8           #domainName:Ljava/lang/String;
    .end local v9           #expectedLen:I
    .end local v11           #expectedParams:[B
    .end local v14           #gateway:Ljava/net/InetAddress;
    .end local v26           #optionLen:B
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :cond_3db
    packed-switch v15, :pswitch_data_526

    .line 790
    :pswitch_3de
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0           #packet:Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unimplemented type: "

    .end local v3           #transactionId:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 791
    const/16 p0, 0x0

    move-object/from16 v11, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v11, requestedIp:Ljava/net/InetAddress;
    move-object/from16 v7, v21

    .end local v21           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object/from16 v2, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move-object/from16 v6, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v6, hostName:Ljava/lang/String;
    move-object/from16 v3, v18

    .end local v18           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v13, vendorId:Ljava/lang/String;
    move-object/from16 v9, v23

    .end local v23           #message:Ljava/lang/String;
    .local v9, message:Ljava/lang/String;
    move-object/from16 v10, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v10, netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v12, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v8, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v8, leaseTime:Ljava/lang/Integer;
    move-object/from16 v4, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object/from16 v14, p0

    move-object/from16 p0, p1

    .end local p1           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move/from16 p1, v15

    .end local v15           #dhcpType:B
    .local p1, dhcpType:B
    goto/16 :goto_56

    .line 757
    .end local v2           #domainName:Ljava/lang/String;
    .end local v8           #leaseTime:Ljava/lang/Integer;
    .end local v9           #message:Ljava/lang/String;
    .end local v11           #requestedIp:Ljava/net/InetAddress;
    .local v3, transactionId:I
    .local v4, broadcast:Z
    .local v6, yourIp:Ljava/net/InetAddress;
    .local v7, clientMac:[B
    .local v10, clientIp:Ljava/net/InetAddress;
    .local v12, nextIp:Ljava/net/InetAddress;
    .local v13, relayIp:Ljava/net/InetAddress;
    .restart local v15       #dhcpType:B
    .restart local v17       #domainName:Ljava/lang/String;
    .restart local v18       #expectedParams:[B
    .restart local v19       #gateway:Ljava/net/InetAddress;
    .restart local v20       #hostName:Ljava/lang/String;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    .restart local v22       #leaseTime:Ljava/lang/Integer;
    .restart local v23       #message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, bcAddr:Ljava/net/InetAddress;
    :pswitch_419
    const/16 p0, 0x0

    move-object/from16 v11, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .restart local v11       #requestedIp:Ljava/net/InetAddress;
    move-object/from16 v7, v21

    .end local v21           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object/from16 v2, v17

    .end local v17           #domainName:Ljava/lang/String;
    .restart local v2       #domainName:Ljava/lang/String;
    move-object/from16 v6, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v6, hostName:Ljava/lang/String;
    move-object/from16 v3, v18

    .end local v18           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v13, vendorId:Ljava/lang/String;
    move-object/from16 v9, v23

    .end local v23           #message:Ljava/lang/String;
    .restart local v9       #message:Ljava/lang/String;
    move-object/from16 v10, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v10, netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v12, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v8, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .restart local v8       #leaseTime:Ljava/lang/Integer;
    move-object/from16 v4, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object/from16 v14, p0

    move-object/from16 p0, p1

    .end local p1           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move/from16 p1, v15

    .end local v15           #dhcpType:B
    .local p1, dhcpType:B
    goto/16 :goto_56

    .line 759
    .end local v2           #domainName:Ljava/lang/String;
    .end local v8           #leaseTime:Ljava/lang/Integer;
    .end local v9           #message:Ljava/lang/String;
    .end local v11           #requestedIp:Ljava/net/InetAddress;
    .local v3, transactionId:I
    .local v4, broadcast:Z
    .local v6, yourIp:Ljava/net/InetAddress;
    .local v7, clientMac:[B
    .local v10, clientIp:Ljava/net/InetAddress;
    .local v12, nextIp:Ljava/net/InetAddress;
    .local v13, relayIp:Ljava/net/InetAddress;
    .restart local v15       #dhcpType:B
    .restart local v17       #domainName:Ljava/lang/String;
    .restart local v18       #expectedParams:[B
    .restart local v19       #gateway:Ljava/net/InetAddress;
    .restart local v20       #hostName:Ljava/lang/String;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    .restart local v22       #leaseTime:Ljava/lang/Integer;
    .restart local v23       #message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, bcAddr:Ljava/net/InetAddress;
    :pswitch_439
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v2, v3, v7, v4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(I[BZ)V

    .line 794
    .local v2, newPacket:Landroid/net/dhcp/DhcpPacket;
    :goto_43e
    move-object/from16 v0, p1

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    .line 795
    move-object/from16 v0, v16

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 796
    move-object/from16 v0, v17

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 797
    move-object/from16 v0, v19

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    .line 798
    move-object/from16 v0, v20

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 799
    move-object/from16 v0, v22

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 800
    move-object/from16 v0, v23

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 801
    move-object/from16 v0, v27

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    .line 802
    move-object/from16 v0, v18

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 803
    move-object/from16 v0, v28

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    .line 804
    move-object/from16 v0, v24

    move-object v1, v2

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    move-object/from16 v11, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .restart local v11       #requestedIp:Ljava/net/InetAddress;
    move-object/from16 p0, p1

    .end local p1           #bcAddr:Ljava/net/InetAddress;
    .local p0, bcAddr:Ljava/net/InetAddress;
    move-object/from16 v7, v21

    .end local v21           #ipDst:Ljava/net/InetAddress;
    .local v7, ipDst:Ljava/net/InetAddress;
    move-object/from16 v6, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v6, hostName:Ljava/lang/String;
    move-object/from16 v3, v18

    .end local v18           #expectedParams:[B
    .local v3, expectedParams:[B
    move-object/from16 v13, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v13, vendorId:Ljava/lang/String;
    move-object/from16 v9, v23

    .end local v23           #message:Ljava/lang/String;
    .restart local v9       #message:Ljava/lang/String;
    move-object/from16 v10, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v10, netMask:Ljava/net/InetAddress;
    move-object/from16 v12, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v12, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v8, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .restart local v8       #leaseTime:Ljava/lang/Integer;
    move-object/from16 v4, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v4, gateway:Ljava/net/InetAddress;
    move-object v14, v2

    move-object/from16 v2, v17

    .end local v17           #domainName:Ljava/lang/String;
    .local v2, domainName:Ljava/lang/String;
    move/from16 p1, v15

    .line 805
    .end local v15           #dhcpType:B
    .local p1, dhcpType:B
    goto/16 :goto_56

    .line 763
    .end local v2           #domainName:Ljava/lang/String;
    .end local v8           #leaseTime:Ljava/lang/Integer;
    .end local v9           #message:Ljava/lang/String;
    .end local v11           #requestedIp:Ljava/net/InetAddress;
    .local v3, transactionId:I
    .local v4, broadcast:Z
    .local v6, yourIp:Ljava/net/InetAddress;
    .local v7, clientMac:[B
    .local v10, clientIp:Ljava/net/InetAddress;
    .local v12, nextIp:Ljava/net/InetAddress;
    .local v13, relayIp:Ljava/net/InetAddress;
    .restart local v15       #dhcpType:B
    .restart local v17       #domainName:Ljava/lang/String;
    .restart local v18       #expectedParams:[B
    .restart local v19       #gateway:Ljava/net/InetAddress;
    .restart local v20       #hostName:Ljava/lang/String;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    .restart local v22       #leaseTime:Ljava/lang/Integer;
    .restart local v23       #message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    .local p0, packet:Ljava/nio/ByteBuffer;
    .local p1, bcAddr:Ljava/net/InetAddress;
    :pswitch_492
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v7}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 765
    .local v2, newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_43e

    .line 767
    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_498
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    invoke-direct {v2, v3, v10, v7, v4}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ILjava/net/InetAddress;[BZ)V

    .line 769
    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_43e

    .line 771
    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_49e
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v8, v2

    move v9, v3

    move-object v11, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 774
    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_43e

    .line 776
    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_4a8
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v7}, Landroid/net/dhcp/DhcpAckPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 778
    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_43e

    .line 780
    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_4ae
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    move-object v8, v2

    move v9, v3

    move-object v11, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 783
    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_43e

    .line 785
    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_4b8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    move-object v8, v2

    move v9, v3

    move-object v11, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .line 788
    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_43e

    .end local v24           #netMask:Ljava/net/InetAddress;
    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .end local v29           #vendorId:Ljava/lang/String;
    .local v2, dhcpType:B
    .local v8, domainName:Ljava/lang/String;
    .local v9, expectedLen:I
    .local v11, expectedParams:[B
    .restart local v14       #gateway:Ljava/net/InetAddress;
    .local v15, hostName:Ljava/lang/String;
    .local v17, leaseTime:Ljava/lang/Integer;
    .local v18, message:Ljava/lang/String;
    .local v19, netMask:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    .local v23, vendorId:Ljava/lang/String;
    .restart local v26       #optionLen:B
    :cond_4c3
    move-object v9, v11

    .end local v11           #expectedParams:[B
    .local v9, expectedParams:[B
    move-object v11, v14

    .end local v14           #gateway:Ljava/net/InetAddress;
    .local v11, gateway:Ljava/net/InetAddress;
    move-object v14, v15

    .end local v15           #hostName:Ljava/lang/String;
    .local v14, hostName:Ljava/lang/String;
    move-object/from16 v15, v17

    .end local v17           #leaseTime:Ljava/lang/Integer;
    .local v15, leaseTime:Ljava/lang/Integer;
    move-object/from16 v17, v18

    .end local v18           #message:Ljava/lang/String;
    .local v17, message:Ljava/lang/String;
    move-object/from16 v18, v19

    .end local v19           #netMask:Ljava/net/InetAddress;
    .local v18, netMask:Ljava/net/InetAddress;
    move/from16 v19, v25

    .end local v25           #notFinishedOptions:Z
    .local v19, notFinishedOptions:Z
    goto/16 :goto_1dc

    .end local v8           #domainName:Ljava/lang/String;
    .end local v9           #expectedParams:[B
    .end local v11           #gateway:Ljava/net/InetAddress;
    .end local v14           #hostName:Ljava/lang/String;
    .local v2, expectedLen:I
    .local v15, dhcpType:B
    .local v17, domainName:Ljava/lang/String;
    .local v18, expectedParams:[B
    .local v19, gateway:Ljava/net/InetAddress;
    .local v20, hostName:Ljava/lang/String;
    .local v22, leaseTime:Ljava/lang/Integer;
    .local v23, message:Ljava/lang/String;
    .restart local v24       #netMask:Ljava/net/InetAddress;
    .restart local v25       #notFinishedOptions:Z
    .restart local v27       #requestedIp:Ljava/net/InetAddress;
    .restart local v28       #serverIdentifier:Ljava/net/InetAddress;
    .restart local v29       #vendorId:Ljava/lang/String;
    :cond_4d0
    move v9, v2

    .end local v2           #expectedLen:I
    .local v9, expectedLen:I
    move-object/from16 v8, v17

    .end local v17           #domainName:Ljava/lang/String;
    .restart local v8       #domainName:Ljava/lang/String;
    move-object/from16 v11, v18

    .end local v18           #expectedParams:[B
    .local v11, expectedParams:[B
    move-object/from16 v14, v19

    .end local v19           #gateway:Ljava/net/InetAddress;
    .local v14, gateway:Ljava/net/InetAddress;
    move-object/from16 v18, v23

    .end local v23           #message:Ljava/lang/String;
    .local v18, message:Ljava/lang/String;
    move-object/from16 v19, v24

    .end local v24           #netMask:Ljava/net/InetAddress;
    .local v19, netMask:Ljava/net/InetAddress;
    move-object/from16 v17, v22

    .end local v22           #leaseTime:Ljava/lang/Integer;
    .local v17, leaseTime:Ljava/lang/Integer;
    move v2, v15

    .end local v15           #dhcpType:B
    .local v2, dhcpType:B
    move-object/from16 v22, v28

    .end local v28           #serverIdentifier:Ljava/net/InetAddress;
    .local v22, serverIdentifier:Ljava/net/InetAddress;
    move-object/from16 v23, v29

    .end local v29           #vendorId:Ljava/lang/String;
    .local v23, vendorId:Ljava/lang/String;
    move-object/from16 v15, v20

    .end local v20           #hostName:Ljava/lang/String;
    .local v15, hostName:Ljava/lang/String;
    move-object/from16 v20, v27

    .end local v27           #requestedIp:Ljava/net/InetAddress;
    .local v20, requestedIp:Ljava/net/InetAddress;
    goto/16 :goto_225

    .end local v4           #broadcast:Z
    .end local v6           #yourIp:Ljava/net/InetAddress;
    .end local v7           #clientMac:[B
    .end local v10           #clientIp:Ljava/net/InetAddress;
    .end local v12           #nextIp:Ljava/net/InetAddress;
    .end local v13           #relayIp:Ljava/net/InetAddress;
    .end local v21           #ipDst:Ljava/net/InetAddress;
    .end local v25           #notFinishedOptions:Z
    .end local v26           #optionLen:B
    .local v2, bcAddr:Ljava/net/InetAddress;
    .local v3, ipDst:Ljava/net/InetAddress;
    .local v8, dhcpType:B
    .local v9, domainName:Ljava/lang/String;
    .local p1, pktType:I
    :cond_4e8
    move-object/from16 v21, v3

    .end local v3           #ipDst:Ljava/net/InetAddress;
    .restart local v21       #ipDst:Ljava/net/InetAddress;
    goto/16 :goto_e0

    .line 677
    :sswitch_data_4ec
    .sparse-switch
        0x1 -> :sswitch_20a
        0x3 -> :sswitch_246
        0x6 -> :sswitch_261
        0xc -> :sswitch_275
        0xf -> :sswitch_295
        0x1c -> :sswitch_2b6
        0x32 -> :sswitch_2d3
        0x33 -> :sswitch_2f0
        0x35 -> :sswitch_313
        0x36 -> :sswitch_32f
        0x37 -> :sswitch_34e
        0x38 -> :sswitch_372
        0x3c -> :sswitch_394
        0x3d -> :sswitch_3b6
    .end sparse-switch

    .line 756
    :pswitch_data_526
    .packed-switch -0x1
        :pswitch_419
        :pswitch_3de
        :pswitch_439
        :pswitch_492
        :pswitch_498
        :pswitch_49e
        :pswitch_4a8
        :pswitch_4ae
        :pswitch_3de
        :pswitch_4b8
    .end packed-switch
.end method

.method public static decodeFullPacket([BI)Landroid/net/dhcp/DhcpPacket;
    .registers 5
    .parameter "packet"
    .parameter "pktType"

    .prologue
    .line 813
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 814
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0, p1}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v1

    return-object v1
.end method

.method private intAbs(S)I
    .registers 4
    .parameter "v"

    .prologue
    .line 363
    if-gez p1, :cond_8

    .line 364
    const/high16 v1, 0x1

    add-int v0, p1, v1

    .local v0, r:I
    move v1, v0

    .line 367
    .end local v0           #r:I
    :goto_7
    return v1

    :cond_8
    move v1, p1

    goto :goto_7
.end method

.method public static macToString([B)Ljava/lang/String;
    .registers 7
    .parameter "mac"

    .prologue
    .line 494
    const-string v2, ""

    .line 496
    .local v2, macAddr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_55

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, hexString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    array-length v3, p0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_52

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 508
    .end local v0           #hexString:Ljava/lang/String;
    :cond_55
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 7
    .parameter "buf"
    .parameter "byteCount"

    .prologue
    .line 541
    new-array v0, p1, [B

    .line 542
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 543
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    sget-object v4, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;
    .registers 5
    .parameter "packet"

    .prologue
    .line 522
    const/4 v2, 0x0

    .line 523
    .local v2, result:Ljava/net/InetAddress;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 524
    .local v1, ipAddr:[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 527
    :try_start_7
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    .line 534
    :goto_b
    return-object v2

    .line 528
    :catch_c
    move-exception v0

    .line 531
    .local v0, ex:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected addTlv(Ljava/nio/ByteBuffer;BB)V
    .registers 5
    .parameter "buf"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 419
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 421
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 422
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .registers 5
    .parameter "buf"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 462
    if-eqz p3, :cond_10

    .line 463
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 464
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 465
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 467
    :cond_10
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .registers 6
    .parameter "buf"
    .parameter "type"
    .parameter "str"

    .prologue
    .line 473
    if-eqz p3, :cond_1f

    .line 474
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 478
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 481
    .end local v0           #i:I
    :cond_1f
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V
    .registers 5
    .parameter "buf"
    .parameter "type"
    .parameter "addr"

    .prologue
    .line 439
    if-eqz p3, :cond_9

    .line 440
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 442
    :cond_9
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .registers 7
    .parameter "buf"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p3, addrs:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz p3, :cond_2d

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    .line 449
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 452
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 453
    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_19

    .line 456
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2d
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;B[B)V
    .registers 5
    .parameter "buf"
    .parameter "type"
    .parameter "payload"

    .prologue
    .line 428
    if-eqz p3, :cond_d

    .line 429
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    array-length v0, p3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    :cond_d
    return-void
.end method

.method protected addTlvEnd(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 487
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 488
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method public abstract doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
.end method

.method protected fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V
    .registers 27
    .parameter "encap"
    .parameter "destIp"
    .parameter "srcIp"
    .parameter "destUdp"
    .parameter "srcUdp"
    .parameter "buf"
    .parameter "requestCode"
    .parameter "broadcast"

    .prologue
    .line 253
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 254
    .local v5, destIpArray:[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 255
    .local v9, srcIpArray:[B
    const/4 v8, 0x0

    .line 256
    .local v8, ipLengthOffset:I
    const/4 v7, 0x0

    .line 257
    .local v7, ipChecksumOffset:I
    const/4 v6, 0x0

    .line 258
    .local v6, endIpHeader:I
    const/4 v11, 0x0

    .line 259
    .local v11, udpHeaderOffset:I
    const/4 v13, 0x0

    .line 260
    .local v13, udpLengthOffset:I
    const/4 v10, 0x0

    .line 262
    .local v10, udpChecksumOffset:I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 263
    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 268
    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_9c

    .line 270
    const/16 v15, 0x45

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 271
    const/16 v15, 0x10

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 272
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 273
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 274
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 275
    const/16 v15, 0x4000

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 276
    const/16 v15, 0x40

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 277
    const/16 v15, 0x11

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 279
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 281
    move-object/from16 v0, p6

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 286
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 287
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 288
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 290
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 292
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 296
    :cond_9c
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 297
    const/4 v15, 0x1

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object v15, v0

    array-length v15, v15

    int-to-byte v15, v15

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    move v15, v0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 301
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 303
    if-eqz p8, :cond_1f6

    .line 304
    const/16 v15, -0x8000

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 309
    :goto_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v15

    move-object/from16 v0, p6

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/InetAddress;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v15

    move-object/from16 v0, p6

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/InetAddress;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v15

    move-object/from16 v0, p6

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/InetAddress;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v15

    move-object/from16 v0, p6

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object v15, v0

    move-object/from16 v0, p6

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    const/16 v16, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x40

    add-int/lit16 v15, v15, 0x80

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    const v15, 0x63825363

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 322
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_160

    .line 323
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 328
    :cond_160
    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_1f5

    .line 330
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    sub-int/2addr v15, v11

    int-to-short v12, v15

    .line 331
    .local v12, udpLen:S
    move-object/from16 v0, p6

    move v1, v13

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 334
    const/4 v14, 0x0

    .line 338
    .local v14, udpSeed:I
    add-int/lit8 v15, v7, 0x2

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v15

    add-int/2addr v14, v15

    .line 339
    add-int/lit8 v15, v7, 0x4

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v15

    add-int/2addr v14, v15

    .line 340
    add-int/lit8 v15, v7, 0x6

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v15

    add-int/2addr v14, v15

    .line 341
    add-int/lit8 v15, v7, 0x8

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v15

    add-int/2addr v14, v15

    .line 344
    add-int/lit8 v14, v14, 0x11

    .line 345
    add-int/2addr v14, v12

    .line 347
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move v2, v14

    move v3, v11

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v15

    int-to-short v15, v15

    move-object/from16 v0, p6

    move v1, v10

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 351
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    int-to-short v15, v15

    move-object/from16 v0, p6

    move v1, v8

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 353
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move v2, v15

    move/from16 v3, v16

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v15

    int-to-short v15, v15

    move-object/from16 v0, p6

    move v1, v7

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 356
    .end local v12           #udpLen:S
    .end local v14           #udpSeed:I
    :cond_1f5
    return-void

    .line 306
    :cond_1f6
    const/4 v15, 0x0

    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_d6
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 512
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, macAddr:Ljava/lang/String;
    return-object v0
.end method
