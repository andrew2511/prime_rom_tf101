.class public final enum Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
.super Ljava/lang/Enum;
.source "DMAccSubNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/handler/DMAccSubNodeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum ADDR:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum ADDR_TYPE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum AUTH_PREF:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum CLIENT_NONCE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum CLIENT_PW:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum CON_REF:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum NAME:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum PORTNBR:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum SERVER_ID:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum SERVER_NONCE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum SERVER_PW:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

.field public static final enum USERNAME:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;


# instance fields
.field private final mNodeName10:Ljava/lang/String;

.field private final mNodeName12:Ljava/lang/String;

.field private final mNodePath12:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v1, "ADDR"

    const-string v3, "Addr"

    const-string v4, "AppAddr/APPSRV/"

    const-string v5, "Addr"

    invoke-direct/range {v0 .. v5}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->ADDR:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 26
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "ADDR_TYPE"

    const-string v6, "AddrType"

    const-string v7, "AppAddr/APPSRV/"

    const-string v8, "AddrType"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->ADDR_TYPE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 27
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "PORTNBR"

    const-string v6, "PortNbr"

    const-string v7, "AppAddr/APPSRV/Port/Port/"

    const-string v8, "PortNbr"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->PORTNBR:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 28
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "CON_REF"

    const-string v6, "ConRef"

    const-string v7, ""

    const-string v8, ""

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->CON_REF:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 29
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "SERVER_ID"

    const-string v6, "ServerID"

    const-string v7, ""

    const-string v8, "ServerID"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->SERVER_ID:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 30
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "SERVER_PW"

    const/4 v5, 0x5

    const-string v6, "ServerPW"

    const-string v7, "AppAuth/APPSRV/"

    const-string v8, "AAuthData"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->SERVER_PW:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 31
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "SERVER_NONCE"

    const/4 v5, 0x6

    const-string v6, "ServerNonce"

    const-string v7, "AppAuth/APPSRV/"

    const-string v8, "AAuthSecret"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->SERVER_NONCE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 32
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "USERNAME"

    const/4 v5, 0x7

    const-string v6, "UserName"

    const-string v7, "AppAuth/CLIENT/"

    const-string v8, "AAuthName"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->USERNAME:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 33
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "CLIENT_PW"

    const/16 v5, 0x8

    const-string v6, "ClientPW"

    const-string v7, "AppAuth/CLIENT/"

    const-string v8, "AAuthData"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->CLIENT_PW:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 34
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "CLIENT_NONCE"

    const/16 v5, 0x9

    const-string v6, "ClientNonce"

    const-string v7, "AppAuth/CLIENT/"

    const-string v8, "AAuthSecret"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->CLIENT_NONCE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 35
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "AUTH_PREF"

    const/16 v5, 0xa

    const-string v6, "AuthPref"

    const-string v7, "AppAuth/CLIENT/"

    const-string v8, "AAuthType"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->AUTH_PREF:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 36
    new-instance v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    const-string v4, "NAME"

    const/16 v5, 0xb

    const-string v6, "Name"

    const-string v7, ""

    const-string v8, "Name"

    invoke-direct/range {v3 .. v8}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->NAME:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    sget-object v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->ADDR:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->ADDR_TYPE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->PORTNBR:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->CON_REF:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->SERVER_ID:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->SERVER_PW:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->SERVER_NONCE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->USERNAME:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->CLIENT_PW:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->CLIENT_NONCE:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->AUTH_PREF:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->NAME:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->$VALUES:[Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter "name10"
    .parameter "path12"
    .parameter "name12"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName10:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName12:Ljava/lang/String;

    .line 44
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 45
    :cond_0
    iput-object p4, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodePath12:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static find12Nameby10(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "nodeName10"

    .prologue
    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, newName:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, nodeNameSplite:[Ljava/lang/String;
    invoke-static {}, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->values()[Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 56
    .local v1, ht:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
    iget-object v6, v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName10:Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "./DMAcc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodePath12:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName12:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .end local v1           #ht:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
    :cond_0
    return-object v4

    .line 55
    .restart local v1       #ht:Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->$VALUES:[Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v0}, [Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;

    return-object v0
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName10:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName12:Ljava/lang/String;

    return-object v0
.end method

.method public getNodePath12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodePath12:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeUri12()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodePath12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dm/handler/DMAccSubNodeHandler$HandleType;->mNodeName12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
