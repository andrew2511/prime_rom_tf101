.class public abstract Li/H;
.super Ljava/lang/Object;

# interfaces
.implements Li/aM;


# instance fields
.field protected final a:Li/x;

.field protected final b:Lcom/google/googlenav/ui/aV;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/H;->a:Li/x;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iput-object v0, p0, Li/H;->b:Lcom/google/googlenav/ui/aV;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method
