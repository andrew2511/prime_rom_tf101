.class public final enum Lh/dP;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lh/dP;

.field public static final enum b:Lh/dP;

.field private static final synthetic d:[Lh/dP;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lh/dP;

    const-string v1, "WORK"

    const/16 v2, 0x6f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lh/dP;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/dP;->a:Lh/dP;

    new-instance v0, Lh/dP;

    const-string v1, "HOME"

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lh/dP;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh/dP;->b:Lh/dP;

    const/4 v0, 0x2

    new-array v0, v0, [Lh/dP;

    sget-object v1, Lh/dP;->a:Lh/dP;

    aput-object v1, v0, v3

    sget-object v1, Lh/dP;->b:Lh/dP;

    aput-object v1, v0, v4

    sput-object v0, Lh/dP;->d:[Lh/dP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lh/dP;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh/dP;
    .locals 1

    const-class v0, Lh/dP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/dP;

    return-object p0
.end method

.method public static values()[Lh/dP;
    .locals 1

    sget-object v0, Lh/dP;->d:[Lh/dP;

    invoke-virtual {v0}, [Lh/dP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/dP;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/dP;->c:Ljava/lang/String;

    return-object v0
.end method
