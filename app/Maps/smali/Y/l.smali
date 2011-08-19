.class LY/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LY/j;


# direct methods
.method constructor <init>(LY/j;)V
    .locals 0

    iput-object p1, p0, LY/l;->a:LY/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LY/l;->a:LY/j;

    invoke-static {v0}, LY/j;->a(LY/j;)V

    return-void
.end method
