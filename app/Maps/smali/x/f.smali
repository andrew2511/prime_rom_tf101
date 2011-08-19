.class public final enum Lx/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lx/f;

.field public static final enum b:Lx/f;

.field public static final enum c:Lx/f;

.field public static final enum d:Lx/f;

.field public static final enum e:Lx/f;

.field public static final enum f:Lx/f;

.field public static final enum g:Lx/f;

.field public static final enum h:Lx/f;

.field public static final enum i:Lx/f;

.field private static final synthetic j:[Lx/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lx/f;

    const-string v1, "LIST_ITEMS"

    invoke-direct {v0, v1, v3}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->a:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v4}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->b:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "LIST_HEADER"

    invoke-direct {v0, v1, v5}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->c:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, v6}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->d:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "CHECKBOX"

    invoke-direct {v0, v1, v7}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->e:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "HEADER_BUTTONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->f:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "BUTTONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->g:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "RADIO_BUTTONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->h:Lx/f;

    new-instance v0, Lx/f;

    const-string v1, "LIST_FOOTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lx/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/f;->i:Lx/f;

    const/16 v0, 0x9

    new-array v0, v0, [Lx/f;

    sget-object v1, Lx/f;->a:Lx/f;

    aput-object v1, v0, v3

    sget-object v1, Lx/f;->b:Lx/f;

    aput-object v1, v0, v4

    sget-object v1, Lx/f;->c:Lx/f;

    aput-object v1, v0, v5

    sget-object v1, Lx/f;->d:Lx/f;

    aput-object v1, v0, v6

    sget-object v1, Lx/f;->e:Lx/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lx/f;->f:Lx/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lx/f;->g:Lx/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lx/f;->h:Lx/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lx/f;->i:Lx/f;

    aput-object v2, v0, v1

    sput-object v0, Lx/f;->j:[Lx/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx/f;
    .locals 1

    const-class v0, Lx/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx/f;

    return-object p0
.end method

.method public static values()[Lx/f;
    .locals 1

    sget-object v0, Lx/f;->j:[Lx/f;

    invoke-virtual {v0}, [Lx/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/f;

    return-object v0
.end method
