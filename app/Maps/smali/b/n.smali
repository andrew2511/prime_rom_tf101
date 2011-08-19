.class Lb/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lb/k;


# direct methods
.method constructor <init>(Lb/k;)V
    .locals 0

    iput-object p1, p0, Lb/n;->a:Lb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lb/n;->a:Lb/k;

    iget-object v1, p0, Lb/n;->a:Lb/k;

    iget-object v1, v1, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-static {v0, v1}, Lb/k;->a(Lb/k;Lcom/google/android/maps/driveabout/app/Q;)V

    return-void
.end method
