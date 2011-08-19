.class final Lan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LaF;

.field private synthetic b:Z

.field private synthetic c:Lal;


# direct methods
.method constructor <init>(Lal;LaF;Z)V
    .locals 0

    iput-object p1, p0, Lan;->c:Lal;

    iput-object p2, p0, Lan;->a:LaF;

    iput-boolean p3, p0, Lan;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lan;->c:Lal;

    iget-object v1, p0, Lan;->a:LaF;

    iget-boolean v2, p0, Lan;->b:Z

    invoke-virtual {v0, v1, v2}, Lal;->a(LaF;Z)V

    return-void
.end method
