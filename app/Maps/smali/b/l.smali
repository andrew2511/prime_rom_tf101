.class Lb/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bA;


# instance fields
.field final synthetic a:LF/y;

.field final synthetic b:Lb/k;


# direct methods
.method constructor <init>(Lb/k;LF/y;)V
    .locals 0

    iput-object p1, p0, Lb/l;->b:Lb/k;

    iput-object p2, p0, Lb/l;->a:LF/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 3

    iget-object v0, p0, Lb/l;->b:Lb/k;

    iget-object v0, v0, Lb/k;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    iget-object v1, p0, Lb/l;->a:LF/y;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/k;->b(LF/y;Z)V

    return-void
.end method
