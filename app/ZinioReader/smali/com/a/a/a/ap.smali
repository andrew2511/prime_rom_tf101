.class abstract enum Lcom/a/a/a/ap;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/a/a/a/ap;

.field public static final enum b:Lcom/a/a/a/ap;

.field private static enum c:Lcom/a/a/a/ap;

.field private static final synthetic d:[Lcom/a/a/a/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Lcom/a/a/a/l;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/a/a/a/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/a/ap;->a:Lcom/a/a/a/ap;

    .line 299
    new-instance v0, Lcom/a/a/a/j;

    const-string v1, "SOFT"

    invoke-direct {v0, v1}, Lcom/a/a/a/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/a/ap;->b:Lcom/a/a/a/ap;

    .line 309
    new-instance v0, Lcom/a/a/a/k;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/a/a/a/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/a/ap;->c:Lcom/a/a/a/ap;

    .line 283
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/a/ap;

    const/4 v1, 0x0

    sget-object v2, Lcom/a/a/a/ap;->a:Lcom/a/a/a/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/a/a/a/ap;->b:Lcom/a/a/a/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/a/a/a/ap;->c:Lcom/a/a/a/ap;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/a/ap;->d:[Lcom/a/a/a/ap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/ap;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 283
    const-class v0, Lcom/a/a/a/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/ap;

    return-object p0
.end method

.method public static values()[Lcom/a/a/a/ap;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/a/a/a/ap;->d:[Lcom/a/a/a/ap;

    invoke-virtual {v0}, [Lcom/a/a/a/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/ap;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/a/a/a/bj;Ljava/lang/Object;)Lcom/a/a/a/aw;
.end method

.method abstract a()Lcom/a/a/b/g;
.end method
