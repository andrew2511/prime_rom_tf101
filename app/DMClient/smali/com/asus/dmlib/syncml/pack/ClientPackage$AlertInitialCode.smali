.class public final enum Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;
.super Ljava/lang/Enum;
.source "ClientPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/syncml/pack/ClientPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertInitialCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

.field public static final enum CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

.field public static final enum NETWORK_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    const-string v1, "CLIENT_INITIAL"

    const/16 v2, 0x4b1

    invoke-direct {v0, v1, v3, v2}, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    .line 43
    new-instance v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    const-string v1, "NETWORK_INITIAL"

    const/16 v2, 0x4b0

    invoke-direct {v0, v1, v4, v2}, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->NETWORK_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    sget-object v1, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->NETWORK_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->$VALUES:[Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->mIndex:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->$VALUES:[Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    invoke-virtual {v0}, [Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->mIndex:I

    return v0
.end method
