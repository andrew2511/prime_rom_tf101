.class final Lcom/a/a/a/ax;
.super Lcom/a/a/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ak;
.implements Lcom/a/a/a/ba;


# instance fields
.field private volatile a:J

.field private b:Lcom/a/a/a/ak;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private c:Lcom/a/a/a/ak;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private d:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private e:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 1243
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/ax;->a:J

    .line 1251
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/ak;

    .line 1260
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/ak;

    .line 1271
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/ax;->d:Lcom/a/a/a/ba;

    .line 1280
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/ax;->e:Lcom/a/a/a/ba;

    .line 1239
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/a/a/a/ax;->d:Lcom/a/a/a/ba;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1248
    iput-wide p1, p0, Lcom/a/a/a/ax;->a:J

    .line 1249
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/ak;

    .line 1258
    return-void
.end method

.method public final a(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/a/a/a/ax;->d:Lcom/a/a/a/ba;

    .line 1278
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/ak;

    .line 1267
    return-void
.end method

.method public final b(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/a/a/a/ax;->e:Lcom/a/a/a/ba;

    .line 1287
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 1245
    iget-wide v0, p0, Lcom/a/a/a/ax;->a:J

    return-wide v0
.end method

.method public final d_()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/a/a/a/ax;->e:Lcom/a/a/a/ba;

    return-object v0
.end method
