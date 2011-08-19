.class Lcom/google/android/maps/driveabout/app/aT;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:[LF/K;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;Ljava/util/ArrayList;[LF/K;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aT;->c:Lcom/google/android/maps/driveabout/app/bo;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aT;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aT;->b:[LF/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aT;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aT;->b:[LF/K;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aT;->b:[LF/K;

    aget-object v2, v2, v0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, LF/K;->a(I)LF/K;

    move-result-object v2

    aput-object v2, v1, v0

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
