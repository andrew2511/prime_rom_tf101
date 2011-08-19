.class public final enum LO/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LO/a;

.field public static final enum b:LO/a;

.field public static final enum c:LO/a;

.field private static final synthetic e:[LO/a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LO/a;

    const-string v1, "RAIN_LIGHT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, LO/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LO/a;->a:LO/a;

    new-instance v0, LO/a;

    const-string v1, "RAIN_NORMAL"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, LO/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LO/a;->b:LO/a;

    new-instance v0, LO/a;

    const-string v1, "RAIN_HEAVY"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v5, v2}, LO/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LO/a;->c:LO/a;

    const/4 v0, 0x3

    new-array v0, v0, [LO/a;

    sget-object v1, LO/a;->a:LO/a;

    aput-object v1, v0, v3

    sget-object v1, LO/a;->b:LO/a;

    aput-object v1, v0, v4

    sget-object v1, LO/a;->c:LO/a;

    aput-object v1, v0, v5

    sput-object v0, LO/a;->e:[LO/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LO/a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LO/a;
    .locals 1

    const-class v0, LO/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LO/a;

    return-object p0
.end method

.method public static values()[LO/a;
    .locals 1

    sget-object v0, LO/a;->e:[LO/a;

    invoke-virtual {v0}, [LO/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LO/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LO/a;->d:I

    return v0
.end method
