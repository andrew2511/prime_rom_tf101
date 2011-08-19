.class public final enum Lh/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lh/a;

.field public static final enum b:Lh/a;

.field public static final enum c:Lh/a;

.field private static final synthetic d:[Lh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lh/a;

    const-string v1, "DEFAULT_CATEGORY"

    invoke-direct {v0, v1, v2}, Lh/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/a;->a:Lh/a;

    new-instance v0, Lh/a;

    const-string v1, "CUSTOM_CATEGORY"

    invoke-direct {v0, v1, v3}, Lh/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/a;->b:Lh/a;

    new-instance v0, Lh/a;

    const-string v1, "ADD_CATEGORY_ACTION"

    invoke-direct {v0, v1, v4}, Lh/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/a;->c:Lh/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lh/a;

    sget-object v1, Lh/a;->a:Lh/a;

    aput-object v1, v0, v2

    sget-object v1, Lh/a;->b:Lh/a;

    aput-object v1, v0, v3

    sget-object v1, Lh/a;->c:Lh/a;

    aput-object v1, v0, v4

    sput-object v0, Lh/a;->d:[Lh/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh/a;
    .locals 1

    const-class v0, Lh/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/a;

    return-object p0
.end method

.method public static values()[Lh/a;
    .locals 1

    sget-object v0, Lh/a;->d:[Lh/a;

    invoke-virtual {v0}, [Lh/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/a;

    return-object v0
.end method
