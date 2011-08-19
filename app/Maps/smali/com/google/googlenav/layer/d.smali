.class public Lcom/google/googlenav/layer/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/layer/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/layer/s;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/layer/d;->c:Lcom/google/googlenav/layer/s;

    iput p3, p0, Lcom/google/googlenav/layer/d;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/layer/s;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/d;->c:Lcom/google/googlenav/layer/s;

    return-object v0
.end method
