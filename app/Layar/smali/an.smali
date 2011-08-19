.class final Lan;
.super Ljava/lang/Object;

# interfaces
.implements Lam;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lam",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lam",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbm;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lan;->a:Lam;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lan;->a:Lam;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
