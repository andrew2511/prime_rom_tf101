.class public final enum La/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/c;

.field private static final synthetic c:[La/c;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, La/c;

    const-string v1, "PERSONALIZED_SMARTMAPS_MODIFIER_CACHE"

    const-string v2, "psmart"

    invoke-direct {v0, v1, v3, v2}, La/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/c;->a:La/c;

    const/4 v0, 0x1

    new-array v0, v0, [La/c;

    sget-object v1, La/c;->a:La/c;

    aput-object v1, v0, v3

    sput-object v0, La/c;->c:[La/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/c;
    .locals 1

    const-class v0, La/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/c;

    return-object p0
.end method

.method public static values()[La/c;
    .locals 1

    sget-object v0, La/c;->c:[La/c;

    invoke-virtual {v0}, [La/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/c;

    return-object v0
.end method
