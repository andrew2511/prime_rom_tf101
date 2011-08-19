.class abstract enum Lcom/a/a/b/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/b/g;


# static fields
.field public static final enum a:Lcom/a/a/b/h;

.field public static final enum b:Lcom/a/a/b/h;

.field private static enum c:Lcom/a/a/b/h;

.field private static final synthetic d:[Lcom/a/a/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/a/a/b/c;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1}, Lcom/a/a/b/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/b/h;->a:Lcom/a/a/b/h;

    .line 78
    new-instance v0, Lcom/a/a/b/b;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1}, Lcom/a/a/b/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/b/h;->b:Lcom/a/a/b/h;

    .line 87
    new-instance v0, Lcom/a/a/b/a;

    const-string v1, "NULL_AWARE_EQUALS"

    invoke-direct {v0, v1}, Lcom/a/a/b/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/b/h;->c:Lcom/a/a/b/h;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/b/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/a/a/b/h;->a:Lcom/a/a/b/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/a/a/b/h;->b:Lcom/a/a/b/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/a/a/b/h;->c:Lcom/a/a/b/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/b/h;->d:[Lcom/a/a/b/h;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/h;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/h;
    .locals 1
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/a/a/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/a/a/b/h;

    return-object p0
.end method

.method public static values()[Lcom/a/a/b/h;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/a/a/b/h;->d:[Lcom/a/a/b/h;

    invoke-virtual {v0}, [Lcom/a/a/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/h;

    return-object v0
.end method
