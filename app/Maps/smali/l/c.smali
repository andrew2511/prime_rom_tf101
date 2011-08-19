.class public final Ll/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ll/i;

.field public final c:Ll/C;

.field public final d:LB/b;

.field public final e:LB/g;

.field public final f:Z

.field public final g:Ll/z;


# direct methods
.method private constructor <init>(JLl/i;Ll/C;LB/b;LB/g;Ll/z;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll/c;->a:J

    iput-object p3, p0, Ll/c;->b:Ll/i;

    iput-object p4, p0, Ll/c;->c:Ll/C;

    iput-object p5, p0, Ll/c;->d:LB/b;

    iput-object p6, p0, Ll/c;->e:LB/g;

    iput-object p7, p0, Ll/c;->g:Ll/z;

    iput-boolean p8, p0, Ll/c;->f:Z

    return-void
.end method

.method public static a(JLl/i;)Ll/c;
    .locals 9

    const/4 v5, 0x0

    new-instance v0, Ll/c;

    sget-object v4, Ll/C;->c:Ll/C;

    const/4 v8, 0x1

    move-wide v1, p0

    move-object v3, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v8}, Ll/c;-><init>(JLl/i;Ll/C;LB/b;LB/g;Ll/z;Z)V

    return-object v0
.end method

.method public static a(JLl/i;LB/b;LB/g;Z)Ll/c;
    .locals 9

    new-instance v0, Ll/c;

    sget-object v4, Ll/C;->a:Ll/C;

    const/4 v7, 0x0

    move-wide v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Ll/c;-><init>(JLl/i;Ll/C;LB/b;LB/g;Ll/z;Z)V

    return-object v0
.end method

.method public static a(JLl/i;Ll/z;)Ll/c;
    .locals 9

    const/4 v5, 0x0

    new-instance v0, Ll/c;

    sget-object v4, Ll/C;->b:Ll/C;

    const/4 v8, 0x1

    move-wide v1, p0

    move-object v3, p2

    move-object v6, v5

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Ll/c;-><init>(JLl/i;Ll/C;LB/b;LB/g;Ll/z;Z)V

    return-object v0
.end method
