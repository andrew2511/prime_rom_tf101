.class final Lj/T;
.super Lj/M;

# interfaces
.implements Lj/af;


# instance fields
.field final a:Lj/af;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lj/af;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj/M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lj/T;->a:Lj/af;

    return-void
.end method


# virtual methods
.method public a()Lj/af;
    .locals 1

    iget-object v0, p0, Lj/T;->a:Lj/af;

    return-object v0
.end method
