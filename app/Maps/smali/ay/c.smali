.class public final enum Lay/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lay/c;

.field public static final enum b:Lay/c;

.field private static final synthetic e:[Lay/c;


# instance fields
.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lay/c;

    const-string v1, "WIND_SLOW"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    invoke-direct {v0, v1, v4, v2, v3}, Lay/c;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lay/c;->a:Lay/c;

    new-instance v0, Lay/c;

    const-string v1, "WIND_FAST"

    const/high16 v2, 0x4040

    const/high16 v3, 0x40c0

    invoke-direct {v0, v1, v5, v2, v3}, Lay/c;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lay/c;->b:Lay/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lay/c;

    sget-object v1, Lay/c;->a:Lay/c;

    aput-object v1, v0, v4

    sget-object v1, Lay/c;->b:Lay/c;

    aput-object v1, v0, v5

    sput-object v0, Lay/c;->e:[Lay/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lay/c;->c:F

    iput p4, p0, Lay/c;->d:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lay/c;
    .locals 1

    const-class v0, Lay/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lay/c;

    return-object p0
.end method

.method public static values()[Lay/c;
    .locals 1

    sget-object v0, Lay/c;->e:[Lay/c;

    invoke-virtual {v0}, [Lay/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lay/c;

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lay/c;->c:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lay/c;->d:F

    return v0
.end method
