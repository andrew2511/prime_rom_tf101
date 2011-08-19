.class public Lcom/google/googlenav/appwidget/hotpot/persistence/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private transient e:Law/e;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->e:Law/e;

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    .locals 6

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    .locals 6

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)V

    return-object v0
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->e:Law/e;

    return-object v0
.end method

.method public a(Law/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->e:Law/e;

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->e:Law/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->e:Law/e;

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->e:Law/e;

    if-nez v1, :cond_0

    const-string v1, "partial detail"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "full details"

    goto :goto_0
.end method
