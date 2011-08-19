.class Lcom/google/android/maps/driveabout/app/cX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/y;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationImageView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;LF/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cX;->a:LF/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->a:LF/y;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;LF/y;Z)V

    return-void
.end method
