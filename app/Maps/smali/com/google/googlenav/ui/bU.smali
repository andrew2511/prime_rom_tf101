.class public abstract Lcom/google/googlenav/ui/bU;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Vector;

.field private final c:Ljava/util/Hashtable;

.field private d:Z

.field private e:Lcom/google/googlenav/ui/bR;

.field private f:[Lax/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GmmMenuCommands"

    sput-object v0, Lcom/google/googlenav/ui/bU;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bU;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bU;->c:Ljava/util/Hashtable;

    return-void
.end method

.method private final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bU;->d:Z

    return-void
.end method


# virtual methods
.method protected final a(Lax/e;Ljava/lang/Character;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bU;->b()V

    return-void
.end method

.method public final a(Lcom/google/googlenav/ui/bR;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bU;->e:Lcom/google/googlenav/ui/bR;

    return-void
.end method

.method protected a(Lax/e;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bU;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->e:Lcom/google/googlenav/ui/bR;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->e:Lcom/google/googlenav/ui/bR;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/bR;->a(Lcom/google/googlenav/ui/bU;)V

    :cond_0
    return-void
.end method

.method protected final b(Lax/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/bU;->a(Lax/e;Ljava/lang/Character;)V

    return-void
.end method

.method public final b(Lcom/google/googlenav/ui/bR;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->e:Lcom/google/googlenav/ui/bR;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/bU;->e:Lcom/google/googlenav/ui/bR;

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bU;->d:Z

    return v0
.end method

.method public final d()[Lax/e;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->f:[Lax/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bU;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->f:[Lax/e;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Vector;

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/bU;->a(Lax/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lax/e;

    iput-object v0, p0, Lcom/google/googlenav/ui/bU;->f:[Lax/e;

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->f:[Lax/e;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/bU;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/bU;->f:[Lax/e;

    goto :goto_0
.end method
