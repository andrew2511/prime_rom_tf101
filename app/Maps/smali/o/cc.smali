.class Lo/cc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lo/cc;


# instance fields
.field private final b:Lo/d;

.field private final c:Lo/d;

.field private final d:Lo/d;

.field private final e:Lo/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/cc;

    invoke-direct {v0}, Lo/cc;-><init>()V

    sput-object v0, Lo/cc;->a:Lo/cc;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    const v12, 0x7f02029e

    const v7, 0x7f020219

    const v11, 0x7f020217

    const v10, 0x7f0201e7

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/d;

    const-wide/16 v1, 0x1

    const/16 v3, 0x2e0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f020218

    sget-object v9, Lo/N;->b:Lo/N;

    move v8, v7

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    iput-object v0, p0, Lo/cc;->b:Lo/d;

    new-instance v0, Lo/d;

    const-wide/16 v1, 0x2

    const/16 v3, 0x87

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0201e6

    sget-object v9, Lo/N;->b:Lo/N;

    move v7, v10

    move v8, v10

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    iput-object v0, p0, Lo/cc;->c:Lo/d;

    new-instance v0, Lo/d;

    const-wide/16 v1, 0x1c

    const/16 v3, 0x2e7

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f020216

    sget-object v9, Lo/N;->a:Lo/N;

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    iput-object v0, p0, Lo/cc;->d:Lo/d;

    new-instance v0, Lo/d;

    const-wide/16 v1, 0x1f

    const/16 v3, 0x2e1

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0202a0

    sget-object v9, Lo/N;->a:Lo/N;

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    iput-object v0, p0, Lo/cc;->e:Lo/d;

    return-void
.end method

.method static a()Lo/cc;
    .locals 1

    sget-object v0, Lo/cc;->a:Lo/cc;

    return-object v0
.end method


# virtual methods
.method b()Lo/d;
    .locals 1

    iget-object v0, p0, Lo/cc;->b:Lo/d;

    return-object v0
.end method

.method c()Lo/d;
    .locals 1

    iget-object v0, p0, Lo/cc;->c:Lo/d;

    return-object v0
.end method

.method d()Lo/d;
    .locals 1

    iget-object v0, p0, Lo/cc;->e:Lo/d;

    return-object v0
.end method

.method e()Lo/d;
    .locals 1

    iget-object v0, p0, Lo/cc;->d:Lo/d;

    return-object v0
.end method
