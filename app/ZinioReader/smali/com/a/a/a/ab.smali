.class final Lcom/a/a/a/ab;
.super Lcom/a/a/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ak;


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
    .line 1174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 1179
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/ab;->a:J

    .line 1187
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ab;->b:Lcom/a/a/a/ak;

    .line 1196
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ab;->c:Lcom/a/a/a/ak;

    .line 1175
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1184
    iput-wide p1, p0, Lcom/a/a/a/ab;->a:J

    .line 1185
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/a/a/a/ab;->b:Lcom/a/a/a/ak;

    .line 1194
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/a/a/a/ab;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/a/a/a/ab;->c:Lcom/a/a/a/ak;

    .line 1203
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/a/a/a/ab;->c:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 1181
    iget-wide v0, p0, Lcom/a/a/a/ab;->a:J

    return-wide v0
.end method
