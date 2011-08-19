.class public final enum Lh/dd;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lh/dd;

.field public static final enum b:Lh/dd;

.field public static final enum c:Lh/dd;

.field private static final synthetic d:[Lh/dd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lh/dd;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lh/dd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/dd;->a:Lh/dd;

    new-instance v0, Lh/dd;

    const-string v1, "ADD_PLACE"

    invoke-direct {v0, v1, v3}, Lh/dd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/dd;->b:Lh/dd;

    new-instance v0, Lh/dd;

    const-string v1, "SEARCH_RESULTS"

    invoke-direct {v0, v1, v4}, Lh/dd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/dd;->c:Lh/dd;

    const/4 v0, 0x3

    new-array v0, v0, [Lh/dd;

    sget-object v1, Lh/dd;->a:Lh/dd;

    aput-object v1, v0, v2

    sget-object v1, Lh/dd;->b:Lh/dd;

    aput-object v1, v0, v3

    sget-object v1, Lh/dd;->c:Lh/dd;

    aput-object v1, v0, v4

    sput-object v0, Lh/dd;->d:[Lh/dd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh/dd;
    .locals 1

    const-class v0, Lh/dd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/dd;

    return-object p0
.end method

.method public static values()[Lh/dd;
    .locals 1

    sget-object v0, Lh/dd;->d:[Lh/dd;

    invoke-virtual {v0}, [Lh/dd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/dd;

    return-object v0
.end method
