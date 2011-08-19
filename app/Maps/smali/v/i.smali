.class Lv/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lv/r;


# direct methods
.method constructor <init>(Lv/r;)V
    .locals 0

    iput-object p1, p0, Lv/i;->a:Lv/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lv/i;->a:Lv/r;

    invoke-static {v0}, Lv/r;->a(Lv/r;)V

    return-void
.end method
