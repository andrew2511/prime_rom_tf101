.class public final enum Landroid/net/wifi/WpsConfiguration$Setup;
.super Ljava/lang/Enum;
.source "WpsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Setup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WpsConfiguration$Setup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WpsConfiguration$Setup;

.field public static final enum INVALID:Landroid/net/wifi/WpsConfiguration$Setup;

.field public static final enum PBC:Landroid/net/wifi/WpsConfiguration$Setup;

.field public static final enum PIN_FROM_ACCESS_POINT:Landroid/net/wifi/WpsConfiguration$Setup;

.field public static final enum PIN_FROM_DEVICE:Landroid/net/wifi/WpsConfiguration$Setup;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Landroid/net/wifi/WpsConfiguration$Setup;

    const-string v1, "PBC"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WpsConfiguration$Setup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsConfiguration$Setup;->PBC:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 37
    new-instance v0, Landroid/net/wifi/WpsConfiguration$Setup;

    const-string v1, "PIN_FROM_ACCESS_POINT"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WpsConfiguration$Setup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_ACCESS_POINT:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 39
    new-instance v0, Landroid/net/wifi/WpsConfiguration$Setup;

    const-string v1, "PIN_FROM_DEVICE"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WpsConfiguration$Setup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_DEVICE:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 41
    new-instance v0, Landroid/net/wifi/WpsConfiguration$Setup;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/WpsConfiguration$Setup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsConfiguration$Setup;->INVALID:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/WpsConfiguration$Setup;

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PBC:Landroid/net/wifi/WpsConfiguration$Setup;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_ACCESS_POINT:Landroid/net/wifi/WpsConfiguration$Setup;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_DEVICE:Landroid/net/wifi/WpsConfiguration$Setup;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->INVALID:Landroid/net/wifi/WpsConfiguration$Setup;

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/WpsConfiguration$Setup;->$VALUES:[Landroid/net/wifi/WpsConfiguration$Setup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WpsConfiguration$Setup;
    .registers 2
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Landroid/net/wifi/WpsConfiguration$Setup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/WpsConfiguration$Setup;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/WpsConfiguration$Setup;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Landroid/net/wifi/WpsConfiguration$Setup;->$VALUES:[Landroid/net/wifi/WpsConfiguration$Setup;

    invoke-virtual {v0}, [Landroid/net/wifi/WpsConfiguration$Setup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WpsConfiguration$Setup;

    return-object v0
.end method
