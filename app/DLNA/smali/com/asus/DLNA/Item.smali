.class Lcom/asus/DLNA/Item;
.super Ljava/lang/Object;
.source "DLNAServer.java"


# instance fields
.field protected entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

.field protected id:Ljava/lang/String;

.field protected resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)V
    .locals 2
    .parameter "entryInfo"
    .parameter "resInfo"

    .prologue
    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    iput-object p1, p0, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    .line 1647
    iput-object p2, p0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    .line 1648
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/Item;->title:Ljava/lang/String;

    .line 1649
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemID:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/Item;->id:Ljava/lang/String;

    .line 1650
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 1637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1638
    iput-object p1, p0, Lcom/asus/DLNA/Item;->title:Ljava/lang/String;

    .line 1639
    iput-object p2, p0, Lcom/asus/DLNA/Item;->id:Ljava/lang/String;

    .line 1640
    iput-object v0, p0, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    .line 1641
    iput-object v0, p0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    .line 1642
    return-void
.end method


# virtual methods
.method public getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/asus/DLNA/Item;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/asus/DLNA/Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri(I)Ljava/lang/String;
    .locals 5
    .parameter "theIndex"

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v1, p1

    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
