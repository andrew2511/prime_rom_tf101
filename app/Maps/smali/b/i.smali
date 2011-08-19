.class Lb/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/bf;


# instance fields
.field final synthetic a:Lb/y;


# direct methods
.method constructor <init>(Lb/y;)V
    .locals 0

    iput-object p1, p0, Lb/i;->a:Lb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(LF/u;)V
    .locals 2

    iget-object v0, p0, Lb/i;->a:Lb/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/y;->a(Lb/y;Z)Z

    iget-object v0, p0, Lb/i;->a:Lb/y;

    iget-object v0, v0, Lb/y;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->b()V

    iget-object v0, p0, Lb/i;->a:Lb/y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb/y;->a(LF/u;Z)V

    return-void
.end method
