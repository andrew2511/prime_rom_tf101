.class public final enum Lcom/google/googlenav/appwidget/hotpot/persistence/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

.field public static final enum b:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

.field public static final enum c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

.field public static final enum d:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

.field private static final synthetic e:[Lcom/google/googlenav/appwidget/hotpot/persistence/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/persistence/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/hotpot/persistence/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    const-string v1, "BLOB"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/appwidget/hotpot/persistence/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->d:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->d:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->e:[Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/c;
    .locals 1

    const-class v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/hotpot/persistence/c;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->e:[Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/hotpot/persistence/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    return-object v0
.end method
