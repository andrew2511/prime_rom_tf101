.class public final enum Lu$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu$a;

.field public static final enum b:Lu$a;

.field public static final enum c:Lu$a;

.field public static final enum d:Lu$a;

.field public static final enum e:Lu$a;

.field public static final enum f:Lu$a;

.field private static final synthetic g:[Lu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lu$a;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu$a;->a:Lu$a;

    new-instance v0, Lu$a;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v4}, Lu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu$a;->b:Lu$a;

    new-instance v0, Lu$a;

    const-string v1, "HEADPHONES"

    invoke-direct {v0, v1, v5}, Lu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu$a;->c:Lu$a;

    new-instance v0, Lu$a;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v6}, Lu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu$a;->d:Lu$a;

    new-instance v0, Lu$a;

    const-string v1, "EMULATOR"

    invoke-direct {v0, v1, v7}, Lu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu$a;->e:Lu$a;

    new-instance v0, Lu$a;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu$a;->f:Lu$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lu$a;

    sget-object v1, Lu$a;->a:Lu$a;

    aput-object v1, v0, v3

    sget-object v1, Lu$a;->b:Lu$a;

    aput-object v1, v0, v4

    sget-object v1, Lu$a;->c:Lu$a;

    aput-object v1, v0, v5

    sget-object v1, Lu$a;->d:Lu$a;

    aput-object v1, v0, v6

    sget-object v1, Lu$a;->e:Lu$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lu$a;->f:Lu$a;

    aput-object v2, v0, v1

    sput-object v0, Lu$a;->g:[Lu$a;

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

.method public static valueOf(Ljava/lang/String;)Lu$a;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lu$a;

    return-object p0
.end method

.method public static values()[Lu$a;
    .locals 1

    sget-object v0, Lu$a;->g:[Lu$a;

    invoke-virtual {v0}, [Lu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu$a;

    return-object v0
.end method
