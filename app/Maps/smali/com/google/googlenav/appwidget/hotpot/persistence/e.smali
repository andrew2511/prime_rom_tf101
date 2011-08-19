.class public Lcom/google/googlenav/appwidget/hotpot/persistence/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/googlenav/appwidget/hotpot/persistence/c;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/e;
    .locals 1

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/e;-><init>(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)V

    return-object v0
.end method
