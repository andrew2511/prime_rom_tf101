.class Lcom/google/android/maps/driveabout/app/dn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/dn;->b:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->b:I

    return v0
.end method
