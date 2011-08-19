.class public final enum Lcom/google/googlenav/ui/wizard/android/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/android/b;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/android/b;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/android/b;

.field public static final enum d:Lcom/google/googlenav/ui/wizard/android/b;

.field private static final synthetic g:[Lcom/google/googlenav/ui/wizard/android/b;


# instance fields
.field private e:I

.field private f:LaB/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/b;

    const-string v1, "HOME_GRAPH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/android/b;->a:Lcom/google/googlenav/ui/wizard/android/b;

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/b;

    const-string v1, "WORK_GRAPH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/android/b;->b:Lcom/google/googlenav/ui/wizard/android/b;

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/b;

    const-string v1, "OUT_GRAPH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, Lcom/google/googlenav/ui/wizard/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/android/b;->c:Lcom/google/googlenav/ui/wizard/android/b;

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/b;

    const-string v1, "LAST_WEEK_GRAPH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/google/googlenav/ui/wizard/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/android/b;->d:Lcom/google/googlenav/ui/wizard/android/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/android/b;

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->a:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->b:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->c:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->d:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlenav/ui/wizard/android/b;->g:[Lcom/google/googlenav/ui/wizard/android/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/googlenav/ui/wizard/android/b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/android/b;
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/wizard/android/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/wizard/android/b;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/android/b;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/android/b;->g:[Lcom/google/googlenav/ui/wizard/android/b;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/android/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/android/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/android/b;->e:I

    return v0
.end method

.method public a(LaB/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/b;->f:LaB/f;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/b;->f:LaB/f;

    return-void
.end method

.method public c()LaB/f;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/b;->f:LaB/f;

    return-object v0
.end method
