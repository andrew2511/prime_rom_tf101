.class public final enum Lan/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lan/c;

.field private static final synthetic c:[Lan/c;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lan/c;

    const-string v1, "FOG_DENSITY"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, Lan/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lan/c;->a:Lan/c;

    const/4 v0, 0x1

    new-array v0, v0, [Lan/c;

    sget-object v1, Lan/c;->a:Lan/c;

    aput-object v1, v0, v3

    sput-object v0, Lan/c;->c:[Lan/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lan/c;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lan/c;
    .locals 1

    const-class v0, Lan/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lan/c;

    return-object p0
.end method

.method public static values()[Lan/c;
    .locals 1

    sget-object v0, Lan/c;->c:[Lan/c;

    invoke-virtual {v0}, [Lan/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lan/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lan/c;->b:I

    return v0
.end method
