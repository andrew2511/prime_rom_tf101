.class public final enum Lcom/asus/cm/handler/APNHandler$HandleType;
.super Ljava/lang/Enum;
.source "APNHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/handler/APNHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/cm/handler/APNHandler$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum APN:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum APN_TYPE:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum MCC:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum MMSC:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum MMS_PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum MMS_PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum MNC:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum NAME:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum SERVER:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

.field public static final enum USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "MMSC"

    invoke-direct {v0, v1, v3}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->MMSC:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "MMS_PROXY"

    invoke-direct {v0, v1, v4}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "MMS_PORT"

    invoke-direct {v0, v1, v5}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "APN"

    invoke-direct {v0, v1, v6}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "PORT"

    invoke-direct {v0, v1, v7}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "PROXY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "SERVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->SERVER:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->NAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "USERNAME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "PASSWORD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "APN_TYPE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->APN_TYPE:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "MCC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->MCC:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "MNC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->MNC:Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    const-string v1, "ToAPN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

    .line 21
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/asus/cm/handler/APNHandler$HandleType;

    sget-object v1, Lcom/asus/cm/handler/APNHandler$HandleType;->MMSC:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/cm/handler/APNHandler$HandleType;->PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->SERVER:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->NAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->APN_TYPE:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->MCC:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->MNC:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/asus/cm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->$VALUES:[Lcom/asus/cm/handler/APNHandler$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/cm/handler/APNHandler$HandleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/cm/handler/APNHandler$HandleType;

    return-object p0
.end method

.method public static values()[Lcom/asus/cm/handler/APNHandler$HandleType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/asus/cm/handler/APNHandler$HandleType;->$VALUES:[Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v0}, [Lcom/asus/cm/handler/APNHandler$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/cm/handler/APNHandler$HandleType;

    return-object v0
.end method
