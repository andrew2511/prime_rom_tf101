.class public Lo/q;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aT;


# instance fields
.field private final a:Lcom/google/googlenav/bL;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/q;->a:Lcom/google/googlenav/bL;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/q;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x13f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
