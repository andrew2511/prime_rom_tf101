.class final Lcom/google/android/maps/driveabout/app/H;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/dc;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bo;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/as;

.field final synthetic c:LF/u;

.field final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;LF/u;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/bo;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/H;->b:Lcom/google/android/maps/driveabout/app/as;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/H;->c:LF/u;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/H;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->b:Lcom/google/android/maps/driveabout/app/as;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/H;->c:LF/u;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/as;->a(LF/u;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/bo;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/H;->b:Lcom/google/android/maps/driveabout/app/as;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bp;->a(Ljava/util/List;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->b:Lcom/google/android/maps/driveabout/app/as;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/as;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->b:Lcom/google/android/maps/driveabout/app/as;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/as;->a()V

    return-void
.end method
