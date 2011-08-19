.class Ll/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll/r;


# direct methods
.method constructor <init>(Ll/r;)V
    .locals 0

    iput-object p1, p0, Ll/E;->a:Ll/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ll/E;->a:Ll/r;

    const/4 v1, 0x1

    iput v1, v0, Ll/r;->d:I

    iget-object v0, p0, Ll/E;->a:Ll/r;

    const-string v1, "cell_provider"

    iget-object v2, p0, Ll/E;->a:Ll/r;

    iget v2, v2, Ll/r;->d:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ll/r;->a(Ll/r;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
