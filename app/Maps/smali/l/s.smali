.class public final enum Ll/s;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/s;

.field public static final enum b:Ll/s;

.field public static final enum c:Ll/s;

.field public static final enum d:Ll/s;

.field private static final synthetic f:[Ll/s;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ll/s;

    const-string v1, "GPS"

    const-string v2, "gps"

    invoke-direct {v0, v1, v3, v2}, Ll/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll/s;->a:Ll/s;

    new-instance v0, Ll/s;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v4, v2}, Ll/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll/s;->b:Ll/s;

    new-instance v0, Ll/s;

    const-string v1, "WIFI"

    const-string v2, "wifi_provider"

    invoke-direct {v0, v1, v5, v2}, Ll/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll/s;->c:Ll/s;

    new-instance v0, Ll/s;

    const-string v1, "CELL"

    const-string v2, "cell_provider"

    invoke-direct {v0, v1, v6, v2}, Ll/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll/s;->d:Ll/s;

    const/4 v0, 0x4

    new-array v0, v0, [Ll/s;

    sget-object v1, Ll/s;->a:Ll/s;

    aput-object v1, v0, v3

    sget-object v1, Ll/s;->b:Ll/s;

    aput-object v1, v0, v4

    sget-object v1, Ll/s;->c:Ll/s;

    aput-object v1, v0, v5

    sget-object v1, Ll/s;->d:Ll/s;

    aput-object v1, v0, v6

    sput-object v0, Ll/s;->f:[Ll/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ll/s;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/s;
    .locals 1

    const-class v0, Ll/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/s;

    return-object p0
.end method

.method public static values()[Ll/s;
    .locals 1

    sget-object v0, Ll/s;->f:[Ll/s;

    invoke-virtual {v0}, [Ll/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/s;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll/s;->e:Ljava/lang/String;

    return-object v0
.end method
