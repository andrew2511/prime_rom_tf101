.class public final enum Lw/w;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lw/w;

.field public static final enum b:Lw/w;

.field private static final synthetic c:[Lw/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lw/w;

    const-string v1, "OS_GENERATED"

    invoke-direct {v0, v1, v2}, Lw/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw/w;->a:Lw/w;

    new-instance v0, Lw/w;

    const-string v1, "CLIENT_GENERATED"

    invoke-direct {v0, v1, v3}, Lw/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw/w;->b:Lw/w;

    const/4 v0, 0x2

    new-array v0, v0, [Lw/w;

    sget-object v1, Lw/w;->a:Lw/w;

    aput-object v1, v0, v2

    sget-object v1, Lw/w;->b:Lw/w;

    aput-object v1, v0, v3

    sput-object v0, Lw/w;->c:[Lw/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw/w;
    .locals 1

    const-class v0, Lw/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw/w;

    return-object p0
.end method

.method public static values()[Lw/w;
    .locals 1

    sget-object v0, Lw/w;->c:[Lw/w;

    invoke-virtual {v0}, [Lw/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw/w;

    return-object v0
.end method
