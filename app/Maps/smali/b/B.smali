.class Lb/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bm;


# instance fields
.field final synthetic a:Lb/q;


# direct methods
.method private constructor <init>(Lb/q;)V
    .locals 0

    iput-object p1, p0, Lb/B;->a:Lb/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/q;Lb/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/B;-><init>(Lb/q;)V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/B;->a:Lb/q;

    invoke-static {v0, v3}, Lb/q;->a(Lb/q;Z)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lb/B;->a:Lb/q;

    iget-object v0, v0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/B;->a:Lb/q;

    iget-object v1, v1, Lb/q;->c:Landroid/content/Context;

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;)V

    :cond_0
    return v3
.end method
