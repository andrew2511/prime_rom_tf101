.class final enum Lcom/a/a/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ak;


# static fields
.field public static final enum a:Lcom/a/a/a/a;

.field private static final synthetic b:[Lcom/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 682
    new-instance v0, Lcom/a/a/a/a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    .line 681
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/a/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/a/a;->b:[Lcom/a/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 681
    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/a;

    return-object p0
.end method

.method public static values()[Lcom/a/a/a/a;
    .locals 1

    .prologue
    .line 681
    sget-object v0, Lcom/a/a/a/a;->b:[Lcom/a/a/a/a;

    invoke-virtual {v0}, [Lcom/a/a/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 689
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 0

    .prologue
    .line 693
    return-object p0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 0

    .prologue
    .line 700
    return-object p0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 686
    const-wide/16 v0, 0x0

    return-wide v0
.end method
