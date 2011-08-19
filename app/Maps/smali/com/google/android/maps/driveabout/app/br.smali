.class Lcom/google/android/maps/driveabout/app/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/br;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/br;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    return-void
.end method
