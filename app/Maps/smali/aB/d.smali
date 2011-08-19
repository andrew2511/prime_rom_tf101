.class public final enum LaB/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaB/d;

.field public static final enum b:LaB/d;

.field private static final synthetic c:[LaB/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LaB/d;

    const-string v1, "AUTO_SCALE_ENABLED"

    invoke-direct {v0, v1, v2}, LaB/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaB/d;->a:LaB/d;

    new-instance v0, LaB/d;

    const-string v1, "AUTO_SCALE_DISABLED"

    invoke-direct {v0, v1, v3}, LaB/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaB/d;->b:LaB/d;

    const/4 v0, 0x2

    new-array v0, v0, [LaB/d;

    sget-object v1, LaB/d;->a:LaB/d;

    aput-object v1, v0, v2

    sget-object v1, LaB/d;->b:LaB/d;

    aput-object v1, v0, v3

    sput-object v0, LaB/d;->c:[LaB/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaB/d;
    .locals 1

    const-class v0, LaB/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LaB/d;

    return-object p0
.end method

.method public static values()[LaB/d;
    .locals 1

    sget-object v0, LaB/d;->c:[LaB/d;

    invoke-virtual {v0}, [LaB/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaB/d;

    return-object v0
.end method
