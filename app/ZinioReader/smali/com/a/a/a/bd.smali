.class final Lcom/a/a/a/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ba;


# instance fields
.field private a:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private b:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private synthetic c:Lcom/a/a/a/h;


# direct methods
.method constructor <init>(Lcom/a/a/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/a/a/a/bd;->c:Lcom/a/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p0, p0, Lcom/a/a/a/bd;->a:Lcom/a/a/a/ba;

    .line 1633
    iput-object p0, p0, Lcom/a/a/a/bd;->b:Lcom/a/a/a/ba;

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/a/a/a/bd;->a:Lcom/a/a/a/ba;

    return-object v0
.end method

.method public final a(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/a/a/a/bd;->a:Lcom/a/a/a/ba;

    .line 1631
    return-void
.end method

.method public final b(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/a/a/a/bd;->b:Lcom/a/a/a/ba;

    .line 1640
    return-void
.end method

.method public final d_()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/a/a/a/bd;->b:Lcom/a/a/a/ba;

    return-object v0
.end method
