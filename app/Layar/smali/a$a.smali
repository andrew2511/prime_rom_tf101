.class public final enum La$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La$a;

.field public static final enum b:La$a;

.field private static final synthetic c:[La$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La$a;

    const-string v1, "URL_REQUEST_TYPE"

    invoke-direct {v0, v1, v2}, La$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La$a;->a:La$a;

    new-instance v0, La$a;

    const-string v1, "AD_TYPE"

    invoke-direct {v0, v1, v3}, La$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La$a;->b:La$a;

    const/4 v0, 0x2

    new-array v0, v0, [La$a;

    sget-object v1, La$a;->a:La$a;

    aput-object v1, v0, v2

    sget-object v1, La$a;->b:La$a;

    aput-object v1, v0, v3

    sput-object v0, La$a;->c:[La$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La$a;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, La$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, La$a;

    return-object p0
.end method

.method public static values()[La$a;
    .locals 1

    sget-object v0, La$a;->c:[La$a;

    invoke-virtual {v0}, [La$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La$a;

    return-object v0
.end method
