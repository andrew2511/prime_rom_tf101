.class public Lcom/amazon/kcp/application/AndroidDeviceType;
.super Ljava/lang/Object;
.source "AndroidDeviceType.java"


# static fields
.field private static final PRIVATE_VALUES:[Lcom/amazon/kcp/application/AndroidDeviceType;

.field public static final REDDING:Lcom/amazon/kcp/application/AndroidDeviceType;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/application/AndroidDeviceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHISKEYTOWN:Lcom/amazon/kcp/application/AndroidDeviceType;


# instance fields
.field private final deviceTypeHumanReadable:Ljava/lang/String;

.field private final deviceTypeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/kcp/application/AndroidDeviceType;

    const-string v1, "A3VNNDO1I14V03"

    const-string v2, "Redding"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidDeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->REDDING:Lcom/amazon/kcp/application/AndroidDeviceType;

    .line 25
    new-instance v0, Lcom/amazon/kcp/application/AndroidDeviceType;

    const-string v1, "A2Y8LFC259B97P"

    const-string v2, "Whiskeytown"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidDeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AndroidDeviceType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/application/AndroidDeviceType;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/kcp/application/AndroidDeviceType;->REDDING:Lcom/amazon/kcp/application/AndroidDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/amazon/kcp/application/AndroidDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AndroidDeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->PRIVATE_VALUES:[Lcom/amazon/kcp/application/AndroidDeviceType;

    .line 72
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->PRIVATE_VALUES:[Lcom/amazon/kcp/application/AndroidDeviceType;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "deviceTypeId"
    .parameter "deviceTypeHumanReadable"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDeviceType;->deviceTypeId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidDeviceType;->deviceTypeHumanReadable:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getDeviceTypeHumanReadable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceType;->deviceTypeHumanReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceType;->deviceTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceTypeHumanReadable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidDeviceType;->deviceTypeHumanReadable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidDeviceType;->deviceTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
