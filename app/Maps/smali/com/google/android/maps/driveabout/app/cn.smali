.class Lcom/google/android/maps/driveabout/app/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cb;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cn;->a:Lcom/google/android/maps/driveabout/app/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cn;->a:Lcom/google/android/maps/driveabout/app/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cb;->dismiss()V

    return-void
.end method
