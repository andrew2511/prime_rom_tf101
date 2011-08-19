.class public final enum Lcom/google/googlenav/G;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/G;

.field public static final enum b:Lcom/google/googlenav/G;

.field public static final enum c:Lcom/google/googlenav/G;

.field public static final enum d:Lcom/google/googlenav/G;

.field public static final enum e:Lcom/google/googlenav/G;

.field private static final synthetic h:[Lcom/google/googlenav/G;


# instance fields
.field public f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/G;

    const-string v1, "STARTUP"

    const-string v2, "Startup"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/googlenav/G;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v0, Lcom/google/googlenav/G;

    const-string v1, "TERMS_AND_CONDITIONS"

    const-string v2, "Term and conditions"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/googlenav/G;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/G;->b:Lcom/google/googlenav/G;

    new-instance v0, Lcom/google/googlenav/G;

    const-string v1, "ON_RESUME"

    const-string v2, "On resume"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/google/googlenav/G;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/G;->c:Lcom/google/googlenav/G;

    new-instance v0, Lcom/google/googlenav/G;

    const-string v1, "GENERAL"

    const-string v2, "General"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/googlenav/G;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/G;->d:Lcom/google/googlenav/G;

    new-instance v0, Lcom/google/googlenav/G;

    const-string v1, "GENERAL_ONE_TIME"

    const-string v2, "General one time"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/googlenav/G;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/G;->e:Lcom/google/googlenav/G;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/googlenav/G;

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/G;->b:Lcom/google/googlenav/G;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/G;->c:Lcom/google/googlenav/G;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/G;->d:Lcom/google/googlenav/G;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/G;->e:Lcom/google/googlenav/G;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/googlenav/G;->h:[Lcom/google/googlenav/G;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/googlenav/G;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/googlenav/G;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/G;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/G;->g:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/G;
    .locals 1

    const-class v0, Lcom/google/googlenav/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/G;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/G;
    .locals 1

    sget-object v0, Lcom/google/googlenav/G;->h:[Lcom/google/googlenav/G;

    invoke-virtual {v0}, [Lcom/google/googlenav/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/G;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/G;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[oneTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/G;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
