.class Lm/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lm/I;

.field final synthetic b:Lm/q;


# direct methods
.method constructor <init>(Lm/q;Lm/I;)V
    .locals 0

    iput-object p1, p0, Lm/g;->b:Lm/q;

    iput-object p2, p0, Lm/g;->a:Lm/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lm/g;->b:Lm/q;

    invoke-static {v0}, Lm/q;->a(Lm/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lm/D;

    invoke-direct {v1, p0}, Lm/D;-><init>(Lm/g;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
