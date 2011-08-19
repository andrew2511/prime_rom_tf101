.class public final enum Lay/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lay/d;

.field public static final enum b:Lay/d;

.field public static final enum c:Lay/d;

.field public static final enum d:Lay/d;

.field private static final synthetic g:[Lay/d;


# instance fields
.field private final e:F

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x3f4ccccd

    new-instance v0, Lay/d;

    const-string v1, "LIGHTNING_FREQUENT"

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v4, v2, v3}, Lay/d;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lay/d;->a:Lay/d;

    new-instance v0, Lay/d;

    const-string v1, "LIGHTNING_NORMAL"

    const v2, 0x3f7fbe77

    invoke-direct {v0, v1, v5, v2, v3}, Lay/d;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lay/d;->b:Lay/d;

    new-instance v0, Lay/d;

    const-string v1, "LIGHTNING_RARE"

    const v2, 0x3f7ff972

    invoke-direct {v0, v1, v6, v2, v3}, Lay/d;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lay/d;->c:Lay/d;

    new-instance v0, Lay/d;

    const-string v1, "LIGHTNING_NONE"

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, Lay/d;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lay/d;->d:Lay/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lay/d;

    sget-object v1, Lay/d;->a:Lay/d;

    aput-object v1, v0, v4

    sget-object v1, Lay/d;->b:Lay/d;

    aput-object v1, v0, v5

    sget-object v1, Lay/d;->c:Lay/d;

    aput-object v1, v0, v6

    sget-object v1, Lay/d;->d:Lay/d;

    aput-object v1, v0, v7

    sput-object v0, Lay/d;->g:[Lay/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lay/d;->f:F

    iput p3, p0, Lay/d;->e:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lay/d;
    .locals 1

    const-class v0, Lay/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lay/d;

    return-object p0
.end method

.method public static values()[Lay/d;
    .locals 1

    sget-object v0, Lay/d;->g:[Lay/d;

    invoke-virtual {v0}, [Lay/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lay/d;

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lay/d;->f:F

    return v0
.end method
