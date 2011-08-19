.class Lh/cw;
.super Lh/fb;


# instance fields
.field final synthetic a:Lh/fQ;


# direct methods
.method private constructor <init>(Lh/fQ;)V
    .locals 1

    iput-object p1, p0, Lh/cw;->a:Lh/fQ;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/fb;-><init>(Lh/fQ;Lh/aP;)V

    return-void
.end method

.method synthetic constructor <init>(Lh/fQ;Lh/aP;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/cw;-><init>(Lh/fQ;)V

    return-void
.end method


# virtual methods
.method public ay_()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public b(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "ADDRESS_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/cw;->a:Lh/fQ;

    const/16 v2, 0x329

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lh/fQ;->a(IILjava/lang/Object;)Z

    return-void
.end method
